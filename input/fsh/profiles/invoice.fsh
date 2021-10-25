Alias: $PractitionerRole-it-base = http://hl7.it/fhir/StructureDefinition/PractitionerRole-it-base
Alias: $Practitioner-it-base = http://hl7.it/fhir/StructureDefinition/Practitioner-it-base
Alias: $tipoIdentificatore = http://terminology.hl7.it/ValueSet/tipoIdentificatore
Alias: $codiceFiscale = http://hl7.it/sid/codiceFiscale
Alias: $v3-ParticipationType = http://terminology.hl7.org/CodeSystem/v3-ParticipationType

Profile: InvoiceSpesaSanitaria
Parent: Invoice
Id: Invoice-it-spesaSanitaria
Title: "Invoice Documento Fiscale (STS)"
Description: "This profile defines how to constrain the Invoice resource for the scope of tracking the health expenses (SISTEMA TESSERA SANITARIA)"
//-------------------------------------------------------------------------------------------
* extension contains 
	ExtProfessionistaIssuer named professionalIssuer 0..1 
	and ExtInvoicePayment named paymentDetails 0..1
	
* extension[paymentDetails].valueReference only Reference (PaymentReconciliationSts)

* identifier 1.. MS
  * system 1..
  * value 1.. MS
  * ^short = "Numero identificativo del documento emesso"
  * ^definition = "Univoco nell’ambito della data. E’ univoco per giornata (scontrini) o per anno (fattura)"
  // * value ^example = "2021/A0005"   
  
* status MS
* type 1.. MS
* type from VsInvoiceTypeSTS
* recipient only Reference(PatientMinimal or RelatedPerson or Organization)
* recipient MS
* recipient.identifier 1.. MS
* recipient.identifier.system = $codiceFiscale
* recipient.identifier.value ^short = "Codice Fiscale"
 
* date 1.. MS
* participant MS
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "role"
* participant ^slicing.rules = #open
* participant ^slicing.description = "participant.role"

* participant contains 
	device 0..1 MS
	and mef 0..1 MS

* participant[device] MS
  * ^short = "dispositivo che genera il documento" 
  * role = $v3-ParticipationType#DEV
  * role 1.. 
  * actor only Reference(Device)
  * actor.identifier
  * ^short = "Numero progressivo del dispositivo che genera il documento" 

* participant[mef] MS
  * ^short = "Agenzia delle Entrate come ricevente"
  * ^definition = "Se l'agenzia delle entrate è presente come ricevente ciò indica la volontà del cittadino di permettere l’invio del dato di spesa all’Agenzia delle entrate ai fini della predisposizione della dichiarazione Precompilata. L'assenza indica l'opposizione"
  * role = $v3-ParticipationType#RCV
  * role 1.. 
  * actor only Reference(Organization)
  * actor.identifier 1.. MS  
    * system = "urn:ietf:rfc:3986"
    * value = "http://agenziaentrate.gov.it"	
	
* issuer MS
* issuer only Reference(OrganizationIssuer)
* lineItem 1.. MS
  * chargeItem[x] MS
  * chargeItemCodeableConcept from VsLineItemTypeSTS (extensible)
  * priceComponent 1.. MS
    * type 1.. MS
    * code 1.. MS
  * priceComponent.factor MS
  * ^short = "Aliquota"
  * priceComponent.code 
  * priceComponent.amount 1..1 MS
* totalNet 1..1 MS
* totalGross 1..1 MS
* note

//-------------------------------------------------------------------------------------------
Extension: ExtProfessionistaIssuer
Id:   issuerPractictionerExt-it-sts
Title:  "Professionista (issuer)"
Description: "Extension to the Invoice resource allowing to refer a Practiction/PractictionerRole as an issuer"
//-------------------------------------------------------------------------------------------
* value[x] only Reference ($Practitioner-it-base or $PractitionerRole-it-base)

//-------------------------------------------------------------------------------------------
Extension: ExtInvoicePayment
Id:   invoicePaymentExt-it-sts
Title:  "Dettagli Pagamento"
Description: "Extension to the Invoice resource allowing to describe the payment details"
//-------------------------------------------------------------------------------------------
* value[x] only Reference (PaymentReconciliation or PaymentNotice)


//-------------------------------------------------------------------------------------------
Profile: PaymentReconciliationSts
Parent: PaymentReconciliation
Id:   PaymentReconciliation-it-sts
Title:  "PaymentReconciliation"
Description: "Minimal PaymentReconciliation Data"
//-------------------------------------------------------------------------------------------
* paymentDate 1.. MS
* paymentAmount 1.. MS
* detail 0.. MS
  * type 1.. MS

//-------------------------------------------------------------------------------------------
Profile: DeviceMinimal
Parent: http://hl7.it/fhir/StructureDefinition/Organization-it-hcp
Id:   Device-it-sts
Title:  "Device (only serial)"
Description: "Minimal Device Data: only serial"
//-------------------------------------------------------------------------------------------
* identifier 1.. MS

//-------------------------------------------------------------------------------------------
Profile: PatientMinimal
Parent: Patient
Id:   Patient-it-sts
Title:  "Patient (only CF)"
Description: "Minimal Patient Data: only fiscal code"
//-------------------------------------------------------------------------------------------
* identifier 1.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this.system"
* identifier ^slicing.rules = #open
* identifier ^short = "Identificativo del paziente"
* identifier ^definition = "Identificativo del paziente. \r\n Lo slicing specificato per questo element è di tipo open; questo significa che sono ammessi identificativi che non rispettano le regole definite per le sice specificate.  \r\n Esempi di possibili sistemi di identificazione sono elencati in https://confluence.hl7.org/display/HI/Identificatori"
* identifier.type from $tipoIdentificatore (extensible)
* identifier.type ^mustSupport = false
* identifier.value 1.. MS
* identifier.value ^short = "ID del paziente (e.g. Codice Fiscale)"
* identifier.value ^definition = "Identifictivo del paziente"
* identifier contains
    codiceFiscale 0..* MS 
	/* ---
	and   anpr 0..* and
    idRegionale 0..* and
    codiceENI 0..* and
    codiceSTP 0..*
	--- */
* identifier[codiceFiscale]
* identifier[codiceFiscale].system 1.. MS
* identifier[codiceFiscale].system = "http://hl7.it/sid/codiceFiscale" (exactly)
* identifier[codiceFiscale].value 1.. MS
* identifier[codiceFiscale].value obeys pat-id-cf-1

//-------------------------------------------------------------------------------------------
Profile: OrganizationIssuer
Parent: http://hl7.it/fhir/StructureDefinition/Organization-it-hcp
Id:   OrganizationIssuer-it-sts
Title:  "Organization (issuer)"
Description: "Organization issuing the invoice"
//-------------------------------------------------------------------------------------------

/* =====
strutture da aggiungere
- Farmacia,
- Struttura sanitaria (accreditata o autorizzata),
- Struttura specialistica della Sanità Militare,
- Esercizi commerciali autorizzati alla vendita di farmaci
(parafarmacie)
- Esercizi commerciali autorizzati alla vendita di dispositivi
medici su misura (ottici)
- Farmacia assistenziale ANMIG
=== */


* identifier 4.. MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "$this.system"
* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "$this.value"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier pattern"

/* ----------
* identifier contains 
	asl 0..1 
	and aslRegione 0..1
	and aziendaOspedaliera 0..1 
	and struttura 0..1 
	and partitaIva 0..1
	and codiceFiscale 0..1
	and strutturaInterna 0..1
---- */

* identifier[asl] 1.. MS
* identifier[aslRegione] 1.. MS
* identifier[aziendaOspedaliera] MS
* identifier[struttura] MS
* identifier[strutturaInterna] MS
* identifier[partitaIva] MS
* identifier[codiceFiscale] MS