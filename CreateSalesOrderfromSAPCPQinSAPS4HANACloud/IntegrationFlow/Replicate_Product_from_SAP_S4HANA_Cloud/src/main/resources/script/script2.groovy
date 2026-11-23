/*
 The integration developer needs to create the method processData 
 This method takes Message object of package com.sap.gateway.ip.core.customdev.util 
which includes helper methods useful for the content developer:
The methods available are:
    public java.lang.Object getBody()
	public void setBody(java.lang.Object exchangeBody)
    public java.util.Map<java.lang.String,java.lang.Object> getHeaders()
    public void setHeaders(java.util.Map<java.lang.String,java.lang.Object> exchangeHeaders)
    public void setHeader(java.lang.String name, java.lang.Object value)
    public java.util.Map<java.lang.String,java.lang.Object> getProperties()
    public void setProperties(java.util.Map<java.lang.String,java.lang.Object> exchangeProperties) 
    public void setProperty(java.lang.String name, java.lang.Object value)
    public java.util.List<com.sap.gateway.ip.core.customdev.util.SoapHeader> getSoapHeaders()
    public void setSoapHeaders(java.util.List<com.sap.gateway.ip.core.customdev.util.SoapHeader> soapHeaders) 
       public void clearSoapHeaders()
 */
import com.sap.gateway.ip.core.customdev.util.Message;
import java.util.HashMap;
import com.sap.it.api.mapping.ValueMappingApi
import com.sap.it.api.ITApiFactory

def Message processData(Message message) {
       //Properties 
       map = message.getProperties();
       def ProductGroupInternalIDValue = map.get("ProductGroupInternalID");
       def ProductEligibleValue = false;
       
       def valueMapApi = ITApiFactory.getApi(ValueMappingApi.class, null)
        def value = valueMapApi.getMappedValue('S4', 'ProductGroupInternalID', ProductGroupInternalIDValue, 'CPQ', 'IsEligibleForReplication')
        
        ProductEligibleValue = value;
       
       message.setProperty("ProductEligible", ProductEligibleValue);
       return message;
}