import com.sap.gateway.ip.core.customdev.util.Message; 
import com.sap.it.api.ITApiFactory; 
import com.sap.it.api.securestore.SecureStoreService; 

def Message processData(Message message) {
    def map = message.getProperties();
    def CPQCredentials = map.get("p_cpq_credentials");
    def CPQAuthenticationType = map.get("CPQ_AuthenticationType");
    
    String grant_type = map.get("p_grant_type");
    
    if (CPQAuthenticationType == "None" && (grant_type == null || grant_type == "")) {
        grant_type = 'password';
    }
    
    if (grant_type != 'password' && grant_type != 'client_credentials') {
        String error = "Invalid 'CPQ Grant Type' value. Please use one of the following grant types: 'password' or 'client_credentials'";
        throw new IllegalStateException(error);
    }
    
    def service = ITApiFactory.getApi(SecureStoreService. class , null);
    def credential = service.getUserCredential(CPQCredentials);
    
    if (credential == null) {
        String error = "No credential found for alias" + CPQCredentials;
        throw new IllegalStateException(error);
    }
    
    String user = credential.getUsername();
    String cpqUsername = null;
    
    int index = user.indexOf("#");
    
    if (index == -1) {
        cpqUsername = user;
    } else {
        cpqUsername = user.substring(0, index);
    }
    
    String cpqPassword = new String(credential.getPassword());
    
    def body = message.getBody();
    
    body = "grant_type=" + grant_type;
    
    if (grant_type != null && grant_type == "password") {
        body = body + "&username=" + cpqUsername;
        body = body + "&password=" + cpqPassword;
    }
    
    //This condition is set to use 'isClientCredentials' param as Identifier that we want to use Client Credentials Security Material
    //As SAP CPI in the Oauth2 Client Credentials set 'Bearer' Authorization header, we can't simply use it. CPQ doesn't accept 'Bearer' Authorization type.
    //To get access token we need to fetch client id and secret from security material and create 'Basic' Authorization type.
    
    if (grant_type != null && grant_type == "client_credentials") {
        def combinedCPQCredentials = "${cpqUsername}:${cpqPassword}";
        def encodedCPQCredentials = combinedCPQCredentials.bytes.encodeBase64().toString();
        message.setHeader("Authorization", "Basic ${encodedCPQCredentials}");
        message.setHeader("Content-Type", "application/x-www-form-urlencoded");
    }
    
    message.setBody(body);
    
    return message;
}