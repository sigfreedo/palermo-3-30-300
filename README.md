# 🌳 Palermo 3-30-300

**Analisi sull'accessibilità del verde urbano nella città di Palermo secondo la regola 3-30-300**

Strumento interattivo per verificare se hai accesso a uno spazio verde pubblico entro 300 metri dalla tua abitazione, secondo lo standard dell'Organizzazione Mondiale della Sanità (WHO/EEA).

Il nome del progetto richiama la regola **3-30-300** per città verdi e vivibili:
- **3** alberi visibili da ogni abitazione
- **30%** di copertura arborea per quartiere  
- **300 metri** di distanza massima da spazi verdi pubblici

🔗 **[Prova l'applicazione online →](https://sigfreedo.github.io/palermo-3-30-300/verde_palermo_simple.html)**

---

## 📊 Contesto

L'accesso al verde urbano è un indicatore fondamentale di equità urbana. L'OMS raccomanda che almeno il **50% della popolazione** abbia accesso a spazi verdi entro **300 metri** dalla propria abitazione.

### Risultati per Palermo (approccio conservativo - solo verde pubblico certificato):

| Dataset | Copertura | Popolazione coperta | Spazi verdi | Area totale |
|---------|-----------|---------------------|-------------|-------------|
| **OpenStreetMap** | **38.70%** | 245.888 abitanti | 118 spazi | 4.31 km² |
| **Copernicus (14110)** | **48.43%** | 307.767 abitanti | 181 aree | 4.03 km² |

**📌 Conclusione:** Con entrambi i dataset, **oltre la metà della popolazione palermitana è svantaggiata** nell'accesso al verde pubblico.

---

## 🎯 Funzionalità

- ✅ **Autocompletamento indirizzi** - Cerca il tuo indirizzo con suggerimenti in tempo reale
- ✅ **Geolocalizzazione** - Usa la tua posizione GPS corrente
- ✅ **Analisi immediata** - Scopri se sei "fortunato" o "svantaggiato"
- ✅ **Due dataset** - Confronta OpenStreetMap e Copernicus Urban Atlas
- ✅ **Informazioni qualitative** - Dimensione e tipo dello spazio verde più vicino

---

## 🚀 Utilizzo online

Apri semplicemente: **https://sigfreedo.github.io/palermo-3-30-300/verde_palermo_simple.html**

*(Nessuna installazione richiesta!)*

---

## 💻 Sviluppo locale

Se vuoi modificare o testare localmente:

### Prerequisiti
- Python 3 (per server locale)

### Setup

1. **Clona il repository:**
   ```bash
   git clone https://github.com/sigfreedo/palermo-3-30-300.git
   cd palermo-3-30-300
   ```

2. **Avvia il server locale:**
   
   **Windows:**
   ```bash
   AVVIA_SERVER.bat
   ```
   
   **Mac/Linux:**
   ```bash
   ./avvia_server.sh
   ```
   
   **Oppure manualmente:**
   ```bash
   python -m http.server 8000
   ```

3. **Apri nel browser:**
   ```
   http://localhost:8000/verde_palermo_simple.html
   ```

---

## 📁 Struttura progetto

```
palermo-3-30-300/
├── verde_palermo_simple.html       # Applicazione web
├── index.html                      # Redirect automatico
│
├── osm_verde_palermo.geojson       # Dataset OpenStreetMap (118 spazi)
├── copernicus_verde_palermo.geojson # Dataset Copernicus (181 aree)
├── sezioni_censimento_palermo.geojson # Sezioni censuarie ISTAT 2021 (3.600 sezioni)
│
├── README.md                        # Questo file
├── LICENSE                          # Licenza MIT
├── .gitignore                       # Esclusioni Git
│
├── AVVIA_SERVER.bat                # Script Windows
└── avvia_server.sh                 # Script Mac/Linux
```

---

## 📊 Dataset

### Spazi verdi

**osm_verde_palermo.geojson**
- Fonte: OpenStreetMap
- Categorie: A (parchi/giardini) + B (aree ricreative)
- Spazi: 118
- Area totale: 4.31 km²
- Filtro: ≥2.000 m²
- Campi: `geometry`, `area_sqm`, `size_label`, `name`

**copernicus_verde_palermo.geojson**
- Fonte: Copernicus Urban Atlas 2018
- Categoria: 14110 (Public access - verde pubblico certificato)
- Aree: 181
- Area totale: 4.03 km²
- Filtro: ≥2.000 m²
- Campi: `geometry`, `area_sqm`, `size_label`, `name`

### Popolazione

**sezioni_censimento_palermo.geojson**
- Fonte: ISTAT Censimento 2021
- Sezioni: 3.600
- Popolazione totale: 635.439 abitanti
- Formato: GeoJSON (WGS84 - EPSG:4326)
- Campi: `SEZ2021` (ID sezione), `POP21` (popolazione), `geometry`
- Utilizzo: Calcolo copertura popolazione, analisi per quartiere, statistiche zonali
- Note: File preparato per future estensioni (mappe di copertura, statistiche per zona, ecc.)

---

## 📖 Metodologia

### Dataset utilizzati

**1. OpenStreetMap (OSM)**
- Categorie A (parchi e giardini) e B (aree ricreative)
- Filtro: ≥2.000 m²
- 118 spazi verdi mappati

**2. Copernicus Urban Atlas**
- Solo categoria 14110 (Public access - verde pubblico certificato)
- Filtro: ≥2.000 m²
- 181 aree verdi mappate

**3. ISTAT Censimento 2021**
- 3.600 sezioni censuarie
- Popolazione totale: ~635.439 abitanti

### Calcolo copertura

Metodo: **Area-weighted interpolation**

1. Buffer circolare di 300m attorno a ogni spazio verde
2. Per ogni sezione censuaria:
   - Calcola intersezione con area coperta
   - Frazione di area = area_intersezione / area_sezione
   - Popolazione coperta = popolazione_sezione × frazione
3. Somma popolazione coperta totale

### Standard di riferimento

- **WHO/EEA:** 50% popolazione entro 300m da verde pubblico
- **Minimum Mapping Unit:** 2.000 m² (allineato con Copernicus)

---

## 🛠️ Tecnologie

- **Frontend:** HTML5, CSS3, JavaScript vanilla
- **Geocoding:** Nominatim API (OpenStreetMap)
- **Analisi spaziale:** Turf.js
- **Mappe:** Leaflet.js
- **Coordinate:** WGS84 (EPSG:4326)

---

## 📊 Dati e fonti

- **OpenStreetMap:** © OpenStreetMap contributors, [ODbL](https://www.openstreetmap.org/copyright)
- **Copernicus Urban Atlas 2018:** European Environment Agency (EEA)
- **ISTAT Basi Territoriali 2021:** Istituto Nazionale di Statistica
- **Standard WHO:** [Urban green spaces](https://www.who.int/europe/activities/supporting-countries-to-implement-the-parma-declaration-on-environment-and-health/activities-to-improve-the-urban-environment-for-health-and-sustainability)

---

## 🤝 Contribuire

Questo è un progetto civico aperto. Contributi benvenuti!

### Come contribuire:
1. Fork del repository
2. Crea un branch per la tua feature
3. Commit delle modifiche
4. Push al branch
5. Apri una Pull Request

### Idee per miglioramenti:
- [ ] Aggiungere percorsi pedonali reali (routing API)
- [ ] Visualizzazione su mappa interattiva
- [ ] **Analisi per quartiere** (usando `sezioni_censimento_palermo.geojson`)
- [ ] **Mappa copertura zonale** (colorare sezioni per % copertura)
- [ ] **Statistiche per zona** (quanti abitanti coperti per quartiere)
- [ ] Estensione ad altre città italiane
- [ ] API per integrazioni
- [ ] **Calcolo indicatore 3 e 30** (alberi visibili, copertura arborea)

---

## 📄 Licenza

Dati sotto le rispettive licenze (ODbL per OSM, EEA per Copernicus).

Codice applicazione: specificare licenza (es: MIT)

---

## 👤 Autore

**Domenico** - [@sigfreedo](https://github.com/sigfreedo)

Analisi civica urbana e accesso equo agli spazi verdi

---

## 🙏 Ringraziamenti

- Comunità OpenStreetMap
- European Environment Agency (Copernicus Urban Atlas)
- ISTAT
- Tutti i contributori

---

## 📧 Contatti

Per domande, suggerimenti o collaborazioni:
- GitHub Issues: [apri un issue](https://github.com/sigfreedo/palermo-3-30-300/issues)
- GitHub: [@sigfreedo](https://github.com/sigfreedo)

---

**⚠️ Nota:** Questo strumento ha finalità informative e di sensibilizzazione civica. I dati sono aggiornati al 2021-2023 e potrebbero non riflettere cambiamenti recenti.

---

**#Palermo330300 #VerdeUrbano #CivicTech #Palermo #OpenData #GIS #UrbanPlanning #WHO #3-30-300**
