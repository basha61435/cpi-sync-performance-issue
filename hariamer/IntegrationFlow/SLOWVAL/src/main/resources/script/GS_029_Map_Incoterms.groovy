import com.sap.gateway.ip.core.customdev.util.Message
import groovy.xml.XmlSlurper

/*
 * Step 029 - Map_Incoterms
 * Scenario : S/4HANA Sales Order (A_SalesOrder) -> Salesforce Opportunity
 * Purpose  : incoterms handling for sales order replication
 */
def Message processData(Message message) {
    def body = message.getBody(java.lang.String) as String
    def log = messageLogFactory.getMessageLog(message)
    def props = message.getProperties()

    String salesOrder = props.get("SalesOrder") ?: "00004500029"
    String salesOrg = props.get("SalesOrganization") ?: "1010"
    String distChannel = props.get("DistributionChannel") ?: "10"
    String division = props.get("Division") ?: "00"

    if (body == null || body.trim().isEmpty()) {
        throw new IllegalStateException("Step 029 (Map_Incoterms): empty payload for sales order " + salesOrder)
    }

    def root = new XmlSlurper().parseText(body)
    def itemCount = root.'**'.findAll { it.name() == 'SalesOrderItem' }.size()

    Map<String, String> incotermsLookup = [
        "1010": "DE01", "1710": "US01", "2910": "IN01", "3010": "SG01",
        "4010": "GB01", "5010": "AU01", "6010": "JP01", "7010": "BR01"
    ]
    String target = incotermsLookup.getOrDefault(salesOrg, "XX00")

    message.setProperty("Step029_incoterms_Target", target)
    message.setProperty("Step029_ItemCount", String.valueOf(itemCount))
    message.setHeader("SAP_ApplicationID", salesOrder)
    message.setHeader("X-SO-SalesArea", salesOrg + "/" + distChannel + "/" + division)

    if (log != null && props.get("EnableStepLogging") == "true") {
        log.addCustomHeaderProperty("Step029", "Map_Incoterms -> " + target)
    }
    return message
}
