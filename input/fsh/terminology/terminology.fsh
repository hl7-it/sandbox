
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CodeSystem: CsDocumentoFiscaleSTS
Id: documentoFiscale
Title: "Internal Code System"
Description: "Documento Fiscale (STS) FHIR IG Internal Code System"
//-------------------------------------------------------------------------------------------
* #F "fattura" "fattura" 
* #D "documento commerciale" "documento commerciale"

// added by RT
* #N "Nota di Credito" "Nota di Credito"


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

// codici esclusione IVA
* #N1 	"Escluse ex art. 15" "Escluse ex art. 15"
* #N2.1 "Non soggette ad IVA ai sensi degli artt. da 7 a 7-septies del DPR 633/72" "Non soggette ad IVA ai sensi degli artt. da 7 a 7-septies del DPR 633/72"
* #N2.2 "Non soggette – altri casi" "Non soggette – altri casi"
* #N3.1 "Non imponibili – esportazioni" "Non imponibili – esportazioni"
* #N3.2 "Non imponibili – cessioni intracomunitarie" "Non imponibili – cessioni intracomunitarie"
* #N3.3 "Non imponibili – cessioni verso San Marino"                                         "Non imponibili – cessioni verso San Marino"
* #N3.4 "Non imponibili – operazioni assimilate alle cessioni all’esportazione" "Non imponibili – operazioni assimilate alle cessioni all’esportazione"
* #N3.5 "Non imponibili – a seguito di dichiarazioni d’intento" "Non imponibili – a seguito di dichiarazioni d’intento"
* #N3.6 "Non imponibili – altre operazioni che non concorrono alla formazione del plafond"   "Non imponibili – altre operazioni che non concorrono alla formazione del plafond"
* #N4 	"Esenti" "Esenti"
* #N5 	"Regime del margine / IVA non esposta in fattura"                                    "Regime del margine / IVA non esposta in fattura"
* #N6.1 "Inversione contabile – cessione di rottami e altri materiali di recupero" "Inversione contabile – cessione di rottami e altri materiali di recupero"
* #N6.2 "Inversione contabile – cessione di oro e argento puro" "Inversione contabile – cessione di oro e argento puro"
* #N6.3 "Inversione contabile – subappalto nel settore edile"                                "Inversione contabile – subappalto nel settore edile"
* #N6.4 "Inversione contabile – cessione di fabbricati"                                      "Inversione contabile – cessione di fabbricati"
* #N6.5 "Inversione contabile – cessione di telefoni cellulari" "Inversione contabile – cessione di telefoni cellulari"
* #N6.6 "Inversione contabile – cessione di prodotti elettronici"                            "Inversione contabile – cessione di prodotti elettronici"
* #N6.7 "Inversione contabile – prestazioni comparto edile e settori connessi"               "Inversione contabile – prestazioni comparto edile e settori connessi"
* #N6.8 "Inversione contabile – operazioni settore energetico"                               "Inversione contabile – operazioni settore energetico"
* #N6.9 "Inversione contabile – altri casi"                                                  "Inversione contabile – altri casi"
* #N7 	"IVA assolta in altro stato UE" "IVA assolta in altro stato UE (vendite a distanza ex art. 40 c. 3 e 4 e art. 41 c. 1 lett. b,  DL 331/93; prestazione di servizi di telecomunicazioni, tele-radiodiffusione ed elettronici ex art. 7-sexies lett. f, g, art. 74- sexies DPR 633/72)."


ValueSet: VsCodiciEsclusioneIvaSTS
Id: ValueSet-esclusioneIva-it-spesaSanitaria
Title: "Codici esclusione IVA"
Description: "Codici esclusione IVA"
//-------------------------------------------------------------------------------------------
// codici esclusione IVA
* CsDocumentoFiscaleSTS#N1 	
* CsDocumentoFiscaleSTS#N2.1 
* CsDocumentoFiscaleSTS#N2.2 
* CsDocumentoFiscaleSTS#N3.1 
* CsDocumentoFiscaleSTS#N3.2 
* CsDocumentoFiscaleSTS#N3.3 
* CsDocumentoFiscaleSTS#N3.4 
* CsDocumentoFiscaleSTS#N3.5 
* CsDocumentoFiscaleSTS#N3.6 
* CsDocumentoFiscaleSTS#N4 	
* CsDocumentoFiscaleSTS#N5 	
* CsDocumentoFiscaleSTS#N6.1 
* CsDocumentoFiscaleSTS#N6.2 
* CsDocumentoFiscaleSTS#N6.3 
* CsDocumentoFiscaleSTS#N6.4 
* CsDocumentoFiscaleSTS#N6.5 
* CsDocumentoFiscaleSTS#N6.6 
* CsDocumentoFiscaleSTS#N6.7 
* CsDocumentoFiscaleSTS#N6.8 
* CsDocumentoFiscaleSTS#N6.9 
* CsDocumentoFiscaleSTS#N7 	

ValueSet: VsPriceComponentCodeSTS
Id: ValueSet-priceComponentCode-it-spesaSanitaria
Title: "Tipo di componente"
Description: "Tipo di componente del prezzo: e.g. IVA "
//-------------------------------------------------------------------------------------------
* CsDocumentoFiscaleSTS#aliquota-iva
// * include codes from  valueset VsCodiciEsclusioneIvaSTS

ValueSet: VsAliquotaIvaSTS
Id: ValueSet-aliquotaIva-it-spesaSanitaria
Title: "Aliquote Iva"
Description: "Aliquote IVA "
//-------------------------------------------------------------------------------------------
* CsDocumentoFiscaleSTS#aliquota-iva
// * include codes from  valueset VsCodiciEsclusioneIvaSTS

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