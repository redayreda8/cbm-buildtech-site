# Fix CBM BuildTech encoding - V5 ASCII safe
# A lancer dans le dossier du site, la ou il y a index.html et style.css

Write-Host "=== Fix CBM BuildTech V5 ASCII ===" -ForegroundColor Cyan

if (!(Test-Path "index.html") -or !(Test-Path "style.css")) {
  Write-Host "Erreur: lance ce script dans le dossier qui contient index.html et style.css." -ForegroundColor Red
  exit 1
}

New-Item -ItemType Directory -Force assets | Out-Null

@'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 92 92">
  <rect width="92" height="92" rx="18" fill="#07111D"/>
  <path d="M22 18v56M12 38h12M12 58h12M22 18l24-12M22 74l24 12" stroke="#F8FAFC" stroke-width="1.7" stroke-linecap="round" opacity=".88"/>
  <path d="M22 38l24-13M22 58l24-13M22 74l24-13" stroke="#F8FAFC" stroke-width="1.35" stroke-dasharray="5 7" opacity=".62"/>
  <circle cx="22" cy="38" r="3" fill="#07111D" stroke="#F8FAFC" stroke-width="2"/>
  <circle cx="22" cy="58" r="3" fill="#07111D" stroke="#F8FAFC" stroke-width="2"/>
  <circle cx="46" cy="8" r="3" fill="#07111D" stroke="#F8FAFC" stroke-width="2"/>
  <path d="M46 8v76" stroke="#F8FAFC" stroke-width="1.45" stroke-dasharray="6 8" opacity=".58"/>
  <path d="M46 10l27 16v24L46 65 29 55V31z" fill="#F8FAFC"/>
  <path d="M46 46l27-15v31L46 78z" fill="#0A1422"/>
  <path d="M46 45l27 16v24L46 92V67L34 60z" fill="#D6A041"/>
  <path d="M46 45l27 16v24L46 67z" fill="#F1C46B" opacity=".86"/>
</svg>
'@ | Set-Content -Encoding UTF8 assets\structura-logo.svg

@'
<!doctype html>
<html lang="fr">
  <head>
    <meta charset="UTF-8" />
    <title>CBM BuildTech | Digitalisation, innovation et solutions technologiques</title>

    <meta name="description" content="CBM BuildTech accompagne les organisations dans leur transformation digitale avec des solutions technologiques sur mesure : plateformes web, applications, automatisation, SaaS, data, intelligence artificielle et produits digitaux innovants.">
    <meta name="robots" content="index, follow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <meta property="og:title" content="CBM BuildTech | Solutions digitales et innovation technologique">
    <meta property="og:description" content="Une societe technologique qui concoit des solutions digitales sur mesure, des produits SaaS et des outils innovants pour accompagner la transformation des organisations.">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="CBM BuildTech">

    <meta name="theme-color" content="#020617">
    <link rel="stylesheet" href="./style.css" />
  </head>

  <body>
    <div class="splash" aria-hidden="true">
      <div class="splash-orbit"></div>
      <img src="./assets/cbm-logo.png" alt="" class="splash-logo" />
      <div class="splash-word">
        <strong>CBM BuildTech</strong>
        <span>Digital solutions company</span>
      </div>
      <div class="splash-loader"><span></span></div>
    </div>

    <header class="header">
      <nav class="nav">
        <a class="brand" href="#top" aria-label="CBM BuildTech">
          <img src="./assets/cbm-logo.png" alt="Logo CBM BuildTech" />
          <div>
            <strong>CBM BuildTech</strong>
            <span>Digital solutions company</span>
          </div>
        </a>

        <div class="nav-links">
          <a href="#expertise">Expertise</a>
          <a href="#products">Produits</a>
          <a href="#vision">Vision</a>
          <a class="contact-link" href="#contact">Contact</a>
        </div>
      </nav>
    </header>

    <main id="top">
      <section class="hero">
        <div class="hero-text">
          <span class="eyebrow">Digital transformation - Software - SaaS - Innovation</span>

          <h1>Nous concevons des solutions digitales pour transformer les idees en produits concrets.</h1>

          <p>
            CBM BuildTech accompagne les organisations dans leur transformation digitale en imaginant,
            developpant et deployant des solutions technologiques sur mesure. Notre approche combine
            strategie, design, developpement logiciel, automatisation et innovation produit.
          </p>

          <div class="hero-actions">
            <a class="btn primary" href="#expertise">Decouvrir notre expertise</a>
            <a class="btn secondary" href="#products">Voir nos produits</a>
          </div>
        </div>

        <aside class="hero-visual">
          <div class="visual-glow"></div>

          <div class="terminal-card">
            <div class="terminal-top">
              <span></span><span></span><span></span>
            </div>

            <div class="terminal-content">
              <p><b>CBM BuildTech</b></p>
              <p class="muted">strategy -> design -> software -> product</p>

              <div class="metric-grid">
                <div>
                  <small>Approche</small>
                  <strong>360</strong>
                </div>
                <div>
                  <small>Solutions</small>
                  <strong>Digital</strong>
                </div>
                <div>
                  <small>Vision</small>
                  <strong>Scale</strong>
                </div>
              </div>

              <div class="code-lines">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
              </div>
            </div>
          </div>
        </aside>
      </section>

      <section class="section" id="expertise">
        <div class="section-title">
          <span class="eyebrow">Expertise</span>
          <h2>Une vision large de la digitalisation.</h2>
          <p>
            Nous ne nous limitons pas a un secteur unique. Notre role est de comprendre les besoins,
            structurer les idees et construire des solutions digitales capables d'apporter une vraie valeur metier.
          </p>
        </div>

        <div class="cards">
          <article class="card">
            <h3>Strategie digitale</h3>
            <p>Analyse des besoins, cadrage fonctionnel, structuration d'idees et definition de solutions adaptees.</p>
          </article>

          <article class="card">
            <h3>Developpement web</h3>
            <p>Sites professionnels, plateformes web, interfaces modernes et experiences utilisateurs performantes.</p>
          </article>

          <article class="card">
            <h3>Applications metier</h3>
            <p>Outils internes sur mesure pour centraliser les donnees, automatiser les flux et ameliorer le pilotage.</p>
          </article>

          <article class="card">
            <h3>Produits SaaS</h3>
            <p>Conception de plateformes en ligne evolutives avec comptes utilisateurs, roles, tableaux de bord et reporting.</p>
          </article>

          <article class="card">
            <h3>Automatisation et data</h3>
            <p>Optimisation des processus, reporting automatise, exploitation des donnees et aide a la decision.</p>
          </article>

          <article class="card">
            <h3>Innovation technologique</h3>
            <p>Exploration de nouvelles solutions digitales : IA, integrations, outils intelligents et produits scalables.</p>
          </article>
        </div>
      </section>

      <section class="section products" id="products">
        <div class="section-title">
          <span class="eyebrow">Produits</span>
          <h2>Nos produits digitaux.</h2>
          <p>
            CBM BuildTech developpe egalement ses propres produits. Chaque produit repond a un besoin concret
            et peut evoluer en plateforme independante selon son marche.
          </p>
        </div>

        <div class="product-card">
          <div class="product-logo-wrap">
            <img src="./assets/structura-logo.svg" alt="Logo Structura" class="product-logo" />
          </div>

          <div class="product-content">
            <span class="product-label">Produit 01</span>
            <h3>Structura</h3>
            <p>
              Structura est une plateforme digitale de suivi de chantier : plans interactifs,
              suivi terrain, checklists qualite, rapports PDF et tracabilite operationnelle.
            </p>
          </div>

          <a class="btn primary" href="https://structura-app-navy.vercel.app/structura.html" target="_blank" rel="noreferrer">
            Decouvrir Structura
          </a>
        </div>
      </section>

      <section class="section about" id="vision">
        <div>
          <span class="eyebrow">Vision</span>
          <h2>Creer des solutions utiles, elegantes et capables d'evoluer.</h2>
        </div>

        <p>
          Notre objectif est d'accompagner la transformation digitale de maniere concrete :
          partir d'un probleme reel, concevoir une solution claire, developper rapidement une premiere version,
          puis faire evoluer le produit avec une logique de performance, de qualite et de scalabilite.
        </p>
      </section>

      <section class="section contact" id="contact">
        <div>
          <span class="eyebrow">Contact</span>
          <h2>Construisons votre prochaine solution digitale.</h2>
          <p>
            Vous avez une idee, un besoin metier, un processus a digitaliser ou un produit a lancer ?
            CBM BuildTech peut vous accompagner de la reflexion initiale jusqu'au deploiement.
          </p>
        </div>

        <a class="btn primary" href="mailto:contact@cbm-buildtech.com">Contacter CBM BuildTech</a>
      </section>
    </main>

    <footer class="footer">
      <span>© CBM BuildTech</span>
      <span>Digital transformation - Software - SaaS - Innovation</span>
    </footer>
  </body>
</html>
'@ | Set-Content -Encoding UTF8 index.html

Write-Host "Version ASCII appliquee. Plus aucun accent ni symbole special dans le texte visible." -ForegroundColor Green
Write-Host "Lance maintenant:" -ForegroundColor Yellow
Write-Host "git add ."
Write-Host "git commit -m `"Fix CBM BuildTech encoding permanently`""
Write-Host "git push"
