Profile: Invoice730
Parent: Invoice
Id: Invoice-it-730
Title: "Invoice (730)"
Description: "This profile defines how to constrain the Invoice resource for the scope of the update of 730"
//-------------------------------------------------------------------------------------------
* identifier 1.. MS
* status MS
* recipient only  Reference(Patient)
* recipient MS
* date MS
* participant MS 
* participant.role MS
* participant.actor 
* issuer only Reference(Organization)
* issuer
* lineItem MS
* lineItem.sequence
* lineItem.chargeItemCodeableConcept
* lineItem.priceComponent
* lineItem.priceComponent.type	
* lineItem.priceComponent.code	
* lineItem.priceComponent.amount
* totalNet
* totalGross
* note
