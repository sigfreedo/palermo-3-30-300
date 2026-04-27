# Palermo 3-30-300

🇮🇹 [Versione Italiana](#italiano) | 🇬🇧 [English Version](#english)

---

<a name="italiano"></a>
## 🇮🇹 Italiano

**Valutazione dell'accessibilità degli spazi verdi urbani a Palermo secondo il framework scientifico 3-30-300**

[![Applicazione](https://img.shields.io/badge/applicazione-online-brightgreen)](https://sigfreedo.github.io/palermo-3-30-300/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE.txt)
[![Data: Open](https://img.shields.io/badge/data-open-orange)](https://sigfreedo.github.io/palermo-3-30-300/dati.html)

### 📊 Il Framework 3-30-300

Il **3-30-300** è un framework evidence-based sviluppato da Cecil Konijnendijk (2023) che stabilisce tre parametri misurabili per città più verdi e sane:

- **3 alberi** visibili dalla propria finestra
- **30% di copertura arborea** nell'area urbana  
- **300 metri** di distanza massima da uno spazio verde di qualità

### 🎯 Risultati per Palermo

#### Regola dei 300 metri (Accessibilità)

L'analisi è stata condotta su **due dataset distinti** per confrontare le mappature degli spazi verdi:

- **OpenStreetMap:** 38,76% della popolazione coperta (246.293 abitanti)
- **Copernicus:** 40,06% della popolazione coperta (254.533 abitanti)
- **118 spazi verdi** da OSM | **129 spazi** da Copernicus

#### Regola del 30% (Copertura arborea)

Analisi basata su **Copernicus Tree Cover Density 2023**:

- Copertura media: **12,1%** (ben sotto il 30%)
- **Nessuno dei 25 quartieri** raggiunge la soglia ottimale
- Forte disparità territoriale tra le aree della città

#### Regola dei 3 alberi (Visibilità)
- Dati raccolti tramite crowdsourcing cittadino
- Dashboard con statistiche aggregate in tempo reale

→ **[Vedi tutti i dati e le mappe](https://sigfreedo.github.io/palermo-3-30-300/dati.html)**

### 🔬 Metodologia

Il progetto utilizza:
- **Dataset aperti:** OpenStreetMap, Copernicus Urban Atlas 2021, ISTAT 2021
- **Algoritmi replicabili:** Area-Weighted Interpolation per il calcolo di copertura
- **Tecnologie open source:** Leaflet.js, Chart.js, Python/GeoPandas

Ogni scelta metodologica è documentata con riferimenti scientifici e codice sorgente disponibile.

→ **[Leggi la metodologia completa](https://sigfreedo.github.io/palermo-3-30-300/metodologia.html)**

### 📁 Struttura del Progetto

```
palermo-3-30-300/
├── index.html, index_en.html        # Homepage (IT/EN)
├── dati.html, dati_en.html           # Mappe e dataset (IT/EN)
├── metodologia.html, metodologia_en.html  # Documentazione (IT/EN)
├── og-image.png                      # Immagine social sharing
├── dataset/                          # Dati geografici e statistici
│   ├── osm_verde_palermo.geojson
│   ├── copernicus_verde_palermo.geojson
│   ├── quartieri_dati_completi.geojson
│   ├── palermo_tree_canopy_2023.tif
│   └── sezioni_censimento_palermo.geojson
├── archive/                          # Prototipi e versioni precedenti
│   └── verde_palermo_simple.html
├── README.md                         # Questo file
└── LICENSE.txt                       # Licenza MIT
```

### 🎓 Riferimenti Scientifici

- Konijnendijk, C. C. (2023). *Evidence-based guidelines for greener, healthier, more resilient neighbourhoods: Introducing the 3-30-300 rule*. Journal of Forestry Research, 34(5), 1131-1146. [DOI](https://doi.org/10.1007/s11676-022-01523-z)

Ulteriori riferimenti disponibili nella [pagina metodologia](https://sigfreedo.github.io/palermo-3-30-300/metodologia.html).

### 🗺️ Dataset e Fonti

Tutti i dataset utilizzati sono aperti e accessibili:

| Dataset | Fonte | Licenza |
|---------|-------|---------|
| Spazi verdi | OpenStreetMap | ODbL 1.0 |
| Land cover | Copernicus Urban Atlas 2021 | CC BY 4.0 |
| Copertura arborea | Copernicus Tree Cover Density 2023 | CC BY 4.0 |
| Popolazione | ISTAT Censimento 2021 | Open Data |

→ **[Scarica i dataset](https://sigfreedo.github.io/palermo-3-30-300/dati.html)**

### 🛠️ Tecnologie

- **Frontend:** HTML5, CSS3, JavaScript
- **Mappe:** Leaflet.js
- **Grafici:** Chart.js
- **Analisi dati:** Python, GeoPandas, Rasterio
- **Hosting:** GitHub Pages

### 📄 Licenza

Questo progetto è rilasciato sotto licenza **MIT** - vedi il file [LICENSE.txt](LICENSE.txt) per i dettagli.

I dataset utilizzati mantengono le loro licenze originali (ODbL 1.0 per OSM, CC BY 4.0 per Copernicus).

### 🤝 Contributi

Questo è un progetto open source e indipendente. Feedback, segnalazioni e contributi sono benvenuti!

- 📧 Email: domenico.schillaci@gmail.com
- 💼 LinkedIn: [Domenico Schillaci](https://www.linkedin.com/in/domenicoschillaci/)
- 🔗 GitHub: [sigfreedo](https://github.com/sigfreedo)

### 🌳 Perché questo progetto?

Le città più verdi sono città più sane, resilienti e vivibili. Questo strumento nasce per **Palermo** con l'obiettivo di mettere a disposizione di cittadini, amministratori e ricercatori **dati aperti** e **metodologie replicabili** per misurare e migliorare l'accessibilità del verde urbano.

Il framework 3-30-300 offre parametri chiari e basati sull'evidenza scientifica per guidare politiche di pianificazione urbana orientate al benessere pubblico.

**Il progetto è completamente scalabile:** la metodologia documentata e il codice open source permettono di replicare l'analisi per qualsiasi città italiana o europea, utilizzando gli stessi dataset aperti (OpenStreetMap, Copernicus, ISTAT/Eurostat).

---

**Esplora l'applicazione:** [palermo-3-30-300](https://sigfreedo.github.io/palermo-3-30-300/)

---
---

<a name="english"></a>
## 🇬🇧 English

**Assessment of urban green spaces accessibility in Palermo according to the 3-30-300 scientific framework**

[![Application](https://img.shields.io/badge/application-online-brightgreen)](https://sigfreedo.github.io/palermo-3-30-300/index_en.html)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE.txt)
[![Data: Open](https://img.shields.io/badge/data-open-orange)](https://sigfreedo.github.io/palermo-3-30-300/dati_en.html)

### 📊 The 3-30-300 Framework

The **3-30-300** is an evidence-based framework developed by Cecil Konijnendijk (2023) that establishes three measurable parameters for greener, healthier cities:

- **3 trees** visible from your window
- **30% tree canopy coverage** in the urban area
- **300 meters** maximum distance from a quality green space

### 🎯 Results for Palermo

#### 300-Meter Rule (Accessibility)

The analysis was conducted on **two distinct datasets** to compare green space mappings:

- **OpenStreetMap:** 38.76% of population covered (246,293 residents)
- **Copernicus:** 40.06% of population covered (254,533 residents)
- **118 green spaces** from OSM | **129 spaces** from Copernicus

#### 30% Rule (Tree Canopy Coverage)

Analysis based on **Copernicus Tree Cover Density 2023**:

- Average coverage: **12.1%** (well below the 30% threshold)
- **None of the 25 neighborhoods** reaches the optimal threshold
- Strong territorial disparity across city areas

#### 3-Tree Rule (Visibility)
- Data collected through citizen crowdsourcing
- Dashboard with real-time aggregated statistics

→ **[View all data and maps](https://sigfreedo.github.io/palermo-3-30-300/dati_en.html)**

### 🔬 Methodology

The project uses:
- **Open datasets:** OpenStreetMap, Copernicus Urban Atlas 2021, ISTAT 2021
- **Replicable algorithms:** Area-Weighted Interpolation for coverage calculation
- **Open source technologies:** Leaflet.js, Chart.js, Python/GeoPandas

Every methodological choice is documented with scientific references and available source code.

→ **[Read the complete methodology](https://sigfreedo.github.io/palermo-3-30-300/metodologia_en.html)**

### 📁 Project Structure

```
palermo-3-30-300/
├── index.html, index_en.html        # Homepage (IT/EN)
├── dati.html, dati_en.html           # Maps and datasets (IT/EN)
├── metodologia.html, metodologia_en.html  # Documentation (IT/EN)
├── og-image.png                      # Social sharing image
├── dataset/                          # Geographic and statistical data
│   ├── osm_verde_palermo.geojson
│   ├── copernicus_verde_palermo.geojson
│   ├── quartieri_dati_completi.geojson
│   ├── palermo_tree_canopy_2023.tif
│   └── sezioni_censimento_palermo.geojson
├── archive/                          # Prototypes and previous versions
│   └── verde_palermo_simple.html
├── README.md                         # This file
└── LICENSE.txt                       # MIT License
```

### 🎓 Scientific References

- Konijnendijk, C. C. (2023). *Evidence-based guidelines for greener, healthier, more resilient neighbourhoods: Introducing the 3-30-300 rule*. Journal of Forestry Research, 34(5), 1131-1146. [DOI](https://doi.org/10.1007/s11676-022-01523-z)

Additional references available on the [methodology page](https://sigfreedo.github.io/palermo-3-30-300/metodologia_en.html).

### 🗺️ Datasets and Sources

All datasets used are open and accessible:

| Dataset | Source | License |
|---------|--------|---------|
| Green spaces | OpenStreetMap | ODbL 1.0 |
| Land cover | Copernicus Urban Atlas 2021 | CC BY 4.0 |
| Tree canopy coverage | Copernicus Tree Cover Density 2023 | CC BY 4.0 |
| Population | ISTAT Census 2021 | Open Data |

→ **[Download datasets](https://sigfreedo.github.io/palermo-3-30-300/dati_en.html)**

### 🛠️ Technologies

- **Frontend:** HTML5, CSS3, JavaScript
- **Maps:** Leaflet.js
- **Charts:** Chart.js
- **Data analysis:** Python, GeoPandas, Rasterio
- **Hosting:** GitHub Pages

### 📄 License

This project is released under the **MIT** license - see the [LICENSE.txt](LICENSE.txt) for details.

The datasets used maintain their original licenses (ODbL 1.0 for OSM, CC BY 4.0 for Copernicus).

### 🤝 Contributions

This is an open source and independent project. Feedback, reports, and contributions are welcome!

- 📧 Email: domenico.schillaci@gmail.com
- 💼 LinkedIn: [Domenico Schillaci](https://www.linkedin.com/in/domenicoschillaci/)
- 🔗 GitHub: [sigfreedo](https://github.com/sigfreedo)

### 🌳 Why this project?

Greener cities are healthier, more resilient, and more livable. This tool was created for **Palermo** with the goal of providing citizens, administrators, and researchers with **open data** and **replicable methodologies** to measure and improve urban green spaces accessibility.

The 3-30-300 framework offers clear, evidence-based parameters to guide urban planning policies oriented toward public well-being.

**The project is fully scalable:** the documented methodology and open source code allow replication of the analysis for any Italian or European city, using the same open datasets (OpenStreetMap, Copernicus, ISTAT/Eurostat).

---

**Explore the application:** [palermo-3-30-300](https://sigfreedo.github.io/palermo-3-30-300/index_en.html)
