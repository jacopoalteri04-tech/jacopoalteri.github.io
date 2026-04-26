# jacopoalteri.github.io
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sotto il ciel di Michelangelo • Dal Mosè alla Cupola</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&family=Inter:wght@400;500;600&display=swap');
        
        :root {
            --tw-color-accent: #d4af77;
        }
        
        * {
            transition-property: color, background-color, border-color, text-decoration-color, fill, stroke;
            transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
            transition-duration: 150ms;
        }
        
        .tailwind-ready .hero-bg {
            background: linear-gradient(135deg, #1a1814 0%, #2c2418 100%);
        }
        
        .timeline-line {
            background: linear-gradient(to bottom, #d4af77, #8d6f3e);
        }
        
        .card-hover:hover {
            transform: translateY(-4px);
            box-shadow: 0 25px 50px -12px rgb(212 175 119 / 0.25);
        }
        
        .modal {
            animation: modalPop 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
        }
        
        @keyframes modalPop {
            0% { transform: scale(0.95); opacity: 0; }
            100% { transform: scale(1); opacity: 1; }
        }
        
        .section-header {
            font-family: 'Playfair Display', serif;
        }
    </style>
</head>
<body class="tailwind-ready bg-[#1a1814] text-[#f5f0e8] font-sans">
    <!-- NAVBAR -->
    <nav class="bg-[#1a1814] border-b border-[#d4af77]/30 sticky top-0 z-50">
        <div class="max-w-7xl mx-auto px-6 py-5 flex items-center justify-between">
            <div class="flex items-center gap-x-3">
                <div class="w-9 h-9 bg-[#d4af77] rounded-2xl flex items-center justify-center text-[#1a1814] text-2xl rotate-12">
                    🗿
                </div>
                <div>
                    <h1 class="text-2xl font-bold tracking-tight section-header">Sotto il ciel di Michelangelo</h1>
                    <p class="text-xs text-[#d4af77] -mt-1">dal Mosè alla Cupola</p>
                </div>
            </div>
            
            <div class="flex items-center gap-x-8 text-sm font-medium">
                <a onclick="document.getElementById('personaggio').scrollIntoView({ behavior: 'smooth' })" 
                   class="hover:text-[#d4af77] flex items-center gap-x-1">
                    <i class="fa-solid fa-user"></i>
                    <span>Il Maestro</span>
                </a>
                <a onclick="document.getElementById('tappe').scrollIntoView({ behavior: 'smooth' })" 
                   class="hover:text-[#d4af77] flex items-center gap-x-1">
                    <i class="fa-solid fa-route"></i>
                    <span>Le 4 Tappe</span>
                </a>
                <a onclick="document.getElementById('info').scrollIntoView({ behavior: 'smooth' })" 
                   class="hover:text-[#d4af77] flex items-center gap-x-1">
                    <i class="fa-solid fa-info-circle"></i>
                    <span>Info Pratiche</span>
                </a>
                <div class="bg-[#d4af77] text-[#1a1814] px-6 py-2.5 rounded-3xl font-semibold flex items-center gap-x-2 hover:bg-amber-300">
                    <i class="fa-solid fa-map"></i>
                    <span>6,5 km • 6 ore</span>
                </div>
            </div>
            
            <div class="flex items-center gap-x-2 text-[#d4af77]">
                <div class="text-xs uppercase tracking-[2px] font-medium">Roma • Rinascimento</div>
            </div>
        </div>
    </nav>

    <!-- HERO -->
    <header class="hero-bg pt-16 pb-24 relative overflow-hidden">
        <div class="max-w-7xl mx-auto px-6 grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
            <!-- Testo -->
            <div class="space-y-8">
                <div class="inline-flex items-center gap-x-2 bg-[#d4af77]/10 text-[#d4af77] text-sm font-medium px-5 py-2 rounded-3xl">
                    <i class="fa-solid fa-star"></i>
                    ITINERARIO ARTE E CULTURA
                </div>
                
                <h1 class="text-6xl lg:text-7xl font-bold leading-none section-header tracking-tighter">
                    Sotto il ciel<br>di Michelangelo
                </h1>
                <p class="text-2xl text-[#d4af77] max-w-md">Dal Mosè alla Cupola.<br>Percorriamo le tappe che hanno reso celebre l'artista fiorentino a Roma.</p>
                
                <div class="flex items-center gap-x-4">
                    <button onclick="startJourney()" 
                            class="bg-[#d4af77] hover:bg-amber-200 text-[#1a1814] px-8 py-5 rounded-3xl font-semibold text-lg flex items-center gap-x-3">
                        <i class="fa-solid fa-play"></i>
                        INIZIA IL PERCORSO
                    </button>
                    
                    <a href="#tappe" 
                       class="border border-[#d4af77]/60 hover:border-[#d4af77] px-8 py-5 rounded-3xl font-medium flex items-center gap-x-2">
                        <span>Scopri le 4 tappe</span>
                        <i class="fa-solid fa-arrow-down"></i>
                    </a>
                </div>
                
                <div class="flex items-center gap-x-8 text-sm">
                    <div>
                        <span class="block text-[#d4af77]">Durata</span>
                        <span class="font-semibold text-2xl">6 ore</span>
                    </div>
                    <div>
                        <span class="block text-[#d4af77]">Distanza</span>
                        <span class="font-semibold text-2xl">6,5 km</span>
                    </div>
                    <div>
                        <span class="block text-[#d4af77]">Difficoltà</span>
                        <span class="font-semibold text-2xl flex items-center">Facile <i class="fa-solid fa-shoe-prints ml-1"></i></span>
                    </div>
                    <div class="text-xs text-[#d4af77]/70 max-w-[180px]">
                        Primavera / Autunno<br>
                        <span class="text-[#d4af77]">Migliore luce e temperature miti</span>
                    </div>
                </div>
            </div>
            
            <!-- Immagine Michelangelo -->
            <div class="relative flex justify-center lg:justify-end">
                <div class="relative">
                    <img id="michelangelo-img" 
                         src="data:image/jpeg;base64,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"
                         alt="Michelangelo Buonarroti"
                         class="w-96 lg:w-[420px] h-auto rounded-3xl shadow-2xl rotate-[-8deg] border-8 border-[#d4af77]/20 object-cover">
                    <div class="absolute -bottom-3 -right-3 bg-[#1a1814] text-[#d4af77] text-xs font-medium px-4 py-2 rounded-2xl shadow-xl flex items-center gap-x-2">
                        <i class="fa-solid fa-palette"></i>
                        1475 — 1564
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Decorative elements -->
        <div class="absolute bottom-8 right-12 text-[#d4af77]/10 text-[180px] leading-none font-black rotate-12 select-none pointer-events-none">M</div>
    </header>

    <!-- PERSONAGGIO -->
    <section id="personaggio" class="max-w-7xl mx-auto px-6 py-20">
        <div class="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
            <div class="lg:col-span-7">
                <span class="uppercase text-[#d4af77] text-sm tracking-widest font-medium">Il gigante del Rinascimento</span>
                <h2 class="text-5xl font-bold section-header mt-3 mb-6">Michelangelo Buonarroti</h2>
                <p class="text-[#f5f0e8]/90 text-lg leading-relaxed">
                    Michelangelo Buonarroti non è stato solo un artista, ma il vero gigante del Rinascimento italiano. 
                    Scultore, pittore, architetto e poeta, la sua opera è segnata da una tensione drammatica e una perfezione tecnica 
                    che hanno cambiato per sempre la storia dell'arte.
                </p>
                
                <div class="mt-12 grid grid-cols-3 gap-6 text-center">
                    <div class="bg-[#2c2418] p-6 rounded-3xl">
                        <div class="text-4xl mb-2">🗿</div>
                        <div class="font-semibold">Scultore</div>
                        <div class="text-sm text-[#d4af77]">Mosè • Cristo della Minerva</div>
                    </div>
                    <div class="bg-[#2c2418] p-6 rounded-3xl">
                        <div class="text-4xl mb-2">🏛️</div>
                        <div class="font-semibold">Architetto</div>
                        <div class="text-sm text-[#d4af77]">Cupola di San Pietro • Campidoglio</div>
                    </div>
                    <div class="bg-[#2c2418] p-6 rounded-3xl">
                        <div class="text-4xl mb-2">🎨</div>
                        <div class="font-semibold">Pittore &amp; Poeta</div>
                        <div class="text-sm text-[#d4af77]">La perfezione del corpo come riflesso del divino</div>
                    </div>
                </div>
            </div>
            
            <div class="lg:col-span-5">
                <div class="bg-[#2c2418] p-8 rounded-3xl border border-[#d4af77]/10">
                    <h3 class="text-[#d4af77] uppercase text-sm mb-4 flex items-center gap-x-2">
                        <i class="fa-solid fa-book"></i> 
                        Biografia breve
                    </h3>
                    <p class="text-[#f5f0e8]/80 leading-relaxed">
                        Nato a Caprese nel 1475, Michelangelo è l’artista che più di ogni altro ha incarnato l’ideale rinascimentale dell’“uomo universale”. 
                        La sua opera a Roma – dal Mosè alla Cupola di San Pietro – rappresenta il culmine della sua carriera e la sintesi perfetta tra 
                        antichità classica e visione cristiana.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- INFO PRATICHE -->
    <section id="info" class="bg-[#2c2418] py-16">
        <div class="max-w-7xl mx-auto px-6">
            <h2 class="text-4xl font-bold section-header text-center mb-12">Informazioni Pratiche</h2>
            
            <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-6">
                <div class="bg-[#1a1814] rounded-3xl p-6 text-center">
                    <i class="fa-solid fa-clock text-4xl text-[#d4af77] mb-4"></i>
                    <div class="text-sm text-[#d4af77]">DURATA TOTALE</div>
                    <div class="text-4xl font-bold">6 ore</div>
                </div>
                <div class="bg-[#1a1814] rounded-3xl p-6 text-center">
                    <i class="fa-solid fa-road text-4xl text-[#d4af77] mb-4"></i>
                    <div class="text-sm text-[#d4af77]">DISTANZA</div>
                    <div class="text-4xl font-bold">6,5 km</div>
                </div>
                <div class="bg-[#1a1814] rounded-3xl p-6 text-center">
                    <i class="fa-solid fa-hiking text-4xl text-[#d4af77] mb-4"></i>
                    <div class="text-sm text-[#d4af77]">DIFFICOLTÀ</div>
                    <div class="text-4xl font-bold">Facile</div>
                </div>
                <div class="bg-[#1a1814] rounded-3xl p-6 text-center">
                    <i class="fa-solid fa-euro-sign text-4xl text-[#d4af77] mb-4"></i>
                    <div class="text-sm text-[#d4af77]">COSTO STIMATO</div>
                    <div class="text-4xl font-bold">Gratuito</div>
                </div>
                <div class="bg-[#1a1814] rounded-3xl p-6 text-center">
                    <i class="fa-solid fa-sun text-4xl text-[#d4af77] mb-4"></i>
                    <div class="text-sm text-[#d4af77]">PERIODO CONSIGLIATO</div>
                    <div class="text-lg font-medium">Marzo — Maggio • Settembre — Ottobre</div>
                </div>
                <div class="bg-[#1a1814] rounded-3xl p-6 text-center">
                    <i class="fa-solid fa-bus text-4xl text-[#d4af77] mb-4"></i>
                    <div class="text-sm text-[#d4af77]">ACCESSIBILITÀ</div>
                    <div class="text-sm">Metro A/B/C + passeggiata a piedi</div>
                    <div class="text-xs text-[#d4af77]/70 mt-2">Calzature comode consigliate</div>
                </div>
            </div>
            
            <div class="mt-12 text-center text-sm max-w-md mx-auto bg-[#1a1814] border border-[#d4af77]/20 rounded-3xl p-6">
                <i class="fa-solid fa-lightbulb text-[#d4af77]"></i>
                <p class="mt-3">Porta acqua, scarpe comode e cuffie. Il percorso è interamente pedonale nel centro storico di Roma.</p>
            </div>
        </div>
    </section>

    <!-- Tappe -->
    <section id="tappe" class="max-w-7xl mx-auto px-6 py-20">
        <div class="flex items-baseline justify-between mb-12">
            <div>
                <span class="uppercase text-[#d4af77] text-sm">4 tappe • 6,5 km</span>
                <h2 class="text-5xl font-bold section-header">Il percorso</h2>
            </div>
            <div class="text-[#d4af77] text-sm flex items-center gap-x-2">
                <div class="h-px w-12 bg-[#d4af77]"></div>
                DAL MATTINO AL TRAMONTO
                <div class="h-px w-12 bg-[#d4af77]"></div>
            </div>
        </div>
        
        <!-- Timeline -->
        <div class="relative">
            <!-- Linea verticale -->
            <div class="timeline-line absolute left-8 top-12 bottom-12 w-1 rounded-full hidden lg:block"></div>
            
            <div class="space-y-16" id="tappe-container">
                <!-- Popolato via JavaScript -->
            </div>
        </div>
    </section>

    <!-- Footer / Mappa placeholder -->
    <footer class="bg-[#1a1814] border-t border-[#d4af77]/30 py-12">
        <div class="max-w-7xl mx-auto px-6">
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div>
                    <h4 class="font-semibold mb-4">Mappa del percorso</h4>
                    <div class="bg-[#2c2418] h-64 rounded-3xl flex items-center justify-center border border-[#d4af77]/20 relative overflow-hidden">
                        <div class="text-center">
                            <i class="fa-solid fa-map-location-dot text-6xl text-[#d4af77]/30 mb-4"></i>
                            <p class="text-[#d4af77] font-medium">San Pietro in Vincoli → Campidoglio → Minerva → San Pietro</p>
                            <div class="text-xs mt-8 text-[#d4af77]/50">Polyline codificata disponibile nel JSON • Puoi importarla in Google Maps o Leaflet</div>
                        </div>
                        <!-- Simple route illustration -->
                        <svg class="absolute bottom-8 left-8 w-64 h-40 opacity-20" viewBox="0 0 300 140" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M20 120 Q80 90 140 110 Q200 60 260 100" stroke="#d4af77" stroke-width="8" stroke-linecap="round"/>
                            <circle cx="20" cy="120" r="12" fill="#d4af77"/>
                            <circle cx="140" cy="110" r="12" fill="#d4af77"/>
                            <circle cx="260" cy="100" r="12" fill="#d4af77"/>
                        </svg>
                    </div>
                </div>
                
                <div class="text-sm">
                    <h4 class="font-semibold mb-4">Note logistiche</h4>
                    <ul class="space-y-3 text-[#f5f0e8]/70">
                        <li class="flex gap-x-3"><i class="fa-solid fa-clock mt-px"></i> Partenza consigliata alle 08:00 da San Pietro in Vincoli</li>
                        <li class="flex gap-x-3"><i class="fa-solid fa-sun mt-px"></i> Ultimo ingresso Basilica San Pietro entro le 18:30</li>
                        <li class="flex gap-x-3"><i class="fa-solid fa-water mt-px"></i> Fontanelle romane lungo tutto il percorso</li>
                        <li class="flex gap-x-3"><i class="fa-solid fa-headphones mt-px"></i> Ascolta i brani Spotify direttamente dalle tappe</li>
                    </ul>
                </div>
                
                <div>
                    <h4 class="font-semibold mb-4">Cosa portare</h4>
                    <div class="flex flex-wrap gap-3">
                        <span class="bg-[#2c2418] text-xs px-5 py-3 rounded-3xl">🧴 Crema solare</span>
                        <span class="bg-[#2c2418] text-xs px-5 py-3 rounded-3xl">🥾 Scarpe comode</span>
                        <span class="bg-[#2c2418] text-xs px-5 py-3 rounded-3xl">💧 Bottiglia riutilizzabile</span>
                        <span class="bg-[#2c2418] text-xs px-5 py-3 rounded-3xl">🎧 Cuffie</span>
                        <span class="bg-[#2c2418] text-xs px-5 py-3 rounded-3xl">📱 Batteria portatile</span>
                    </div>
                    <p class="text-xs text-[#d4af77]/60 mt-8">Creato con ❤️ per gli amanti dell’arte romana</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- MODAL ESPERIENZA CULTURALE -->
    <div onclick="if(event.target.id === 'modal-backdrop') hideModal()" 
         id="modal-backdrop"
         class="hidden fixed inset-0 bg-black/80 flex items-center justify-center z-[9999]">
        
        <div id="modal-content" 
             onclick="event.stopImmediatePropagation()"
             class="modal bg-[#1a1814] max-w-4xl w-full mx-4 rounded-3xl overflow-hidden max-h-[90vh] flex flex-col">
            
            <div class="px-8 pt-8 pb-4 flex justify-between items-center border-b border-[#d4af77]/20">
                <div id="modal-tappa-title" class="text-3xl font-bold"></div>
                <button onclick="hideModal()" class="text-[#d4af77] text-3xl leading-none">×</button>
            </div>
            
            <div class="flex-1 overflow-auto p-8" id="modal-body">
                <!-- Popolato dinamicamente -->
            </div>
        </div>
    </div>

    <script>
        // Tailwind config
        function initializeTailwind() {
            return {
                config(userConfig = {}) {
                    return {
                        content: [],
                        theme: {
                            extend: {
                                colors: {
                                    accent: '#d4af77'
                                }
                            }
                        }
                    }
                },
                theme(userConfig = {}) {
                    return {
                        ...this.defaultTheme(),
                        ...userConfig,
                    }
                },
                defaultTheme() {
                    return {
                        extend: {},
                    }
                },
            }
        }
        
        // Dati JSON completi (incollati direttamente dal file fornito)
        const data = {
          "itinerari": [
            {
              "id": "michelangelo_artisti",
              "nome": "Sotto il ciel di Michelangelo. dal Mosè alla Cupola",
              "sottotitolo": "Percorriamo le tappe che hanno reso celebre l'artista fiorentino a Roma",
              "personaggio": {
                "nome": "Michelangelo Buonarroti",
                "anni": "1475-1564",
                "professione": "Artista",
                "nazionalita": "Italiana",
                "biografia_breve": "Michelangelo Buonarroti non è stato solo un artista, ma il vero gigante del Rinascimento italiano. Scultore, pittore, architetto e poeta, la sua opera è segnata da una tensione drammatica e una perfezione tecnica che hanno cambiato per sempre la storia dell'arte.",
                "immagine": "data:image/jpeg;base64,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"
              },
              "tema": "Opere romane di Michelangelo, il fascino dell'artista fiorentino",
              "categoria": "Arte e Cultura",
              "durata_totale_ore": 6,
              "difficolta": "facile",
              "distanza_totale_km": 6.5,
              "periodo_consigliato": "Primavera/Autunno (temperature miti)",
              "tappe": [
                {
                  "numero": 1,
                  "poi_id": "san_pietro_in_vincoli",
                  "orario_consigliato": "08:00",
                  "momento_giornata": "mattina",
                  "durata_visita_min": 40,
                  "nome": "San Pietro in Vincoli",
                  "descrizione_breve": "La basilica di San Pietro in Vincoli è un luogo di culto cattolica situato nel rione Monti, sul colle Oppio.",
                  "indicazioni_arrivo": "Raggiungibile tramite stazione Termini e con metro A,B e C entrambe con fermate Termini.",
                  "esperienza_culturale": {
                    "arte": {
                      "opera": "Il Mosè",
                      "artista": "Michelangelo Buonarroti",
                      "anno": 1513,
                      "descrizione_opera": "l Mosè di Michelangelo, scolpito intorno al 1513-1515, è un capolavoro in marmo originariamente concepito per il monumentale mausoleo di Papa Giulio II.",
                      "url_immagine": "https://www.charmen.it/wp-content/uploads/2019/11/Mose%CC%80.jpg"
                    },
                    "musica": {
                      "brano_completo": "Sicut Cervus",
                      "compositore": "Giovanni Pierluigi da Palestrina",
                      "spotify_url": "https://open.spotify.com/search/palestrina+sicut+cervus",
                      "note_ascolto": "Ascoltare all'interno della navata gotica della chiesa."
                    },
                    "letteratura": {
                      "citazione": "Mi sono sforzato di reggere allo sguardo sprezzante e adirato della figura.",
                      "autore": "Sigmund Freud"
                    },
                    "cinema": {
                      "film": "Il tormento e l'estasi",
                      "regista": "Carol Reed",
                      "anno": 1965
                    },
                    "atmosfera": {
                      "momento": "mattina",
                      "luce": "dorata e luminosa, con ombre nette",
                      "consiglio_fotografico": "Attiva l'illuminazione a pagamento per far risaltare le vene del marmo."
                    }
                  },
                  "storia": "Basilica del V secolo fondata da Licinia Eudossia per custodire le catene della prigionia di San Pietro.",
                  "curiosita": "Secondo la leggenda, Michelangelo colpì il ginocchio del Mosè urlando “Perché non parli?”."
                },
                {
                  "numero": 2,
                  "poi_id": "piazza_del_camidoglio",
                  "orario_consigliato": "12:00",
                  "nome": "Piazza del Campidoglio",
                  "descrizione_breve": "Sede del Comune di Roma e capolavoro urbanistico di Michelangelo.",
                  "esperienza_culturale": {
                    "arte": {
                      "opera": "Piazza del Campidoglio",
                      "artista": "Michelangelo Buonarroti",
                      "anno": 1538,
                      "descrizione_opera": "Primo esempio moderno di piazza monumentale a Roma con disegno pavimentale a stella."
                    },
                    "musica": {
                      "brano_completo": "Pini di Roma - I Pini della Via Appia",
                      "compositore": "Ottorino Respighi",
                      "spotify_url": "https://open.spotify.com/search/respighi+pini+appia"
                    },
                    "letteratura": {
                      "citazione": "Non si può dire quale effetto faccia l'insieme di questa piazza.",
                      "autore": "Johann Wolfgang von Goethe"
                    }
                  },
                  "storia": "Realizzata nel 176 d.C. per onorare Marco Aurelio.",
                  "curiosita": "La statua di Marco Aurelio si salvò perché scambiata per Costantino."
                },
                {
                  "numero": 3,
                  "poi_id": "piazza_della_minerva",
                  "orario_consigliato": "14:00",
                  "nome": "Piazza della Minerva",
                  "descrizione_breve": "Elegante piazza barocca dominata dalla Basilica di Santa Maria sopra Minerva.",
                  "esperienza_culturale": {
                    "arte": {
                      "opera": "Cristo della Minerva",
                      "artista": "Michelangelo Buonarroti",
                      "anno": 1519,
                      "descrizione_opera": "Scultura in marmo che raffigura Gesù in posa atletica."
                    },
                    "musica": {
                      "brano_completo": "Sicut Cervus",
                      "compositore": "Giovanni Pierluigi da Palestrina",
                      "spotify_url": "https://open.spotify.com/search/palestrina+sicut+cervus"
                    }
                  },
                  "curiosita": "L'elefante di Bernini volge la proboscide di lato per una vendetta contro i frati domenicani."
                },
                {
                  "numero": 4,
                  "poi_id": "basilica_di_san_pietro",
                  "orario_consigliato": "16:00",
                  "nome": "Basilica di San Pietro",
                  "descrizione_breve": "La chiesa più grande del mondo e il cuore del cattolicesimo.",
                  "esperienza_culturale": {
                    "arte": {
                      "opera": "Cupola di San Pietro",
                      "artista": "Michelangelo Buonarroti",
                      "anno": 1506,
                      "descrizione_opera": "Capolavoro assoluto dell’architettura rinascimentale, simbolo mondiale della cristianità."
                    },
                    "musica": {
                      "brano_completo": "Miserere mei, Deus",
                      "compositore": "Gregorio Allegri",
                      "spotify_url": "https://open.spotify.com/search/allegri+miserere"
                    }
                  },
                  "curiosita": "La cupola è la struttura in muratura più alta del mondo."
                }
              ]
            }
          ]
        }
        
        // Renderizza le tappe
        function renderTappe() {
            const container = document.getElementById('tappe-container')
            const itinerario = data.itinerari[0]
            
            itinerario.tappe.forEach((tappa, index) => {
                const cardHTML = `
                <div class="flex gap-8 lg:items-start">
                    <!-- Numero -->
                    <div class="flex-shrink-0 w-16 h-16 bg-[#d4af77] text-[#1a1814] rounded-2xl flex items-center justify-center text-4xl font-bold shadow-inner z-10 relative">
                        ${tappa.numero}
                    </div>
                    
                    <!-- Card -->
                    <div class="flex-1 bg-[#2c2418] rounded-3xl p-8 card-hover">
                        <div class="flex flex-col lg:flex-row lg:items-center justify-between mb-6">
                            <div>
                                <div class="uppercase text-xs tracking-widest text-[#d4af77]">${tappa.orario_consigliato} • ${tappa.momento_giornata || ''}</div>
                                <h3 class="text-3xl font-semibold section-header">${tappa.nome}</h3>
                            </div>
                            <div onclick="openModal(${index}); event.stopImmediatePropagation()" 
                                 class="mt-4 lg:mt-0 cursor-pointer flex items-center justify-center gap-x-2 bg-[#1a1814] hover:bg-[#d4af77] hover:text-[#1a1814] text-[#d4af77] text-sm font-medium px-7 py-4 rounded-3xl">
                                <i class="fa-solid fa-eye"></i>
                                <span>ESPLORA L'ESPERIENZA</span>
                            </div>
                        </div>
                        
                        <p class="text-[#f5f0e8]/80 mb-6">${tappa.descrizione_breve}</p>
                        
                        <div class="grid grid-cols-3 text-xs gap-4">
                            <div>
                                <span class="text-[#d4af77]">Arte</span><br>
                                <span class="font-medium">${tappa.esperienza_culturale.arte.opera}</span>
                            </div>
                            <div>
                                <span class="text-[#d4af77]">Musica</span><br>
                                <span class="font-medium">${tappa.esperienza_culturale.musica.brano_completo}</span>
                            </div>
                            <div>
                                <span class="text-[#d4af77]">Curiosità</span><br>
                                <span class="font-medium line-clamp-2">${tappa.curiosita || 'Scopri di più nel modale'}</span>
                            </div>
                        </div>
                    </div>
                </div>`
                
                container.innerHTML += cardHTML
            })
        }
        
        // Apri modale
        let currentTappaIndex = null
        
        function openModal(index) {
            currentTappaIndex = index
            const tappa = data.itinerari[0].tappe[index]
            const exp = tappa.esperienza_culturale
            
            document.getElementById('modal-tappa-title').innerHTML = `
                Tappa ${tappa.numero} — ${tappa.nome}
                <span class="text-base font-normal text-[#d4af77] ml-3">${tappa.orario_consigliato}</span>
            `
            const body = document.getElementById('modal-body')
            
            let html = `
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                <!-- ARTE -->
                <div class="space-y-4">
                    <div class="flex items-center gap-x-3 text-[#d4af77]"><i class="fa-solid fa-paintbrush text-2xl"></i><span class="uppercase font-semibold">Arte</span></div>
                    <div class="bg-[#2c2418] p-6 rounded-3xl">
                        <h4 class="text-2xl font-semibold">${exp.arte.opera}</h4>
                        <p class="text-sm text-[#d4af77]">${exp.arte.artista} • ${exp.arte.anno}</p>
                        <p class="mt-4 text-[#f5f0e8]/80">${exp.arte.descrizione_opera}</p>
                        ${exp.arte.url_immagine ? `<img src="${exp.arte.url_immagine}" class="mt-6 w-full rounded-2xl shadow-inner" alt="${exp.arte.opera}">` : ''}
                    </div>
                </div>
                
                <!-- MUSICA -->
                <div class="space-y-4">
                    <div class="flex items-center gap-x-3 text-[#d4af77]"><i class="fa-solid fa-music text-2xl"></i><span class="uppercase font-semibold">Musica</span></div>
                    <div class="bg-[#2c2418] p-6 rounded-3xl">
                        <h4 class="text-xl">${exp.musica.brano_completo}</h4>
                        <p class="text-[#d4af77]">${exp.musica.compositore}</p>
                        <a href="${exp.musica.spotify_url}" target="_blank" class="mt-6 inline-flex items-center px-6 py-3 bg-[#1a1814] rounded-3xl text-[#d4af77] text-sm">
                            <i class="fa-brands fa-spotify mr-2"></i> Ascolta su Spotify
                        </a>
                        <p class="text-xs mt-4 text-[#d4af77]/70">${exp.musica.note_ascolto || ''}</p>
                    </div>
                </div>
                
                <!-- Letteratura -->
                ${exp.letteratura ? `
                <div class="space-y-4 md:col-span-2">
                    <div class="flex items-center gap-x-3 text-[#d4af77]"><i class="fa-solid fa-book text-2xl"></i><span class="uppercase font-semibold">Letteratura</span></div>
                    <div class="bg-[#2c2418] p-6 rounded-3xl italic text-lg">"${exp.letteratura.citazione}"</div>
                    <div class="text-right text-sm">${exp.letteratura.autore}</div>
                </div>` : ''}
                
                <!-- Atmosfera -->
                ${exp.atmosfera ? `
                <div class="md:col-span-2 grid grid-cols-3 gap-6">
                    <div class="bg-[#2c2418] p-6 rounded-3xl text-center">
                        <i class="fa-solid fa-sun text-4xl mb-3"></i>
                        <div class="text-xs">Luce</div>
                        <div>${exp.atmosfera.luce}</div>
                    </div>
                    <div class="bg-[#2c2418] p-6 rounded-3xl text-center">
                        <i class="fa-solid fa-camera text-4xl mb-3"></i>
                        <div class="text-xs">Foto tip</div>
                        <div class="text-sm">${exp.atmosfera.consiglio_fotografico}</div>
                    </div>
                    <div class="bg-[#2c2418] p-6 rounded-3xl text-center">
                        <i class="fa-solid fa-heart text-4xl mb-3"></i>
                        <div class="text-xs">Emozione</div>
                        <div>${exp.atmosfera.emozione_target || 'Meraviglia'}</div>
                    </div>
                </div>` : ''}
                
                <!-- Storia & Curiosità -->
                <div class="md:col-span-2 mt-8 pt-8 border-t border-[#d4af77]/10">
                    <h5 class="text-[#d4af77] text-sm mb-3">STORIA</h5>
                    <p class="text-[#f5f0e8]/80">${tappa.storia}</p>
                    <h5 class="text-[#d4af77] text-sm mt-8 mb-3">CURIOSITÀ</h5>
                    <p class="text-[#f5f0e8]/80">${tappa.curiosita}</p>
                </div>
            </div>`
            
            body.innerHTML = html
            document.getElementById('modal-backdrop').classList.remove('hidden')
            document.getElementById('modal-backdrop').classList.add('flex')
        }
        
        function hideModal() {
            const modal = document.getElementById('modal-backdrop')
            modal.classList.add('hidden')
            modal.classList.remove('flex')
        }
        
        // Bottone "Inizia il percorso"
        function startJourney() {
            document.getElementById('tappe').scrollIntoView({ behavior: 'smooth' })
        }
        
        // Init
        window.onload = function() {
            initializeTailwind().config()
            renderTappe()
            
            console.log('%c✅ Itinerario Michelangelo caricato con successo su CodePen!', 'background:#d4af77;color:#1a1814;padding:4px 8px;font-size:13px;border-radius:4px')
        }
    </script>
</body>
</html>
