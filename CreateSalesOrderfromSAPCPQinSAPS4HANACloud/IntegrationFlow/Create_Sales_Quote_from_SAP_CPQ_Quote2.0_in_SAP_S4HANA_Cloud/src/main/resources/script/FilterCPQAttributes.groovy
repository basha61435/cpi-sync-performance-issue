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
import java.lang.*;
import groovy.xml.XmlUtil;

def Message processData(Message message) {

       def body = message.getBody(String.class);
       def xmlQuoteItems = new XmlSlurper().parseText(body);
       
       /*ExternalConfiguration and SelectedAttributes contain the same data, except
       for SyncedFromBackoffice (only available in SelectedAttributes).
       Take attribute name from ExternalConfiguration and check for the same attribute
       in and its value if SyncedFromBackoffice in SelectedAttributes. Delete node
       from ExternalConfiguration if SyncedFromBackoffice is false. */
       def charID;
       def syncValue;
       
       //iterate over ExternalConfiguration
       xmlQuoteItems.row.ExternalConfiguration.rootItem.characteristics.each{
           charID = it.id.text();
           //iterate over SelectedAttributes to find the same attribute there
           xmlQuoteItems.row.SelectedAttributes.each{
               if (it.SystemId.text() == charID){
                   syncValue = it.SyncedFromBackOffice.text().toBoolean();
               }
           }
           //delete node in ExternalConfigurastion if SyncedFromBackoffice is false for this attribute
           if (syncValue == false){
               it.replaceNode{};
           }
       }
       
       def serializedItems = XmlUtil.serialize(xmlQuoteItems);
       message.setBody(serializedItems);
       return message;
}