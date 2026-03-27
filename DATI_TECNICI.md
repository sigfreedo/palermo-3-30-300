# 📊 Documentazione Tecnica - Dati Sezioni Censuarie

## File: sezioni_censimento_palermo.geojson

### Descrizione
Dataset delle sezioni di censimento ISTAT 2021 per il comune di Palermo, ottimizzato per analisi GIS e visualizzazioni web.

---

## 📋 Specifiche Tecniche

**Formato:** GeoJSON  
**Sistema di coordinate:** WGS84 (EPSG:4326)  
**Dimensione file:** ~2.8 MB  
**Numero sezioni:** 3.600  
**Popolazione totale:** 635.439 abitanti  

### Campi disponibili

| Campo | Tipo | Descrizione |
|-------|------|-------------|
| `SEZ2021` | string | Codice identificativo sezione censuaria |
| `POP21` | integer | Popolazione residente al Censimento 2021 |
| `geometry` | Polygon | Geometria della sezione (semplificata) |

---

## 🎯 Casi d'uso

### 1. Analisi di copertura per sezione

Calcola quanta popolazione di ogni sezione è coperta dal verde:

```javascript
// Carica i dati
const sezioni = await fetch('sezioni_censimento_palermo.geojson').then(r => r.json());
const verdeBuffers = bufferDi300m; // Buffer 300m attorno agli spazi verdi

// Per ogni sezione
sezioni.features.forEach(sezione => {
    const geom = turf.polygon(sezione.geometry.coordinates);
    const intersection = turf.intersect(geom, verdeBuffers);
    
    if (intersection) {
        const frazione = intersection.area / geom.area;
        const popCoperta = sezione.properties.POP21 * frazione;
        console.log(`Sezione ${sezione.properties.SEZ2021}: ${popCoperta.toFixed(0)} abitanti coperti`);
    }
});
```

### 2. Mappa coropletica di copertura

Visualizza le sezioni colorate per percentuale di copertura:

```javascript
// Calcola % copertura per ogni sezione
const sezioniConCopertura = sezioni.features.map(s => {
    const percentualeCoperta = calcolaCopertura(s); // 0-100
    return {
        ...s,
        properties: {
            ...s.properties,
            copertura_pct: percentualeCoperta
        }
    };
});

// Visualizza su mappa Leaflet con scala colori
L.geoJSON(sezioniConCopertura, {
    style: (feature) => {
        const pct = feature.properties.copertura_pct;
        return {
            fillColor: getColor(pct), // Rosso (0%) → Verde (100%)
            fillOpacity: 0.6,
            weight: 1
        };
    }
}).addTo(map);
```

### 3. Statistiche per zona

Aggrega dati per quartiere o circoscrizione:

```javascript
// Raggruppa sezioni per zona
const quartieri = {
    'Centro Storico': ['190740001001', '190740001002', ...],
    'Mondello': ['190740002001', '190740002002', ...],
    // ...
};

// Calcola statistiche per quartiere
Object.entries(quartieri).forEach(([nome, codiciSezioni]) => {
    const sezioniQuartiere = sezioni.features.filter(s => 
        codiciSezioni.includes(s.properties.SEZ2021)
    );
    
    const popTotale = sezioniQuartiere.reduce((sum, s) => 
        sum + s.properties.POP21, 0
    );
    
    const popCoperta = calcolaPopCoperta(sezioniQuartiere);
    const percentuale = (popCoperta / popTotale * 100).toFixed(1);
    
    console.log(`${nome}: ${percentuale}% popolazione coperta`);
});
```

### 4. Identifica zone critiche

Trova le sezioni con più popolazione svantaggiata:

```javascript
// Calcola abitanti svantaggiati per sezione
const sezioniCritiche = sezioni.features
    .map(s => ({
        id: s.properties.SEZ2021,
        popolazione: s.properties.POP21,
        copertura: calcolaCopertura(s),
        svantaggiati: s.properties.POP21 * (1 - calcolaCopertura(s) / 100)
    }))
    .sort((a, b) => b.svantaggiati - a.svantaggiati)
    .slice(0, 20); // Top 20 sezioni più critiche

console.table(sezioniCritiche);
```

---

## 🔧 Integrazione nell'app web

### Aggiungere visualizzazione per zona

```html
<!-- Aggiungi select per scegliere quartiere -->
<select id="quartiereSelect">
    <option value="">Tutta Palermo</option>
    <option value="centro">Centro Storico</option>
    <option value="mondello">Mondello</option>
    <!-- ... -->
</select>

<script>
// Carica sezioni
const sezioni = await fetch('sezioni_censimento_palermo.geojson').then(r => r.json());

// Quando utente seleziona quartiere
document.getElementById('quartiereSelect').addEventListener('change', (e) => {
    const quartiere = e.target.value;
    if (quartiere) {
        const stats = calcolaStatisticheQuartiere(quartiere, sezioni);
        mostraStatistiche(stats);
    }
});
</script>
```

---

## 📈 Analisi possibili

### Indici calcolabili

**Copertura territoriale:**
- % popolazione con accesso al verde (≤300m)
- % popolazione senza accesso (>300m)
- Abitanti coperti/svantaggiati per zona

**Equità spaziale:**
- Indice di Gini per distribuzione verde
- Disparità tra quartieri (max/min copertura)
- Correlazione densità-copertura

**Priorità interventi:**
- Sezioni con più abitanti svantaggiati
- Zone ad alta densità senza verde vicino
- Aree sotto soglia WHO (50%)

---

## 🗺️ Visualizzazioni suggerite

### Mappa 1: Copertura per sezione
- Scala colore: Rosso (0%) → Giallo (50%) → Verde (100%)
- Tooltip: ID sezione, popolazione, % copertura
- Layer toggle: OSM vs Copernicus

### Mappa 2: Abitanti svantaggiati
- Dimensione cerchio proporzionale a abitanti senza accesso
- Colore: intensità del problema
- Click: dettagli sezione

### Mappa 3: Priorità interventi
- Evidenzia top 20 sezioni critiche
- Sovrapposizione: spazi verdi esistenti
- Suggerimenti: dove serve nuovo verde

---

## 💾 Note tecniche

### Semplificazione geometrie

Le geometrie sono state semplificate (tolerance 0.00001°) per ridurre la dimensione file del 30% mantenendo precisione adeguata per visualizzazioni web (errore <1 metro).

### Sistema di coordinate

Il file originale ISTAT dichiarava EPSG:4326 ma era in realtà EPSG:32632 (UTM Zone 32N). Questo file è stato corretto e riproiettato correttamente in WGS84.

### Ottimizzazioni

Per caricare più velocemente:
- Usa solo le sezioni necessarie (filtra per zona)
- Carica geometrie solo quando serve visualizzare
- Cache calcoli di copertura
- Usa web workers per calcoli pesanti

---

## 🔗 Risorse

- [ISTAT Basi territoriali](https://www.istat.it/it/archivio/222527)
- [Turf.js](https://turfjs.org/) - Libreria analisi spaziale JavaScript
- [Leaflet](https://leafletjs.com/) - Libreria mappe interattive

---

## 📄 Licenza

I dati ISTAT sono distribuiti con licenza CC BY 4.0.  
Questo file derivato mantiene la stessa licenza.

© ISTAT - Istituto Nazionale di Statistica  
Elaborazione: Palermo 3-30-300 Project
