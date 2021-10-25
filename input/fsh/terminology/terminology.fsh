
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CodeSystem: CsDocumentoFiscaleSTS
Id: documentoFiscale
Title: "Internal Code System"
Description: "Documento Fiscale (STS) FHIR IG Internal Code System"
//-------------------------------------------------------------------------------------------
* #F "fattura" "fattura" 
* #D "documento commerciale" "documento commerciale"


* #TK  "Ticket" "Ticket (Quota fissa e/o Differenza con il prezzo di riferimento. Franchigia. Pronto Soccorso e accesso diretto)"
* #FC "Farmaci e Dispositivi medici CE" "Farmaco, anche omeopatico. Dispositivi medici CE"
* #FV  "Farmaco per uso veterinario" "Farmaco per uso veterinario"
* #AD "Acquisto o affitto di dispositivo medico CE" "Acquisto o affitto di dispositivo medico CE"
* #CT "Cure Termali" "Cure Termali"
* #PI "Protesica e integrativa""protesica e integrativa"
* #IC "Chirurgia e medicina estetica" "Prestazioni di chirurgia estetica e di medicina estetica (ambulatoriale o ospedaliera)"
* #SP  "Prestazioni sanitarie" "Prestazioni sanitarie"
* #SV  "Spese veterinarie" "Spese veterinarie"
* #AA  "Altre spese" "Altre spese"
* #SR "Varie prestazioni sanitarie" "prestazioni sanitarie: assistenza specialistica ambulatoriale esclusi interventi di chirurgia estetica; visita medica generica e specialistica o prestazioni diagnostiche estrumentali; prestazione chirurgica ad esclusione della chirurgia estetica;certificazione medica; ricoveri ospedalieri ricollegabili ad interventi chirurgici o adegenza, ad  esclusione della chirurgia estetica, al netto del comfort"
* #AS "Farmacia dei servizi" "Spese sanitarie relative ad ECG, spirometria, Holter pressorio e cardiaco, test per glicemia, colesterolo e trigliceridi o misurazione della pressione sanguigna, prestazione previste dalla farmacia dei servizi e simili sanguigna)"

* #aliquota-iva "Aliquota IVA" "Aliquota IVA"



ValueSet: VsPriceComponentCodeSTS
Id: ValueSet-priceComponentCode-it-spesaSanitaria
Title: "Tipo di componente"
Description: "Tipo di componente del prezzo: e.g. IVA "
//-------------------------------------------------------------------------------------------
* CsDocumentoFiscaleSTS#aliquota-iva 


ValueSet: VsInvoiceTypeSTS
Id: ValueSet-invoiceType-it-spesaSanitaria
Title: "Tipo di documento"
Description: "Tipologia del documento attestante il pagamento della prestazione o del bene sanitario assume valore: F (fattura) D (documento commerciale)"
//-------------------------------------------------------------------------------------------
* CsDocumentoFiscaleSTS#F "fattura" 
* CsDocumentoFiscaleSTS#D "documento commerciale"

ValueSet: VsLineItemTypeSTS
Id: ValueSet-lineItemType-it-spesaSanitaria
Title: "Tipo di voce di spesa"
Description: "Tipo di voce di spesa"
//-------------------------------------------------------------------------------------------

* CsDocumentoFiscaleSTS#TK 
* CsDocumentoFiscaleSTS#FC 
* CsDocumentoFiscaleSTS#FV 
* CsDocumentoFiscaleSTS#AD 
* CsDocumentoFiscaleSTS#CT 
* CsDocumentoFiscaleSTS#PI 
* CsDocumentoFiscaleSTS#IC 
* CsDocumentoFiscaleSTS#SP 
* CsDocumentoFiscaleSTS#SV 
* CsDocumentoFiscaleSTS#AA
* CsDocumentoFiscaleSTS#SR
* CsDocumentoFiscaleSTS#AS 