<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    <!-- SO item to Salesforce line item mapping, block 001 -->
    <xsl:template match="/"><OpportunityLineItems><xsl:apply-templates select="//SalesOrderItem"/></OpportunityLineItems></xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0000']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0001']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0002']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0003']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0004']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0005']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0006']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0007']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0008']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0009']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0010']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0011']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0012']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0013']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0014']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0015']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0016']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0017']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0018']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0019']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0020']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0021']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0022']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0023']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0024']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0025']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0026']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0027']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0028']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0029']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0030']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0031']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0032']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0033']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0034']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0035']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0036']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0037']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0038']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0039']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0040']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0041']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0042']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0043']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0044']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0045']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0046']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0047']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0048']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0049']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0050']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0051']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0052']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0053']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0054']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0055']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0056']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0057']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0058']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0059']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0060']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0061']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0062']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0063']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0064']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0065']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0066']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0067']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0068']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0069']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0070']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0071']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0072']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0073']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0074']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0075']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0076']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0077']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0078']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0079']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0080']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0081']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0082']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0083']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0084']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0085']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0086']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0087']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0088']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0089']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0090']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0091']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0092']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0093']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0094']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0095']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0096']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0097']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0098']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
    <xsl:template match="SalesOrderItem[Material='MAT-001-0099']">
        <OpportunityLineItem>
            <ProductCode><xsl:value-of select="Material"/></ProductCode>
            <Quantity><xsl:value-of select="format-number(RequestedQuantity, '0.000')"/></Quantity>
            <UnitPrice><xsl:value-of select="NetAmount div RequestedQuantity"/></UnitPrice>
            <Plant_c><xsl:value-of select="ProductionPlant"/></Plant_c>
            <ItemCategory_c><xsl:value-of select="SalesOrderItemCategory"/></ItemCategory_c>
            <xsl:if test="number(NetAmount) &gt; 10000"><HighValue_c>true</HighValue_c></xsl:if>
        </OpportunityLineItem>
    </xsl:template>
</xsl:stylesheet>
