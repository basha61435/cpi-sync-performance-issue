import com.sap.gateway.ip.core.customdev.util.Message

// Step 10: adds a trace header (real logic not needed - this iFlow is for deploy-time testing)
def Message processData(Message message) {
    def body = message.getBody(String) ?: ""
    message.setHeader("X-Heavy-Step-10", "done")
    message.setProperty("stepCount", ((message.getProperty("stepCount") ?: 0) as int) + 1)
    message.setBody(body)
    return message
}
