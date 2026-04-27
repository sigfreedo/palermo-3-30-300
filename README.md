# Palermo 3-30-300

**Valutazione dell'accessibilità degli spazi verdi urbani a Palermo secondo il framework scientifico 3-30-300**

[![Applicazione](https://img.shields.io/badge/applicazione-online-brightgreen)](https://sigfreedo.github.io/palermo-3-30-300/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE.txt)
[![Data: Open](https://img.shields.io/badge/data-open-orange)](https://sigfreedo.github.io/palermo-3-30-300/dati.html)

---

## 📊 Il Framework 3-30-300

Il **3-30-300** è un framework evidence-based sviluppato da Cecil Konijnendijk (2023) che stabilisce tre parametri misurabili per città più verdi e sane:

- **3 alberi** visibili dalla propria finestra
- **30% di copertura arborea** nell'area urbana  
- **300 metri** di distanza massima da uno spazio verde di qualità

---

## 🎯 Risultati per Palermo

### Regola dei 300 metri (Accessibilità)

L'analisi è stata condotta su **due dataset distinti** per confrontare le mappature degli spazi verdi:

- **OpenStreetMap:** 38,76% della popolazione coperta (246.293 abitanti)
- **Copernicus:** 40,06% della popolazione coperta (254.533 abitanti)
- **118 spazi verdi** da OSM | **129 spazi** da Copernicus

### Regola del 30% (Copertura arborea)

Analisi basata su **Copernicus Tree Cover Density 2023**:

- Copertura media: **12,1%** (ben sotto il 30%)
- **Nessuno dei 25 quartieri** raggiunge la soglia ottimale
- Forte disparità territoriale tra le aree della città

### Regola dei 3 alberi (Visibilità)
- Dati raccolti tramite crowdsourcing cittadino
- Dashboard con statistiche aggregate in tempo reale

→ **[Vedi tutti i dati e le mappe](https://sigfreedo.github.io/palermo-3-30-300/dati.html)**

---

## 🔬 Metodologia

Il progetto utilizza:
- **Dataset aperti:** OpenStreetMap, Copernicus Urban Atlas 2021, ISTAT 2021
- **Algoritmi replicabili:** Area-Weighted Interpolation per il calcolo di copertura
- **Tecnologie open source:** Leaflet.js, Chart.js, Python/GeoPandas

Ogni scelta metodologica è documentata con riferimenti scientifici e codice sorgente disponibile.

→ **[Leggi la metodologia completa](https://sigfreedo.github.io/palermo-3-30-300/metodologia.html)**

---

## 📁 Struttura del Progetto

```
palermo-3-30-300/
├── index.html              # Homepage con dashboard
├── dati.html               # Mappe e dataset completi
├── metodologia.html        # Documentazione metodologica
├── og-image.jpg            # Immagine social sharing
├── dataset/                # Dati geografici e statistici
│   ├── osm_verde_palermo.geojson
│   ├── copernicus_verde_palermo.geojson
│   ├── quartieri_dati_completi.geojson
│   ├── palermo_tree_canopy_2023.tif
│   └── sezioni_censimento_palermo.geojson
├── archive/                # Prototipi e versioni precedenti
│   └── verde_palermo_simple.html
├── README.md               # Questo file
└── LICENSE.txt             # Licenza MIT
```

---

## 🎓 Riferimenti Scientifici

- Konijnendijk, C. C. (2023). *Evidence-based guidelines for greener, healthier, more resilient neighbourhoods: Introducing the 3-30-300 rule*. Journal of Forestry Research, 34(5), 1131-1146. [DOI](https://doi.org/10.1007/s11676-022-01523-z)

Ulteriori riferimenti disponibili nella [pagina metodologia](https://sigfreedo.github.io/palermo-3-30-300/metodologia.html).

---

## 🗺️ Dataset e Fonti

Tutti i dataset utilizzati sono aperti e accessibili:

| Dataset | Fonte | Licenza |
|---------|-------|---------|
| Spazi verdi | OpenStreetMap | ODbL 1.0 |
| Land cover | Copernicus Urban Atlas 2021 | CC BY 4.0 |
| Copertura arborea | Copernicus Tree Cover Density 2023 | CC BY 4.0 |
| Popolazione | ISTAT Censimento 2021 | Open Data |

→ **[Scarica i dataset](https://sigfreedo.github.io/palermo-3-30-300/dati.html)**

---

## 🛠️ Tecnologie

- **Frontend:** HTML5, CSS3, JavaScript
- **Mappe:** Leaflet.js
- **Grafici:** Chart.js
- **Analisi dati:** Python, GeoPandas, Rasterio
- **Hosting:** GitHub Pages

---

## 📄 Licenza

Questo progetto è rilasciato sotto licenza **MIT** - vedi il file [LICENSE.txt](LICENSE.txt) per i dettagli.

I dataset utilizzati mantengono le loro licenze originali (ODbL 1.0 per OSM, CC BY 4.0 per Copernicus).

---

## 🤝 Contributi

Questo è un progetto open source e indipendente. Feedback, segnalazioni e contributi sono benvenuti!

- 📧 Email: domenico.schillaci@gmail.com
- 💼 LinkedIn: [Domenico Schillaci](https://www.linkedin.com/in/domenicoschillaci/)
- 🔗 GitHub: [sigfreedo](https://github.com/sigfreedo)

---

## 🌳 Perché questo progetto?

Le città più verdi sono città più sane, resilienti e vivibili. Questo strumento nasce per **Palermo** con l'obiettivo di mettere a disposizione di cittadini, amministratori e ricercatori **dati aperti** e **metodologie replicabili** per misurare e migliorare l'accessibilità del verde urbano.

Il framework 3-30-300 offre parametri chiari e basati sull'evidenza scientifica per guidare politiche di pianificazione urbana orientate al benessere pubblico.

**Il progetto è completamente scalabile:** la metodologia documentata e il codice open source permettono di replicare l'analisi per qualsiasi città italiana o europea, utilizzando gli stessi dataset aperti (OpenStreetMap, Copernicus, ISTAT/Eurostat).

---

**Esplora l'applicazione:** [palermo-3-30-300](https://sigfreedo.github.io/palermo-3-30-300/)
