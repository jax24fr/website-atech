# Guide : Ajouter & organiser les photos de réalisations

## Structure du dossier

Organise tes photos **par réalisation**. Chaque réalisation a son propre dossier :

```
assets/images/
├── century21-rouen/
│   ├── century21-rouen-01.jpg    ← photo principale (affichée en grand)
│   ├── century21-rouen-02.jpg    ← détail ou chantier
│   └── century21-rouen-03.jpg    ← après/finitions
├── century21-bureaux/
│   ├── century21-bureaux-01.jpg
│   └── century21-bureaux-02.jpg
├── pharmacie-noisy/
│   ├── pharmacie-noisy-01.jpg
│   ├── pharmacie-noisy-02.jpg
│   ├── pharmacie-noisy-03.jpg
│   └── pharmacie-noisy-04.jpg
├── intermarche-somain/
│   ├── intermarche-somain-01.jpg
│   ├── intermarche-somain-02.jpg
│   └── intermarche-somain-03.jpg
├── ccv-henin/
│   ├── ccv-henin-01.jpg
│   └── ccv-henin-02.jpg
└── lidl-mesnil/
    ├── lidl-mesnil-01.jpg
    └── lidl-mesnil-02.jpg
```

---

## Nommage des photos

### Format
```
[nom-court-realisation]-[numero].jpg
```

### Règles
- **Nom court** : reprendre le nom du projet (ex. `century21-rouen`, `pharmacie-noisy`)
- **Numérotation** : `01`, `02`, `03`, etc. (avec zéro devant)
- **Format** : JPG (compressé, rapide)
- **Ordre** : 
  - `01` = photo principale / vue générale (celle affichée en grand par défaut)
  - `02` = détail / pendant chantier
  - `03` = après / finitions
  - `04+` = autres vues / détails complémentaires

### Exemples
```
century21-rouen-01.jpg        ✓ bon
century21-rouen-detail.jpg    ✗ mauvais (pas de numéro)
c21_rouen_1.jpg               ✗ mauvais (underscore, sans zéro)
century21rouen01.jpg          ✗ mauvais (pas de tiret)
```

---

## Comment ajouter une réalisation dans le HTML

### Étape 1 : Créer le dossier et ajouter les photos

```
assets/images/mon-projet/
├── mon-projet-01.jpg
├── mon-projet-02.jpg
└── mon-projet-03.jpg
```

### Étape 2 : Modifier le HTML (projets.html)

Chaque réalisation a ce bloc :
```html
<div class="project-card" data-category="agence"
     data-images="assets/images/mon-projet/mon-projet-01.jpg, assets/images/mon-projet/mon-projet-02.jpg, assets/images/mon-projet/mon-projet-03.jpg">
  <div class="aspect-[4/3] overflow-hidden relative bg-gris-clair cursor-pointer main-image-wrap">
    <img class="main-img w-full h-full object-cover transition-all duration-500" alt="Description pour l'accessibilité"/>
  </div>
  <div class="thumbs-row flex gap-1.5 mt-1.5"></div>
  <div class="mt-3">
    <p class="text-xs text-gris-moyen font-medium uppercase tracking-wide">CATEGORIE · VILLE · Client : NOM</p>
    <h3 class="text-base font-bold text-anthracite mt-1">Titre du projet</h3>
    <p class="text-acier text-sm mt-1.5">Description du projet...</p>
  </div>
</div>
```

**Points clés :**
- `data-category` : `agence`, `boutique`, ou `gms` (pour les filtres)
- `data-images` : liste des photos, séparées par des **virgules + espace**
- Les chemins commencent par `assets/images/`
- La première photo (avant la virgule) s'affiche en grand par défaut
- Les miniatures sont générées automatiquement s'il y a 2+ photos

### Étape 3 : Les miniatures s'affichent seules

Une fois que tu as 2+ photos dans `data-images`, les miniatures apparaissent automatiquement sous la grande photo. Clic sur une miniature = met à jour la grande image.

---

## Exemple complet

Pour la Pharmacie Noisy (4 photos) :

```html
<div class="project-card" data-category="boutique"
     data-images="assets/images/pharmacie-noisy/pharmacie-noisy-01.jpg, assets/images/pharmacie-noisy/pharmacie-noisy-02.jpg, assets/images/pharmacie-noisy/pharmacie-noisy-03.jpg, assets/images/pharmacie-noisy/pharmacie-noisy-04.jpg">
  <div class="aspect-[4/3] overflow-hidden relative bg-gris-clair cursor-pointer main-image-wrap">
    <img class="main-img w-full h-full object-cover transition-all duration-500" alt="Agencement pharmacie Noisy-le-Grand — comptoirs et linéaires"/>
  </div>
  <div class="thumbs-row flex gap-1.5 mt-1.5"></div>
  <div class="mt-3">
    <p class="text-xs text-gris-moyen font-medium uppercase tracking-wide">Boutique · Noisy-le-Grand · Client : HMY</p>
    <h3 class="text-base font-bold text-anthracite mt-1">Pharmacie — Noisy-le-Grand</h3>
    <p class="text-acier text-sm mt-1.5">Agencement complet d'une officine. Comptoirs de dispensation, linéaires parapharmacie bois et métal, espace conseil.</p>
  </div>
</div>
```

---

## Fonctionnalités auto

Une fois que tu mets à jour `data-images` :

✅ **Première photo** affichée en grand automatiquement  
✅ **Miniatures** générées automatiquement (si 2+ photos)  
✅ **Clic sur miniature** = affiche la photo en grand  
✅ **Clic sur la grande photo** = ouvre lightbox plein écran  
✅ **Flèches clavier** (← →) pour naviguer dans la lightbox  
✅ **Compteur** (1/4, 2/4, etc.) en bas à droite de la lightbox  

---

## Checklist avant de livrer

- [ ] Dossiers créés pour chaque réalisation
- [ ] Photos renommées avec le bon format (`nom-01.jpg`, `nom-02.jpg`, etc.)
- [ ] HTML mis à jour avec les bons chemins dans `data-images`
- [ ] Catégories correctes (agence / boutique / gms)
- [ ] Descriptions mises à jour
- [ ] Première photo de chaque réalisation est la meilleure / la plus représentative
- [ ] Photos compressées (JPG, max 1-2 Mo par photo)

---

**Questions ?** Regarde le bloc `<!-- Projet 3 — Pharmacie Noisy -->` dans `projets.html` pour un exemple complet avec 4 photos.
