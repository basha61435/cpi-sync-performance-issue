import com.sap.gateway.ip.core.customdev.util.Message;
import java.util.HashMap;
import java.util.UUID; 
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.*;


//Set MessageId(SOAP Header)
def Message processData(Message message) {
    
    def messageId = UUID.randomUUID().toString();
    message.setProperty("MessageId", messageId);
    
    return message;
}