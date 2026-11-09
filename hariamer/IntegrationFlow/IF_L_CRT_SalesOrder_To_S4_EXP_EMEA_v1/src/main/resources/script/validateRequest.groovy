import com.sap.gateway.ip.core.customdev.util.Message
import groovy.json.JsonSlurper
import groovy.json.JsonOutput

def Message processData(Message message) {

    def reader = message.getBody(java.io.Reader.class)
    def json = new JsonSlurper().parse(reader)

    def errors = []

    if (!json.orderId) errors << "orderId is missing"
    if (!json.customerId) errors << "customerId is missing"
    if (!json.orderDate) errors << "orderDate is missing"
    if (!json.currency) errors << "currency is missing"

    if (!json.items || json.items.size() == 0) {
        errors << "items are missing"
    } else {
        json.items.eachWithIndex { item, index ->
            if (!item.materialCode) errors << "materialCode missing at item index ${index}"
            if (!item.quantity) errors << "quantity missing at item index ${index}"
            if (!item.plant) errors << "plant missing at item index ${index}"
        }
    }

    message.setProperty("validationErrors", JsonOutput.toJson(errors))
    message.setProperty("isValid", errors.isEmpty() ? "true" : "false")

    return message
}