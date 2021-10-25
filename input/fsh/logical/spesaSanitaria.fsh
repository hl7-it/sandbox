Logical:        DocumentoSpesaSanitaria
Id:             DocumentoSpesaSanitaria
Title:          "Documento Fiscale (STS)"
Description:    "Documento Fiscale da inviarsi al SISTEMA TESSERA SANITARIA. Dati di spesa sanitaria di cui art. 3 comma 3 D.ls 175/2014"




* dataEmissione 1..1 dateTime "Data di emissione" "Data di emissione del documento fiscale relativo alla spesa sostenuta dal cittadino."
* numDocumento 0..1 string "Numero identificativo del documento emesso" "Univoco nell’ambito della data. E’ univoco per giornata (scontrini) o per anno (fattura)"
* tipoDocumento 1..1 CodeableConcept "Tipologia del documento attestante il pagamento" "Tipologia del documento attestante il pagamento della prestazione o del bene sanitario assume valore: F (fattura) D (documento commerciale)"
* proprietario 1..1 SU BackboneElement  "Chi emette il documento" "Struttura o professionista che mette il documento fiscale"
* proprietario obeys  struttura-xor-professionista
* proprietario.struttura 0..1 SU BackboneElement  "Struttura che emette il documento" "Struttura che emette il documento fiscale"
  * codiceRegione 1..1 SU code  "Codice regione" "Codice regione della struttura che emette il documento fiscale"
  * codiceAsl 1..1 SU code  "Codice asl" "Codice della ASL della struttura che emette il documento fiscale"
  * codiceSSA 1..1 SU code  "Codice struttura Codice farmacia/struttura che emette il documento fiscale"
  * cfProprietario 1..1 Identifier "Codice fiscale del proprietario" "Codice fiscale cifrato del soggetto di riferimento della struttura o del professionista"
  * pIva 1..1 Identifier "Partita IVA" "Partita IVA della farmacia/struttura o medico che emette il documento fiscale"
* proprietario.professionista 1..1  BackboneElement  "Professionista che emette il documento" "Professionista che emette il documento fiscale"
  * cfProprietario 1..1  Identifier "Codice fiscale del proprietario" "Codice fiscale cifrato del soggetto di riferimento della struttura o del professionista"
  * pIva 1..1 Identifier "Partita IVA" "Partita IVA della farmacia/struttura o medico che emette il documento fiscale" 	
* cfCittadino 0..1 Identifier "Codice fiscale del cittadino" "Codice fiscale del cittadino rilevato dalla Tessera Sanitaria Campo cifrato Deve essere assente se flagOpposizione = 1"
* dispositivo 0..1 Identifier "Numero progressivo del dispositivo che genera il documento" 
		"Per dispositivo si intende il progressivo del registratore di cassa utilizzato dagli esercenti di beni sanitari che emettono documento commerciale; per l’emissione di fatture o ricevute fiscali il campo assume il valore consigliato = 1"
* flagOpposizione 0..1 boolean "Flag Invio ad Agenzia" "Indica la volontà del cittadino di non permettere l’invio del dato di spesa all’Agenzia delle entrate ai fini della predisposizione della dichiarazione Precompilata assume valore 0 = il cittadino NON si oppone 1 = il cittadino si oppone"
* voceSpesa 1..* SU BackboneElement "voceSpesa" "voceSpesa"
  * tipoSpesa 1..1 CodeableConcept "Tipo Spesa" "Tipo Spesa" 
  
    		/*=====
	tipoSpesa Il Campo assume i seguenti valori:
 TK= Ticket (Quota fissa e/o Differenza con il prezzo di riferimento. Franchigia. Pronto Soccorso e accesso diretto)
 FC= Farmaco, anche omeopatico. Dispositivi medici CE
 FV = Farmaco per uso veterinario
 AD= Acquisto o affitto di dispositivo medico CE
 AS= Spese sanitarie relative ad ECG, spirometria, Holter pressorio e cardiaco, test per glicemia, colesterolo e trigliceridi o misurazione della pressione sanguigna, prestazione previste dalla farmacia dei servizi e simili sanguigna)
 SR= prestazioni sanitarie: assistenza specialistica ambulatoriale esclusi interventi dichirurgia 
estetica; visita medica generica e specialistica o prestazioni diagnostiche estrumentali; prestazione chirurgica ad esclusione della chirurgia estetica;certificazione medica; ricoveri ospedalieri ricollegabili ad interventi chirurgici o adegenza, ad  esclusione della chirurgia estetica, al netto del comfort
 CT= Cure Termali
 PI= protesica e integrativa
 IC= Prestazioni di chirurgia estetica e di medicina estetica (ambulatoriale o ospedaliera)
 SP = Prestazioni sanitarie
 SV = Spese veterinarie
 AA = Altre spese
==*/

  * flagTipoSpesa 1..1 CodeableConcept "Caratteristiche particolari del tipo Spesa" "Il campo è valorizzato al fine di evidenziare caratteristiche particolari di alcune tipologie di spesa. Il campo vale:  1 con tipo TK (ticket di pronto soccorso); 2 con tipo SR (visita in intramoenia)"
  * importo 1..1 Money "Importo della voce di spesa" "Importo di ogni singola spesa sostenuta dal cittadino / rimborso riconosciuto al cittadino a fronte di una spesa sostenuta. Il campo deve assumere sempre valori positivi, anche in caso di rimborso Valore da 5 + 2 decimali"
  * aliquotaIVA 0..1  Quantity "Aliquota IVA" "Aliquota IVA relativa Impostata in all’importo della voce di spesa. alternativa al campo naturaIVA Valore da 2 + 2 decimali"
  * naturaIVA 0..1 CodeableConcept "Codice natura dell'operazione esente IVA" "Codice natura dell'operazione esente IVA. Impostata in alternativa al campo aliquotaIVA. Assume valori da N1 a N6 per tipoDocumento = D (2 caratteri) Assume valori da N1 a N7 o sottovalori per tipoDocumento = F (max 4 caratteri)"	

* dettagliPagamento 1..* SU BackboneElement "Dettagli Pagamento" "Dettagli Pagamento"
  * dataPagamento 1..1 dateTime "Data di pagamento afferente al 'documento fiscale' emesso." "Data di pagamento afferente al 'documento fiscale' emesso. Deve essere coincidente o maggiore rispetto alla data di emissione. Può essere minore rispetto alla data di emissione solo se valorizzato a 1 il flag pagamento anticipato ( e comunque non minore del 01/01/2015)"
  * flagPagamentoAnticipato 0..1 boolean "Pagamento sostenuto in data antecedente all'emissione" "Il campo deve essere valorizzato a “1” per indicare il pagamento della spesa sostenuta dal cittadino in data antecedente alla data di emissione del 'documento fiscale' Elemento opzionale"
  * pagamentoTracciato 0..1 boolean "Modelità di pagamento" "Il campo descrive la modalità di pagamento e assume i valori SI/NO SI : secondo le modalità previste dal comma 679 dell’art. 1 della Legge 160 del 27 /12/2019( legge di bilancio 2020) NO: in contanti"



	
Invariant:   struttura-xor-professionista
Description: "Struttura or Professionista SHALL be present, not both"
Expression:  "struttura.exists() xor professionista.exists()"
Severity:    #error
XPath:       "f:struttura xor f:professionista"