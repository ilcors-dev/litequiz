INSERT INTO questions (question, answer, category_id) VALUES
    ("Assegnare un name ad ogni task è indispensabile",0,1),
    ("Ansible è utilizzato per la configurazione di sistemi",1,1),
    ("Tutti i task lanciati con Ansible sono idempotenti",0,1),
    ("Ansible utilizza dei file detti playbook scritti con sintassi json",0,1),
    ("Il mount point è una directory speciale che non può essere utilizzata per contenere direttamente file",0,1),
    ("La pianificazione di attività con cron ha un periodo massimo di 1 anno",1,1),
    ("Un task pianificato con cron come 10 22 2,20 * 4 programma viene eseguito almeno 4 volte al mese",1,1),
    ("La pianificazione di attività via /etc/crontab è riservata all'utente root",1,1),
    ("La pianificazione di un task con at può essere monitorata e revocata",1,1),
    ("La direttiva WantedBy nella definizione di una unit di servizio agisce quando il servizio viene installato",1,1),
    ("L'utente proprietario di un file potrebbe avere permessi di accesso a tale file più limitati di altri utenti del sistema",1,1),
    ("bash non espande ricorsivamente un alias che contiene sè stesso",1,1),
    ("Il comando sudo richiede all'utente la sua stessa password per autorizzare l'esecuzione privilegiata di comandi",1,1),
    ("Ogni man page ha un nome intrinsecamente univoco",0,1),
    ("È consigliabile che l'amministratore effettui il login come utente standard, in quanto la maggior parte delle attività non richiedono i privilegi di root",1,1),
    ("L'amministratore di sistema può subire conseguenze legali del proprio operato",1,1),
    ("L'utente proprietario di un file deve far parte del gruppo proprietario dello stesso file",0,1),
    ("I file di un filesystem possono essere acceduti solo dopo aver associato il dispositivo a un mount point",1,1),
    ("È possibile formattare un disco senza essere partizionarlo",1,1),
    ("Il sistema di logging integrato in systemd è sostanzialmente un duplicato di syslogd, le funzionalità sono identiche",0,1),
    ("top è comando più adatto per seguire interattivamente lo stato di uso delle risorse del sistema",1,1),
    ("Il selettore local1.info cattura unicamente i messaggi con etichetta specificata",0,1),
    ("I messaggi inviati a un sistema di logging centralizzato devono essere preventivamente marcati con un timestamp accurato",0,1),
    ("lsof mostra solo i file esistenti sul filesystem correntemente in uso",0,1),
    ("NSS (Name Service Switch) è il sistema per la risoluzione dei nomi host in indirizzi IP",0,1),
    ("Gli indirizzi IPv4 nel range 169.254.1.0 – 169.254.254.255 sono riservati all'allocazione automatica link local",1,1),
    ("dnsmasq può essere lanciato in più istanze per servire richieste su interfacce diverse con configurazioni incompatibili tra loro",1,1),
    ("L'assegnamento di un indirizzo IPv4 link local avviene prima di interrogare server che potrebbero assegnare un indirizzo diverso all'host",0,1),
    ("LDAP è un database general-purpose, ma nella pratica viene usato solo per distribuire informazioni relative a utenti",0,1),
    ("LDAP è un sistema che fornisce supporto per l'autenticazione centralizzata di utenti, da integrare specificamente in sistemi e applicazioni",1,1),
    ("LDAP utilizza un modello a oggetti dei dati",1,1),
    ("Una entry LDAP può essere istanza di più classi strutturali simultaneamente",0,1),
    ("In SNMP l'interazione più comune tra manager e agent è del tipo richiesta-risposta",1,1),
    ("Si puà interrogare un agent SNMP in merito a un managed object solo conoscendone a priori l'OID",0,1),
    ("Si definisce agent il software di interfaccia di un dispositivo fisico connesso in rete, che supporta il protocollo SNMP",1,1),
    ("In SNMP l'agent può prendere l'iniziativa di contattare il manager",1,1),
    ("Un comando invocato col nome del programma privo di percorso (esempio: ls) viene eseguito se trovato nella directory corrente",0,1),
    ("Il comando sudo richiede all'utente la password di root per autorizzare l'esecuzione privilegiata di comandi",0,1),
    ("Il sistema sudo permette unicamente di eseguire comandi coi privilegi di root",0,1),
    ("Le pagine di manuale sono divise in sezioni",1,1),
    ("Senza permesso di lettura su di una directory, non si possono utilizzare i file in essa contenuti",0,1),
    ("I device driver rispettano le interfacce delle system call standard (open, close, read, ...) e implementano i comandi corretti per il corrispondente dispositivo",1,1),
    ("Un disco non può mai essere formattato senza essere partizionato",0,1),
    ("I file in /dev corrispondono uno-a-uno coi device installati sul sistema",0,1),
    ("I file di un filesystem possono essere acceduti direttamente con la notazione /dev/partizione/percorso/file",0,1),
    ("La pianificazione di attività cron ha un periodo massimo arbitrario",0,1),
    ("Le azioni start e stop di systemctl agiscono istantaneamente sul servizio",1,1),
    ("L'azione disable di systemctl impedisce completamente l'avvio del servizio",0,1),
    ("La direttiva WantedBy nella definizione di una unit di servizio agisce quando il servizio viene avviato",0,1),
    ("Un servizio di tipo oneshot può risultare attivo anche se non corrisponde ad alcun processo in esecuzione",1,1),
    ("La CPU troppo lenta può non essere la causa principale di accodamento di processi e conseguente aumento del carico",1,1),
    ("syslog classifica i messaggi principalmente sulla base del contenuto",0,1),
    ("Le facility sono un insieme non ordinato",1,1),
    ("df e du sono strumenti differenti per ottenere la stessa informazione",0,1),
    ("top riassume in una schermata l'output di free, ps, uptime",1,1),
    ("Il comando ss può essere è usato per ottenere informazioni sul traffico che fluisce attraverso un router",0,1),
    ("Gli indirizzi IPv4 nel range 169.254.1.0 – 169.254.254.255 sono riservati dallo IANA per usi futuri",0,1),
    ("L'assegnamento di un indirizzo secondo il modello SLAAC parte ricercando in rete server che potrebbero fornire tale informazione",0,1),
    ("La configurazione di un'interfaccia col comando `ip a add 10.1.1.5/24 dev eth1` assegna un indirizzo all'interfaccia indipendentemente dai file di configurazione del sistema",1,1),
    ("Il comando tcpdump permette di rilevare se un processo è in ascolto su di una porta TCP",0,1),
    ("I tipi di attributo fondamentali per l'organizzazione delle entry LDAP per l'autenticazione sono dc, ou, cn, uid",1,1),
    ("Il modello multimaster consente modifiche simultanee dello stesso database LDAP su diversi server",1,1),
    ("Lo schema di LDAP definisce i tipi di attributo ammessi e le classi di oggetti utilizzabili",1,1),
    ("Una entry LDAP può essere istanza di più classi simultaneamente",1,1),
    ("Solo la versione 3 di SNMP prevede sistemi di sicurezza robusti",1,1),
    ("Nel sottoalbero del MIB con origine .1.3.6.1.4.1 qualsiasi ente può richiedere un ramo privato",1,1),
    ("Si definisce agent qualsiasi dispositivo fisico connesso in rete che supporti il protocollo SNMP",0,1),
    ("SNMP è utilizzabile per il monitoraggio di dispositivi, ma è principalmente impiegato per la loro configurazione",0,1),
    ("Ansible ha bisogno solamente di Python ed SSH installati nella macchina target",1,1),
    ("Ansible è considerato uno strumento per realizzare Infrastructure as Code",1,1),
    ("Gli Handler vengono eseguiti solamente se vengono innescati da un task",1,1),
    ("Tutti i task lanciati con Ansible sono idempotenti",0,1),
    ("Se uptime riporta 0.70 0.35 0.88 come valori medi di carico, ciò indica un picco di carico avvenuto di recente e superato",0,1),
    ("Un processo può essere avviato in tre modi: lancio da parte di un utente, avvio al boot da parte di systemd, esecuzione periodica attraverso cron",0,1),
    ("La direttiva WantedBy nella definizione di una unit di servizio agisce quando il servizio viene avviato",0,1),
    ("La direttiva WantedBy nella definizione di una unit di servizio agisce quando il servizio viene installato",1,1),
    ("Il comando tcpdump non permette di rilevare se un processo è in ascolto su di una porta TCP",1,1),
    ("Il Distinguished Name identifica una entry LDAP ma non la sua posizione nel DIT",0,1),
    ("Il MIB teoricamente è un modello per collocare in una tassonomia qualsiasi tipo di informazione",1,1),
    ("SNMP è un protocollo applicativo trasportato su TCP",0,1),
    ("SNMP è un protocollo applicativo trasportato da UDP",1,1),
    ("Il selettore local1.info cattura anche messaggi con etichette diverse",1,1),
    ("Nel sottoalbero del MIB con origine .1.3.6.1.4.1 qualsiasi ente può richiedere un ramo privato",1,1),
    ("L' amministratore di sistema non ha responsabilità legali, solo operative",0,1),
    ("Gli indirizzi nel range 169.254.1.0 - 169.254.254.255 sono riservati all'allocazione automatica link local",1,1),
    ("Una distribuzione LTS differisce da una standard per la durata del supporto offerto dal produttore",1,1),
    ("Un servizio di tipo oneshot di systemd può risultare attivo anche se non corrisponde ad alcun processo in esecuzione",1,1),
    ("Un disco e una sua partizione sono entrambi dispositivi a blocchi",1,1),
    ("Una entry LDAP può essere istanza di più classi simultaneamente",1,1),
    ("Le azioni start e stop di systemctl agiscono istantaneamente sul servizio",1,1),
    ("E' consigliabile che l'amministratore effettui il login come root, in quanto la maggior parte delle attività richiedono i privilegi corrispondenti",0,1),
    ("yum e apt sono strumenti per la gestione dei pacchetti Debian (e distribuzioni derivate)",0,1),
    ("Il comando ip a add 10.1.1.5/24 dev eth1 modifica anche la tabella di instradamento del sistema",1,1),
    ("Una Object Class non è altro che la specifica di quali tipi di attributo siano necessari o ammessi in una entry che la istanzia",1,1),
    ("L'assegnamento di un indirizzo IPv4 link local avviene prima di interrogare server che potrebbero assegnare un indirizzo diverso all'host",0,1),
    ("La CPU troppo lenta può non essere la causa principale di accodamento di processi e conseguente aumento del carico",1,1),
    ("Le certificazioni professionali in ambito Linux sono utili sul mercato del lavoro",1,1),
    ("L'amministratore di sistema non ha responsabilità legali, ma solo operative",0,1),
    ("Il carico riportato da uptime rappresenta la percentuale di utilizzo della CPU",0,1),
    ("df e du sono strumenti per ottenere la stessa informazione",0,1),
    ("Solo la versione 3 di snmp prevede sistemi di sicurezza robusti",1,1),
    ("df e du sono strumenti differenti per ottenere la stessa informazione",0,1),
    ("L'azione disable di systemctl impedisce completamente l'avvio del servizio",0,1),
    ("NTP consente la sincronizzazione via Internet con errori ben inferiori al secondo",1,1),
    ("LDAP utilizza un modello relazionale dei dati",0,1),
    ("Il modello multimaster consente modifiche simultanee dello stesso database LDAP su diversi server",1,1),
    ("Un comando invocato con nome 'nudo' del programma (esempio: ls) viene eseguito di default se trovato nella directory corrente",0,1),
    ("Le pagine di manuale sono divise in sezioni",1,1),
    ("La pianificazione di attività con cron ha un periodo minimo di un minuto",1,1),
    ("I file in /dev contengono una copia dei dati dei al dispositivi",0,1),
    ("I log non possono essere analizzati in tempo reale",0,1),
    ("Le entry LDAP possono essere trovate solamente conoscendo il loro Distinguished Name",0,1),
    ("I file in /dev corrispondono uno-a-uno coi device installati sul sistema",0,1),
    ("I tipi di attributi fondamentali per l'organizzazione delle entry LDAP per l'autenticazione sono dc, ou, cn, uid",1,1),
    ("Il downtime riconducibile a problemi software è superiore a quello imputabile a guasti hardware",1,1),
    ("NSS (Name Service Switch) è il sistema per la risoluzione dei nomi host in indirizzi IP",0,1),
    ("Non possono esistere due man page con lo stesso nome",0,1),
    ("I device driver rispettano le interfacce delle system call standard (open, close,read, ...) e implementano i comandi corretti per il corrispondente dispositivo",1,1),
    ("La pianificazione di attività con cron è riservata all'utente root",0,1),
    ("La possibilità di cancellare un file è determinata unicamente dai permessi assegnati alla directory che lo contiene",1,1),
    ("LDAP è un sistema autonomo che fornisce tutti i componenti necessari per l'autenticazione centralizzata di utenti",0,1),
    ("lsof permette, in certe condizioni, di individuare file cancellati",1,1),
    ("top è comando più adatto per catturare una 'fotografia istantanea' dello stato dei processi in formato flessibile per successive elaborazioni",0,1),
    ("SNMP è utilizzabile per il monitoraggio di dispositivi, ma è principalmente impiegato per la loro configurazione",0,1),
    ("Si definisce agent qualsiasi dispositivo fisico connesso in rete che supporti il protocollo SNMP",0,1),
    ("Attraverso la definizione di SMI, è possibile definire strutture dati di complessità arbitraria per managed object di SNMP",0,1),
    ("Solo il produttore di una distribuzione può realizzare pacchetti instabili correttamente su di un sistema che l'abbia adottata",0,1),
    ("Le entry di LDAP possono essere mostrate secondo differenti organizzazioni gerarchiche",0,1),
    ("I target di systemd sono grosso modo equivalenti ai runlevel di SysVinit",1,1),
    ("La configurazione di un'interfaccia col comando ip a add 10.1.1.5/24 dev eth1 assegna un indirizzo in modo persistente",0,1),
    ("I file di un filesystem possono essere acceduti direttamente con la notazione /dev/partizione/percorso/file",0,1),
    ("syslog classifica i messaggi principalmente sulla base del contenuto",0,1),
    ("SNMP è un protocollo applicativo trasportato su UDP",1,1),
    ("top riassume in una schermata l'output di free, ps, uptime",1,1),
    ("Un task pianificato con cron come 10 22 2,20 * * programma viene eseguito almeno 6 volte al mese",0,1),
    ("In SNMP l'interazione tra manager e agent è sempre del tipo richiesta-risposta",0,1),
    ("L'installazione manuale da sorgenti è più flessibile rispetto all'installazione da binari precompilati",1,1),
    ("LDAP è essenzialmente un database specializzato per distribuire informazioni relative a utenti",1,1),
    ("Il comando sudo permette di differenziare quali comandi un utente può eseguire coi privilegi di un altro utente",1,1),
    ("dpkg risolve automaticamente le dipendenze in fase di installazione di un pacchetto",1,1),
    ("Un disco può essere formattato senza essere partizionato",1,1),
    ("Il comando ss non è in grado di riportare alcuna informazione sul traffico che fluisce attraverso un router",1,1),
    ("Gli alias di bash possono espandere ricorsivamente se stessi",0,1),
    ("Gli standard promossi dallo Zeroconf Working Group permettono di configurare automaticamente i protocolli da usare a tutti i livelli, da quello fisico a quello applicativo",0,1),
    ("Gli attributi di una entry LDAP sono come variabili a cui viene assegnato un singolo valore",1,1),
    ("Gli alias di bash possono contenere altri alias, che vengono espansi",1,1),
    ("Ogni file ha come unico proprietario un utente",0,1),
    ("Le facility di syslog sono un insieme non ordinato",1,1),
    ("L’assegnamento di un indirizzo IPv6 link local secondo il mondello SLAAC avviene prima di interrogare server che potrebbero assegnare un indirizzo diverso all’host",1,1),
    ("I nomi assegnati del dominio .local sono tipicamente strutturati in modo gerarchico secondo le esigenze dell’organizzazione aziendale",0,1),
    ("Uno dei vantaggi di utilizzare un sistema di logging centralizzato è la marcatura temporale coerente dei messaggi",1,1),
    ("dnsmasq può essere lanciato in più istanze per servire richieste su interfacce diverse con configurazioni incompatibili tra loro",1,1),
    ("Le facility sono un insieme non ordinato",1,1),
    ("Se uptime riporta 0.70 0.35 0.88 come valori medi del carico, ciò indica un picco di carico avvenuto negli ultimi minuti e ora superato",0,1),
    ("Se un gruppo ha certi permessi su di un file, un utente che fa parte di tale gruppo godrà sempre come minimo degli stessi permessi su tale file",1,1),
    ("Un disco NON può essere mai formattato senza essere partizionato",0,1),
    ("Un comando invocato col nome del programma privo di percorso (esempio:ls) viene eseguito se trovato nella directory corrente",0,1),
    ("Gli indirizzi IPv4 nel range 169.254.1.0 - 169.254.254.255 sono riservati all’allocazione automatica link local",1,1),
    ("L’utente che crea un file può deciderne i permessi",1,1),
    ("Il comando sudo richiede all’utente la password di root per autorizzare l’esecuzione privilegiata di comandi",0,1),
    ("La pianificazione di un task con at non può essere revocata",0,1),
    ("Il sistema sudo permette unicamente di eseguire comandi coi privilegi di root",0,1),
    ("Il comando sudo permette di differenziare quali comandi un utente può eseguire coi privilegi di root",1,1),
    ("Gli alias di bash possono definire o referenziare (espandere) altri alias",1,1),
    ("Senza permesso di lettura su di una directory, non si possono utilizzare i file in essa contenuti",0,1),
    ("Un task pianificato con cron come */5 8 1 * * programma viene eseguito 12 volte al mese",1,1),
    ("La pianificazione di attività con cron ha un periodo massimo arbitrario",0,1),
    ("top è comando più adatto per catturare in un momento preciso lo stato di tutti i processi",0,1),
    ("Il comando batch è una delle interfacce al demone atd",1,1),
    ("L'utente che crea un file può deciderne chi ne è proprietario",0,1),
    ("Il sistema di logging integrato in systemd è avviato prima di syslogd",1,1),
    ("Il comando ss è in grado di riportare alcune informazioni sulla connessione",1,1),
    ("top è comando più adatto per catturare in un momento preciso lo stato di tutti i processi",0,1),
    ("Non esistono certificazioni professionali riconosciute in ambito Linux",0,1),
    ("L'utente che crea un file può decidere quale deve essere il gruppo proprietario, tra quelli di cui è membro",1,1),
    ("Ogni file ha un unico utente ed un unico gruppo come proprietari",1,1),
    ("L'azione mask di systemctl impedisce completamente l'avvio del servizio",1,1),
    ("La pianificazione di attività con cron può avere una frequenza arbitraria (senza alcun limite di frequenza)",0,1),
    ("Le azioni enable e disable di systemctl agiscono istantaneamente sul servizio",0,1),
    ("La pianificazione di un task con at può essere monitorata e revocata",1,1),
    ("Le facility sono un insieme ordinato",0,1),
    ("syslog classifica i messaggi principalmente sulla base di un'etichetta che specifica l'argomento e importanza",1,1),
    ("lsof mostra solo i file sul FS correntemente in uso",0,1),
    ("Il downtime è principalmente causato da guasti hardware",0,1),
    ("I tipi di attributo utilizzabili nelle entry LDAP decono essere definiti manualmente in uno schema da ogni amministratore di directory, NON esistono collezioni standard",0,1),
    ("Le entry LDAP possono essere trovate conoscendo una combinazione di valori di attributi",1,1),
    ("LDAP utilizza un modello a oggetti dei dati",1,1),
    ("Le entry di LDAP sono organizzate gerarchicamente",1,1),
    ("SNMP è un protocollo applicativo trasportato su TCP",0,1),
    ("Tutte le versioni di SNMP prevedono sistemi di autenticazione robusti",0,1),
    ("Il MIB è un modello sviluppato unicamente per definire un tassonomia di informazioni relative ai protocolli di rete",0,1),
    ("La possibilità di cancellare un file dipende dai permessi attribuiti al proprietario del file stesso",0,1),
    ("Si possono utilizzare i file contenuti in una directory, sotto certe condizioni, anche se non si ha il permesso di leggere la directory",1,1),
    ("E' consigliabile che l'amministratore effettui il login come utente standard, in quanto la maggior marte delle attività non richiedono i privilegi di root",1,1),
    ("L'amministratore di sistema può subire conseguenze legali del proprio operato",1,1),
    ("Gli utenti membri di un gruppo proprietario di un file possono deciderne i permessi",0,1),
    ("Il comando sudo richiede all'utente la sua stessa password per autorizzare l'esecuzione privilegiata di comandi",1,1),
    ("Ogni man page ha un nome intresecamente univoco",1,1),
    ("L'utente proprietario di un file deve far parte del gruppo proprietario dello stesso file",0,1),
    ("Un file in /dev può corrispondere a una famiglia di device installati sul sistema",0,1),
    ("Un servizio di tipo oneshot può risultare attivo solo se corrisponde a un processo in esecuzione",0,1),
    ("La pianificazione di attività con cron ha un periodo massimo di 1 anno",1,1),
    ("Un task pianificato con cron come 10 22 2,20 * * programma viene eseguito almeno 4 volte al mese",1,1),
    ("top è un comanda più adatto per seguire interattivamente lo stato di uso del sistema",1,1),
    ("dnsmasq può servire richieste su interfacce diverse a patto che le configurazioni siano tutte uniformi",0,1),
    ("dpkg risolve automaticamente le dipendenze recuperando i pacchetti necessari in fase di installazione di un pacchetto",0,1),
    ("apt risolve automaticamente le dipendenze recuperando i pacchetti necessari in fase di installazione di un pacchetto",1,1),
    ("Una Object Class specifica variabili e metodi disponibili a un oggetto che lo istanzia",0,1),
    ("Il Distinguished Name identifica la posizione nel DIT di una entry LDAP",1,1),
    ("Si può interrogare un agent SNMP in merito ad un managed object solo conoscendo a priori l'OID",0,1),
    ("Si definisce agent il software di interfaccia di un dispositivo fisico connesso in rete, che supporta il protocollo SNMP",1,1),
    ("In SNMP l'interazione più comune tra manager e agent è di tipo richiesta-risposta",1,1),
    ("Gli utenti membri del gruppo proprietario di un file possono deciderne i permessi",0,1),
    ("L'utente proprietario di un file potrebbe avere permessi di accesso a tale file più limitati di altri utenti del sistema",1,1),
    ("I messaggi inviati a un sistema di logging centralizzato devono essere preventivamente marcati con un timestamp accurato",0,1),
    ("top riassume in una schermata l'uso di cpu, memoria, I/O su disco e I/O via rete",0,1),
    ("DNS è il sistema per la risoluzione dei nomi host in indirizzi IP",1,1),
    ("L'installazione manuale da sorgenti è più vincolante rispetto all'installazione da binari precompilati",0,1),
    ("Una entry LDAP può essere istanza di più classi strutturali LDAP simultaneamente",0,1),
    ("Gli attributi di una entry LDAP sono valori etichettati con un tipo",1,1),
    ("LDAP è un database general-purpose, ma nella pratica viene usato solo per distribuire informazioni relative a utenti",0,1),
    ("L'assegnamento di un indirizzo IPv6 link local secondo il modello SLAAC avviene prima di interrogare server che potrebbero assegnare un indirizzo diverso all'host",1,1),
    ("Le syscall standard (open, close, read, ...) sui file in /dev vengono gestite dai device driver identificati dal nome del file",0,1),
    ("Le syscall standard (open, close, read, ...) sui file in /dev vengono gestite dai device driver identificati da Major e Minor number",1,1),
    ("È consigliabile che l'amministratore effettui il login come utente standard, in quanto la maggior parte delle attività non richiedono i privilegi di root",1,1),
    ("La pianificazione di attività via /etc/crontab è riservata all'utente root",1,1),
    ("I messaggi inviati a un sistema di logging centralizzato devono essere preventivamente marcati con un timestamp accurato",0,1),
    ("È deprecato strutturare gerarchicamente domini al di sotto di .local",1,1),
    ("Tutte le versioni di SNMP prevedono sistemi di autenticazione robusti",0,1);