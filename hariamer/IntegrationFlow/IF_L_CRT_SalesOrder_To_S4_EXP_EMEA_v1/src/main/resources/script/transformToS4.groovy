import com.sap.gateway.ip.core.customdev.util.Message
import groovy.json.JsonSlurper
import groovy.json.JsonOutput

def Message processData(Message message) {

    def reader = message.getBody(java.io.Reader.class)
    def json = new JsonSlurper().parse(reader)

    def target = [
        SalesOrderType: "OR",
        SalesOrganization: json.salesOrg ?: "1000",
        DistributionChannel: json.distributionChannel ?: "10",
        OrganizationDivision: json.division ?: "00",
        SoldToParty: json.customerId,
        PurchaseOrderByCustomer: json.orderId,
        to_Item: json.items.collect { item ->
            [
                SalesOrderItem: item.itemNo ?: "",
                Material: item.materialCode,
                RequestedQuantity: String.valueOf(item.quantity),
                RequestedQuantityUnit: item.uom ?: "EA",
                Plant: item.plant
            ]
        }
    ]

    message.setBody(JsonOutput.toJson(target))
    return message
}