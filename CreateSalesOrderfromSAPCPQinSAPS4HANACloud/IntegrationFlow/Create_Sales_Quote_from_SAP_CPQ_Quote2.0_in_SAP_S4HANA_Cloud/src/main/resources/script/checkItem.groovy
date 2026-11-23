import com.sap.it.api.mapping.*;

/*Add MappingContext parameter to read or set headers and properties
def String customFunc1(String P1,String P2,MappingContext context) {
         String value1 = context.getHeader(P1);
         String value2 = context.getProperty(P2);
         return value1+value2;
}

Add Output parameter to assign the output value.
def void custFunc2(String[] is,String[] ps, Output output, MappingContext context) {
        String value1 = context.getHeader(is[0]);
        String value2 = context.getProperty(ps[0]);
        output.addValue(value1);
        output.addValue(value2);
}*/

def String checkItem(String ParentItemId, String ExternalConfigurationId, String ExternalConfigurationItemId, String SyncedFromBackOffice){
	boolean returnValue = false
	
	/*
	1. root item either bundle root item or VC root item
	2. VC root item that might have subitems
    3. VC subitem
    4. Multi-level CPQ Bundle Product
	*/
	if(SyncedFromBackOffice == "true") {
    	if(ParentItemId.equals("0")) {
    	    returnValue = true
    	//VC root item that might have subitems
    	} else if(!ExternalConfigurationId.equals("")) {
    	    returnValue = true
    	//VC subitem
    	} else if(ExternalConfigurationId.equals("")) {
    	    returnValue = true
    	    if(!ExternalConfigurationItemId.equals("")) {
    	        if(ExternalConfigurationItemId.toInteger() > 1) {
    	            returnValue = false
    	        }    
    	    }
    	    
    	}
	}
	/*
	//Multi-level CPQ Bundle Product
	if(ParentItemId.equals("0") || (ExternalConfigurationId.equals("0") && ExternalConfigurationItemId.equals(null) || ExternalConfigurationItemId.equals(""))) {
	    returnValue = true
	}
	*/
	return returnValue 
}