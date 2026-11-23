import com.sap.gateway.ip.core.customdev.util.Message;
import org.json.simple.*;
import groovy.json.*;
import com.sap.it.api.ITApiFactory;
import com.sap.it.api.securestore.SecureStoreService;
import java.lang.*;

def Message processData(Message message) {
    
    def map = message.getProperties();
    
    String cpqDomainFromProps = map.get("CPQ_Domain");
    String grant_type = map.get("p_grant_type");
    
    def body = message.getBody();
    body = "grant_type=" + grant_type;
	
    if (cpqDomainFromProps != null && cpqDomainFromProps != "") {
        body = body + "&domain=" + cpqDomainFromProps;
    }
	
    message.setBody(body);
    
    return message;
}