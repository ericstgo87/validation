<!-- Schematron binding rules generated by Andreas Pelekies -->
<!-- Data binding to EDIFACT syntax for TC434 -->
<!-- Timestamp: 2016-05-31 23:47:49 +0200 -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="EN16931" id="EN16931-EDIFACT-Model">
  <!--
  <param name="BR-01" value="(rsm:ExchangedDocumentContext/ram:GuidelineSpecifiedDocumentContextParameter/ram:ID)"/>
  <param name="BR-02" value="(rsm:ExchangedDocument/ram:ID)"/>
  <param name="BR-03" value="(rsm:ExchangedDocument/ram:IssueDateTime/udt:DateTimeString[@format='102'])"/>
  <param name="BR-04" value="(rsm:ExchangedDocument/ram:TypeCode)"/>
  <param name="BR-05" value="(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:InvoiceCurrencyCode)"/>
  <param name="BR-06" value="(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:Name)"/>
  <param name="BR-07" value="(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:BuyerTradeParty/ram:Name)"/>
  <param name="BR-08" value="//ram:SellerTradeParty/ram:PostalTradeAddress"/>
  <param name="BR-09" value="//ram:BuyerTradeParty/ram:PostalTradeAddress"/>
  <param name="BR-10" value="(ram:LineTotalAmount)"/>
  <param name="BR-11" value="(ram:TaxBasisTotalAmount)"/>
  <param name="BR-12" value="(ram:GrandTotalAmount)"/>
  <param name="BR-13" value="(ram:DuePayableAmount)"/>
  <param name="BR-14" value="//ram:IncludedSupplyChainTradeLineItem"/>
  <param name="BR-15" value="(ram:PostalTradeAddress)"/>
  <param name="BR-16" value="(ram:Name) and (not(ram:Name = ../ram:SellerTradeParty/ram:Name) or not(ram:ID = ../ram:SellerTradeParty/ram:ID) or not(ram:SpecifiedLegalOrganization/ram:ID = ../ram:SellerTradeParty/ram:SpecifiedLegalOrganization/ram:ID))"/>
  <param name="BR-17" value="(ram:Name)"/>  
  <param name="BR-18" value="(ram:AssociatedDocumentLineDocument/ram:LineID)"/>
  <param name="BR-19" value="(ram:SpecifiedLineTradeDelivery/ram:BilledQuantity)"/>
  <param name="BR-20" value="(ram:SpecifiedLineTradeDelivery/ram:BilledQuantity/@unitCode)"/>
  <param name="BR-21" value="(ram:SpecifiedLineTradeSettlement/ram:SpecifiedTradeSettlementLineMonetarySummation/ram:LineTotalAmount)"/>
  <param name="BR-22" value="(ram:SpecifiedTradeProduct/ram:Name)"/>
  <param name="BR-23" value="(ram:SpecifiedLineTradeAgreement/ram:NetPriceProductTradePrice/ram:ChargeAmount)"/>
  <param name="BR-24" value="(ram:SpecifiedLineTradeAgreement/ram:NetPriceProductTradePrice/ram:ChargeAmount) &gt;= 0"/>
  <param name="BR-25" value="(ram:SpecifiedLineTradeAgreement/ram:GrossPriceProductTradePrice/ram:ChargeAmount &gt;= 0) or not(ram:SpecifiedLineTradeAgreement/ram:GrossPriceProductTradePrice/ram:ChargeAmount)"/>
  <param name="BR-26" value="(ram:StartDateTime/udt:DateTimeString[@format = '102'])"/>
  <param name="BR-27" value="(ram:EndDateTime/udt:DateTimeString[@format = '102'])"/>
  <param name="BR-28" value="(ram:EndDateTime/udt:DateTimeString[@format = '102']) &gt;= (ram:StartDateTime/udt:DateTimeString[@format = '102'])"/>
  <param name="BR-29" value="(ram:StartDateTime/udt:DateTimeString[@format = '102'])"/>
  <param name="BR-30" value="(ram:EndDateTime/udt:DateTimeString[@format = '102'])"/>
  <param name="BR-31" value="(ram:EndDateTime/udt:DateTimeString[@format = '102']) &gt;= (ram:StartDateTime/udt:DateTimeString[@format = '102'])"/>
  <param name="BR-32" value="(ram:ActualAmount)"/>
  <param name="BR-33" value="(ram:CategoryTradeTax/ram:CategoryCode)"/>
  <param name="BR-35" value="(ram:Reason)"/>
  <param name="BR-36" value="(ram:ActualAmount) &gt;=0"/>
  <param name="BR-37" value="(ram:ActualAmount)"/>
  <param name="BR-38" value="(ram:CategoryTradeTax/ram:CategoryCode)"/>
  <param name="BR-40" value="(ram:Reason)"/>
  <param name="BR-41" value="(ram:ActualAmount) &gt;=0"/>
  <param name="BR-42" value="(ram:ActualAmount)"/>
  <param name="BR-43" value="(ram:Reason)"/>
  <param name="BR-44" value="(ram:ActualAmount)"/>
  <param name="BR-45" value="(ram:Reason)"/>
  <param name="BR-46" value="(ram:BasisAmount)"/>
  <param name="BR-47" value="(ram:CalculatedAmount)"/>
  <param name="BR-48" value="(ram:CategoryCode)"/>
  <param name="BR-49" value="(ram:RateApplicablePercent) or (ram:CategoryCode = 'O')"/>
  <param name="BR-50" value="(ram:TypeCode)"/>
  <param name="BR-51" value="((ram:TypeCode = '49') and (ram:ID)) or not(ram:TypeCode =  '49')"/>
  <param name="BR-52" value="((rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans/ram:TypeCodee = '49') and (ram:ID/@schemeID)) or not(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementPaymentMeans/ram:TypeCode =  '49')"/>
  <param name="BR-53" value="(ram:IBANID) or (ram:ProprietaryID)"/>
  <param name="BR-54" value="string-length(ram:ID)&lt;=6 and string-length(ram:ID)&gt;=4"/>
  <param name="BR-55" value="(ram:IssuerAssignedID)"/>
  <param name="BR-56" value="(ram:Name)"/>
  <param name="BR-57" value="(ram:GrandTotalAmount) &gt;=0"/>
  <param name="BR-59" value="(ram:TaxTotalAmount/@currencyID = /rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:TaxCurrencyCode) and not(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:TaxCurrencyCode = /rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:InvoiceCurrencyCode)"/>
  <param name="BR-60" value="(ram:Description) and (ram:Value)"/>
  <param name="BR-CO-01" value="true()"/>
  <param name="BR-CO-02" value="((ram:TypeCode = '30') and (ram:PayerPartyDebtorFinancialAccount/ram:IBANID or ram:PayerPartyDebtorFinancialAccount/ram:ProprietaryID)) or not(ram:TypeCode =  '30')"/>
  <param name="BR-CO-03" value="not(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:TaxTotalAmount) or (rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeSettlementHeaderMonetarySummation/ram:TaxTotalAmount and ((rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID='VA'] and not (rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTaxRepresentativeTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID='VA'])) or ((not(rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID='VA']) and (rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeAgreement/ram:SellerTaxRepresentativeTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID='VA'])))))"/>
  <param name="BR-CO-04" value="(ram:SpecifiedLineTradeSettlement/ram:ApplicableTradeTax/ram:CategoryCode)"/>
  <param name="BR-CO-05" value="true()"/>
  <param name="BR-CO-06" value="true()"/>
  <param name="BR-CO-07" value="true()"/>
  <param name="BR-CO-08" value="true()"/>
  <param name="BR-CO-09" value="true()"/>
  <param name="BR-CO-10" value="ram:LineTotalAmount = (round(sum(../../ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement/ram:SpecifiedTradeSettlementLineMonetarySummation/ram:LineTotalAmount) * 10 * 10)div 100)"/>
  <param name="BR-CO-11" value="ram:AllowanceTotalAmount = (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge[ram:ChargeIndicator/udt:Indicator='false']/ram:ActualAmount)* 10 * 10 ) div 100) or not(ram:AllowanceTotalAmount)"/>
  <param name="BR-CO-12" value="ram:ChargeTotalAmount = (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge[ram:ChargeIndicator/udt:Indicator='true']/ram:ActualAmount)* 10 * 10 ) div 100) or not(ram:ChargeTotalAmount)"/>
  <param name="BR-CO-13" value="(ram:TaxBasisTotalAmount = ram:LineTotalAmount - ram:AllowanceTotalAmount + ram:ChargeTotalAmount) or 
    ((ram:TaxBasisTotalAmount = ram:LineTotalAmount - ram:AllowanceTotalAmount) and not (ram:ChargeTotalAmount)) or 
    ((ram:TaxBasisTotalAmount = ram:LineTotalAmount + ram:ChargeTotalAmount) and not (ram:AllowanceTotalAmount)) or 
    ((ram:TaxBasisTotalAmount = ram:LineTotalAmount) and not (ram:ChargeTotalAmount) and not (ram:AllowanceTotalAmount))"/>
  <param name="BR-CO-14" value=". = (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:ApplicableTradeTax/ram:CalculatedAmount)*10*10)div 100) "/>
  <param name="BR-CO-15" value="(ram:GrandTotalAmount = ram:TaxBasisTotalAmount + ram:TaxTotalAmount[@currencyID=/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:InvoiceCurrencyCode]) or
    ((ram:GrandTotalAmount = ram:TaxBasisTotalAmount) and not (ram:TaxTotalAmount[@currencyID=/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:InvoiceCurrencyCode]))"/>
  <param name="BR-CO-16" value="(ram:DuePayableAmount = ram:GrandTotalAmount - ram:TotalPrepaidAmount) or 
    ((ram:DuePayableAmount = ram:GrandTotalAmount) and not (ram:TotalPrepaidAmount))"/>
  <param name="BR-CO-17" value="ram:CalculatedAmount = round(ram:BasisAmount * (ram:RateApplicablePercent div 100) * 10 * 10) div 100 "/>
  <param name="BR-S-01" value="/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement/ram:ApplicableTradeTax/ram:CategoryCode = 'S'"/>
  <param name="BR-S-02" value="/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA']"/>
  <param name="BR-S-03" value="ram:BasisAmount = (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement[ram:ApplicableTradeTax/ram:CategoryCode = 'S' and ram:RateApplicablePercent=ram:ApplicableTradeTax/ram:RateApplicablePercent]/ram:SpecifiedTradeSettlementLineMonetarySummation/ram:LineTotalAmount)*10*10)div 100) + (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge[ram:ChargeIndicator/udt:Indicator='true' and ram:CategoryTradeTax/ram:CategoryCode='S' and ram:RateApplicablePercent=ram:CategoryTradeTax/ram:RateApplicablePercent]/ram:ActualAmount)*10*10) div 100) - (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge[ram:ChargeIndicator/udt:Indicator='false' and ram:CategoryTradeTax/ram:CategoryCode='S' and ram:RateApplicablePercent=ram:CategoryTradeTax/ram:RateApplicablePercent]/ram:ActualAmount)*10*10) div 100)"/> 
  <param name="BR-S-04" value="true()"/> --> <!-- duplicate of BR-CO-17 -->
  <!--
  <param name="BR-S-05" value="ram:RateApplicablePercent &gt; 0"/>
  <param name="BR-S-06" value="not(ram:ExemptionReason)"/>
  <param name="BR-S-07" value="not(ram:ExemptionReason)"/>
  <param name="BR-Z-01" value="/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement/ram:ApplicableTradeTax/ram:CategoryCode = 'Z'"/>
  <param name="BR-Z-02" value="/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA']"/>
  <param name="BR-Z-03" value="ram:RateApplicablePercent = 0"/>
  <param name="BR-Z-04" value="(ram:CategoryCode = 'Z') and (ram:RateApplicablePercent = 0)"/>
  <param name="BR-Z-05" value="(ram:CategoryCode = 'Z') and (ram:RateApplicablePercent = 0)"/>
  <param name="BR-Z-06" value="ram:BasisAmount = (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement[ram:ApplicableTradeTax/ram:CategoryCode = 'Z' and ram:RateApplicablePercent=ram:ApplicableTradeTax/ram:RateApplicablePercent]/ram:SpecifiedTradeSettlementLineMonetarySummation/ram:LineTotalAmount)*10*10)div 100) + (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge[ram:ChargeIndicator/udt:Indicator='true' and ram:CategoryTradeTax/ram:CategoryCode='Z' and ram:RateApplicablePercent=ram:CategoryTradeTax/ram:RateApplicablePercent]/ram:ActualAmount)*10*10)div 100) - (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge[ram:ChargeIndicator/udt:Indicator='false' and ram:CategoryTradeTax/ram:CategoryCode='Z' and ram:RateApplicablePercent=ram:CategoryTradeTax/ram:RateApplicablePercent]/ram:ActualAmount)*10*10)div 100)"/> 
  <param name="BR-Z-07" value="ram:CalculatedAmount = 0"/>
  <param name="BR-Z-08" value="ram:RateApplicablePercent = 0"/>
  <param name="BR-Z-09" value="not(ram:ExemptionReason)"/>
  <param name="BR-Z-10" value="not(ram:ExemptionReason)"/>
  <param name="BR-E-01" value="/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement/ram:ApplicableTradeTax/ram:CategoryCode = 'E'"/>
  <param name="BR-E-02" value="/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA']"/>
  <param name="BR-E-03" value="(ram:CategoryCode='E') and (/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA'])"/>
  <param name="BR-E-04" value="(ram:CategoryCode='E') and (/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA'])"/>
  <param name="BR-E-05" value="ram:RateApplicablePercent = 0"/>
  <param name="BR-E-06" value="(ram:ExemptionReason)"/>
  <param name="BR-E-07" value="ram:BasisAmount = (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement[ram:ApplicableTradeTax/ram:CategoryCode = 'E' and ram:RateApplicablePercent=ram:ApplicableTradeTax/ram:RateApplicablePercent]/ram:SpecifiedTradeSettlementLineMonetarySummation/ram:LineTotalAmount)*10*10)div 100) + (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge[ram:ChargeIndicator/udt:Indicator='true' and ram:CategoryTradeTax/ram:CategoryCode='E' and ram:RateApplicablePercent=ram:CategoryTradeTax/ram:RateApplicablePercent]/ram:ActualAmount)*10*10)div 100) - (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge[ram:ChargeIndicator/udt:Indicator='false' and ram:CategoryTradeTax/ram:CategoryCode='E' and ram:RateApplicablePercent=ram:CategoryTradeTax/ram:RateApplicablePercent]/ram:ActualAmount)*10*10)div 100)"/>  
  <param name="BR-E-08" value="ram:CalculatedAmount = 0"/>
  <param name="BR-E-09" value="(ram:ExemptionReason)"/>
  <param name="BR-E-10" value="ram:RateApplicablePercent = 0"/>
  <param name="BR-AE-01" value="/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement/ram:ApplicableTradeTax/ram:CategoryCode = 'AE'"/>
  <param name="BR-AE-02" value="(/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA']) and (/ram:BuyerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA'])"/>
  <param name="BR-AE-03" value="(ram:CategoryCode='AE') and (/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA']) and (/ram:BuyerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA'])"/>
  <param name="BR-AE-04" value="(ram:CategoryCode='AE') and (/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA']) and (/ram:BuyerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA'])"/>
  <param name="BR-AE-05" value="ram:CalculatedAmount = 0"/>
  <param name="BR-AE-06" value="ram:RateApplicablePercent = 0"/>
  <param name="BR-AE-07" value="ram:BasisAmount = (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement[ram:ApplicableTradeTax/ram:CategoryCode = 'AE' and ram:RateApplicablePercent=ram:ApplicableTradeTax/ram:RateApplicablePercent]/ram:SpecifiedTradeSettlementLineMonetarySummation/ram:LineTotalAmount)*10*10)div 100) + (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge[ram:ChargeIndicator/udt:Indicator='true' and ram:CategoryTradeTax/ram:CategoryCode='AE' and ram:RateApplicablePercent=ram:CategoryTradeTax/ram:RateApplicablePercent]/ram:ActualAmount)*10*10)div 100) - (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge[ram:ChargeIndicator/udt:Indicator='false' and ram:CategoryTradeTax/ram:CategoryCode='AE' and ram:RateApplicablePercent=ram:CategoryTradeTax/ram:RateApplicablePercent]/ram:ActualAmount)*10*10)div 100)"/> 
  <param name="BR-AE-08" value="true()"/>
  <param name="BR-AE-09" value="true()"/>
  <param name="BR-AE-10" value="ram:RateApplicablePercent = 0"/>
  <param name="BR-IC-01" value="/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement/ram:ApplicableTradeTax/ram:CategoryCode = 'IC'"/>
  <param name="BR-IC-02" value="ram:CalculatedAmount = 0"/>
  <param name="BR-IC-03" value="(/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA']) and (/ram:BuyerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA'])"/>
  <param name="BR-IC-04" value="(ram:CategoryCode='IC') and (/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA']) and (/ram:BuyerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA'])"/>
  <param name="BR-IC-05" value="(ram:CategoryCode='IC') and (/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA']) and (/ram:BuyerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA'])"/>
  <param name="BR-IC-06" value="ram:RateApplicablePercent = 0"/>
  <param name="BR-IC-07" value="true()"/>
  <param name="BR-IC-08" value="(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeDelivery/ram:ActualDeliverySupplyChainEvent/ram:OccurrenceDateTime/udt:DateTimeString[@format='102'])"/>
  <param name="BR-IC-09" value="(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeDelivery/ram:ShipToTradeParty/ram:PostalTradeAddress/ram:CountryID)"/>
  <param name="BR-IC-10" value="true()"/>
  <param name="BR-IC-11" value="ram:RateApplicablePercent = 0"/>
  <param name="BR-IC-12" value="ram:BasisAmount = (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement[ram:ApplicableTradeTax/ram:CategoryCode = 'IC' and ram:RateApplicablePercent=ram:ApplicableTradeTax/ram:RateApplicablePercent]/ram:SpecifiedTradeSettlementLineMonetarySummation/ram:LineTotalAmount)*10*10)div 100) + (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge[ram:ChargeIndicator/udt:Indicator='true' and ram:CategoryTradeTax/ram:CategoryCode='IC' and ram:RateApplicablePercent=ram:CategoryTradeTax/ram:RateApplicablePercent]/ram:ActualAmount)*10*10)div 100) - (round(sum(/rsm:CrossIndustryInvoice/rsm:SupplyChainTradeTransaction/ram:ApplicableHeaderTradeSettlement/ram:SpecifiedTradeAllowanceCharge[ram:ChargeIndicator/udt:Indicator='false' and ram:CategoryTradeTax/ram:CategoryCode='IC' and ram:RateApplicablePercent=ram:CategoryTradeTax/ram:RateApplicablePercent]/ram:ActualAmount)*10*10)div 100)"/> 
  <param name="BR-G-01" value="/ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement/ram:ApplicableTradeTax/ram:CategoryCode = 'G'"/>
  <param name="BR-G-02" value="(/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA'])"/>
  <param name="BR-G-03" value="(ram:CategoryCode='G') and (/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA'])"/>
  <param name="BR-G-04" value="(ram:CategoryCode='G') and (/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA'])"/>
  <param name="BR-G-05" value="ram:RateApplicablePercent = 0"/>
  <param name="BR-G-06" value="ram:CalculatedAmount = 0"/>
  <param name="BR-G-07" value="true()"/>
  <param name="BR-G-08" value="ram:RateApplicablePercent = 0"/>
  <param name="BR-G-09" value="true()"/>
  <param name="BR-G-10" value="ram:RateApplicablePercent = 0"/>
  <param name="BR-O-01" value="not(/ram:SellerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA']) and not(/ram:BuyerTradeParty/ram:SpecifiedTaxRegistration/ram:ID[@schemeID = 'VA'])"/>
  <param name="BR-O-02" value="ram:ApplicableHeaderTradeSettlement/ram:ApplicableTradeTax/ram:CategoryCode != 'O'"/>
  <param name="BR-O-03" value="//ram:IncludedSupplyChainTradeLineItem/ram:SpecifiedLineTradeSettlement/ram:ApplicableTradeTax/ram:CategoryCode != 'O'"/>
  <param name="BR-O-04" value="/ram:SpecifiedTradeAllowanceCharge[ram:ChargeIndicator/udt:Indicator='false']/ram:CategoryTradeTax/ram:CategoryCode != 'O'"/>
  <param name="BR-O-05" value="/ram:SpecifiedTradeAllowanceCharge[ram:ChargeIndicator/udt:Indicator='true']/ram:CategoryTradeTax/ram:CategoryCode != 'O'"/>
  <param name="BR-O-06" value="not(ram:RateApplicablePercent)"/>
  <param name="BR-O-07" value="not(ram:ExemptionReason)"/>
  <param name="BR-O-08" value="not(ram:ExemptionReason)"/> -->
  <!-- new -->
    <param name="BR-MD-118" value="not(S_LIN/D_1082=preceding-sibling::G_SG27/S_LIN/D_1082)"/>
    <!-- end new -->
  <param name="Invoice_Period " value="//S_DTM/C_C507"/>
  <param name="Document_totals " value="//G_SG52"/>
  <param name="Payee" value="//G_SG2[S_NAD_D_3035='PE']"/>
  <param name="Tax_Representative" value="//G_SG2[S_NAD_D_3035='AE']"/>
  <param name="Invoice_Line " value="//G_SG27"/>
  <param name="Invoice_Line_Period " value="//G_SG27/S_DTM"/>
  <param name="Document_level_allowances " value="//G_SG16[S_ALC/D_5463='A']"/>
  <param name="Document_level_charges " value="//G_SG16[S_ALC/D_5463='C']"/>
  <param name="Invoice_line_allowances " value="//G_SG27/G_SG40[S_ALC/D_5463='A']"/>
  <param name="Invoice_line_charges " value="//G_SG27/G_SG40[S_ALC/D_5463='C']"/>
  <param name="VAT_breakdown " value="//G_SG54"/>
  <param name="Payment_instructions " value="//G_SG8/S_PYT"/>
  <param name="Account_information " value="//G_SG2[S_NAD/C_C082/D_3039='PE' or S_NAD/C_C082/D_3039='SE']/S_FII[D_3035='RB']"/>
  <param name="Card_information " value="//G_SG2[S_NAD/C_C082/D_3039='BY']/S_FII[D_3035='BI']"/>
  <param name="Additional_supporting_documents " value="//G_SG26/S_EFI"/>
  <param name="Item_attributes " value="//G_SG27/S_FTX[D_4451='ACF']"/>
  <param name="VAT_identifiers " value="/M_INVOIC"/> <!--no check left -->
  <param name="Tax_Total" value="//SG54/S_MOA/C_C516[D_5025='176']/D_5004"/>
  <param name="Tax_subtotal" value="//G_SG54[S_TAX[C_C241/D_5153='VAT']/D_5283='7']/S_MOA"/>
  <param name="VATS_Line" value="//G_SG35/S_TAX[D_5305 = 'S']"/>
  <param name="VATS" value="//G_SG54/S_TAX[D_5305 = 'S']"/>
  <param name="VATZ_Line" value="//G_SG35/S_TAX[D_5305 = 'Z']"/>
  <param name="VATZ_Allowance" value="//G_SG16[S_ALC/D_5463='A']/G_SG22/S_TAX"/>
  <param name="VATZ_Charge" value="//G_SG16[S_ALC/D_5463='C']/G_SG22/S_TAX"/>
  <param name="VATZ" value="//G_SG54/S_TAX[D_5305 = 'Z']"/>
  <param name="VATE_Allowance" value="//G_SG16[S_ALC/D_5463='A']/G_SG22/S_TAX"/>
  <param name="VATE_Charge" value="//G_SG16[S_ALC/D_5463='C']/G_SG22/S_TAX"/>
  <param name="VATE_Line" value="//G_SG35/S_TAX[D_5305 = 'E']"/>
  <param name="VATE" value="//G_SG54/S_TAX[D_5305 = 'E']"/>
  <param name="VATG_Allowance" value="//G_SG16[S_ALC/D_5463='A']/G_SG22/S_TAX"/>
  <param name="VATG_Charge" value="//G_SG16[S_ALC/D_5463='C']/G_SG22/S_TAX"/>
  <param name="VATG_Line" value="//G_SG35/S_TAX[D_5305 = 'G']"/>
  <param name="VATG" value="//G_SG54/S_TAX[D_5305 = 'G']"/>
  <param name="VATAE_Allowance" value="//G_SG16[S_ALC/D_5463='A']/G_SG22/S_TAX"/>
  <param name="VATAE_Charge" value="//G_SG16[S_ALC/D_5463='C']/G_SG22/S_TAX"/>
  <param name="VATAE_Line" value="//G_SG35/S_TAX[D_5305 = 'AE']"/>
  <param name="VATAE" value="//G_SG54/S_TAX[D_5305 = 'AE']"/>
  <param name="VATIC_Allowance" value="//G_SG16[S_ALC/D_5463='A']/G_SG22/S_TAX"/>
  <param name="VATIC_Charge" value="//G_SG16[S_ALC/D_5463='C']/G_SG22/S_TAX"/>
  <param name="VATIC_Line" value="//G_SG35/S_TAX[D_5305 = 'IC']"/>
  <param name="VATIC" value="//G_SG54/S_TAX[D_5305 = 'IC']"/>
  <param name="VATO_Line" value="//G_SG35/S_TAX[D_5305 = 'O']"/>
  <param name="VATO" value="//G_SG54/S_TAX[D_5305 = 'O']"/>
  <param name="Invoice " value="/M_INVOIC"/>
</pattern>