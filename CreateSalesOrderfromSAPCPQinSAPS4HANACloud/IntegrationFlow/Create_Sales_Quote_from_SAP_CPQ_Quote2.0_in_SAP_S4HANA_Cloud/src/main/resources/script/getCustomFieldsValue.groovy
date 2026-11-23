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

def void getCustomFieldValue(String[] var1,String[] var2, String[] var3, Output output, MappingContext context){
    /*
    <CustomField>
      <Content><![CDATA[AN CPQ Quote 180929 16:11]]></Content>
      <Id>6</Id>
      <Name><![CDATA[PO Number]]></Name>
    </CustomField>
    var2 is PO Number <Name>
    var3 is AN CPQ Quote 180929 16:11 <Content>
    */
    for (int i=0;i<var1.length;i++)
	{ 
		if (var1[i].equals(var2[0]))
		{ 
				output.addValue(var3[i]);
				break;
		}
		    
	}
	
}