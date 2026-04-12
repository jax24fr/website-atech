# A/TECH — Site Vitrine

Site vitrine pour **A/TECH**, expert en agencement commercial et tertiaire (boutiques, agences, bureaux, rénovation). Basé à Roubaix.

## Stack

- HTML statique
- Tailwind CSS (CDN)
- Typographies : Manrope + Work Sans (Google Fonts)
- Icônes : Material Symbols Outlined
- Aucun framework / build nécessaire

## Pages

| Page | Fichier | Description |
|---|---|---|
| Accueil | `index.html` | Landing page one-pager : Hero, Expertise, Réalisations, Approche, Engagements, À Propos, Stats, Contact |
| Projets | `projets.html` | Portfolio filtrable par catégorie (Boutique, Agence, Tertiaire, Rénovation) |
| Mentions légales | `mentions-legales.html` | Mentions légales + Politique de confidentialité RGPD |

## Déploiement (Portainer + Traefik)

### Option 1 — Git Repository (recommandé)

Dans Portainer : **Stacks > Add Stack > Repository**

- **Repository URL** : `https://github.com/jax24fr/website-atech`
- **Compose path** : `docker-compose.yml`
- **Automatic updates** : activer le GitOps polling (ex: toutes les 5 min)

Chaque `git push` mettra à jour le site automatiquement.

### Option 2 — Web editor

Copier le contenu de `docker-compose.yml` dans Portainer > Stacks > Add Stack > Web editor.

### Accès

- URL : `https://atech.jaxserv.ovh`
- SSL : automatique via Let's Encrypt (Traefik)

## Développement local

Ouvrir `index.html` dans un navigateur, ou :

```bash
# Avec Python
python -m http.server 8080

# Avec Node
npx serve .
```

## Licence

© 2025 A/TECH. Tous droits réservés.
