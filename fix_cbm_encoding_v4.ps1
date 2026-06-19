# Update CBM BuildTech website - V3
# A lancer depuis le dossier qui contient index.html et style.css

Write-Host "=== Update CBM BuildTech website V3 ===" -ForegroundColor Cyan

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
    <title>CBM BuildTech | Digitalisation, innovation & solutions technologiques</title>

    <meta name="description" content="CBM BuildTech accompagne les organisations dans leur transformation digitale avec des solutions technologiques sur mesure : plateformes web, applications, automatisation, SaaS, data, intelligence artificielle et produits digitaux innovants.">
    <meta name="robots" content="index, follow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <meta property="og:title" content="CBM BuildTech | Solutions digitales & innovation technologique">
    <meta property="og:description" content="Une société technologique qui conçoit des solutions digitales sur mesure, des produits SaaS et des outils innovants pour accompagner la transformation des organisations.">
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
          <span class="eyebrow">Digital transformation · Software · SaaS · Innovation</span>

          <h1>Nous concevons des solutions digitales pour transformer les idées en produits concrets.</h1>

          <p>
            CBM BuildTech accompagne les organisations dans leur transformation digitale en imaginant,
            développant et déployant des solutions technologiques sur mesure. Notre approche combine
            stratégie, design, développement logiciel, automatisation et innovation produit.
          </p>

          <div class="hero-actions">
            <a class="btn primary" href="#expertise">Découvrir notre expertise</a>
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
              <p class="muted">strategy → design → software → product</p>

              <div class="metric-grid">
                <div>
                  <small>Approche</small>
                  <strong>360°</strong>
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
            Nous ne nous limitons pas à un secteur unique. Notre rôle est de comprendre les besoins,
            structurer les idées et construire des solutions digitales capables d’apporter une vraie valeur métier.
          </p>
        </div>

        <div class="cards">
          <article class="card">
            <h3>Stratégie digitale</h3>
            <p>Analyse des besoins, cadrage fonctionnel, structuration d’idées et définition de solutions adaptées.</p>
          </article>

          <article class="card">
            <h3>Développement web</h3>
            <p>Sites professionnels, plateformes web, interfaces modernes et expériences utilisateurs performantes.</p>
          </article>

          <article class="card">
            <h3>Applications métier</h3>
            <p>Outils internes sur mesure pour centraliser les données, automatiser les flux et améliorer le pilotage.</p>
          </article>

          <article class="card">
            <h3>Produits SaaS</h3>
            <p>Conception de plateformes en ligne évolutives avec comptes utilisateurs, rôles, tableaux de bord et reporting.</p>
          </article>

          <article class="card">
            <h3>Automatisation & data</h3>
            <p>Optimisation des processus, reporting automatisé, exploitation des données et aide à la décision.</p>
          </article>

          <article class="card">
            <h3>Innovation technologique</h3>
            <p>Exploration de nouvelles solutions digitales : IA, intégrations, outils intelligents et produits scalables.</p>
          </article>
        </div>
      </section>

      <section class="section products" id="products">
        <div class="section-title">
          <span class="eyebrow">Produits</span>
          <h2>Nos produits digitaux.</h2>
          <p>
            CBM BuildTech développe également ses propres produits. Chaque produit répond à un besoin concret
            et peut évoluer en plateforme indépendante selon son marché.
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
              suivi terrain, checklists qualité, rapports PDF et traçabilité opérationnelle.
            </p>
          </div>

          <a class="btn primary" href="https://structura-app-navy.vercel.app/structura.html" target="_blank" rel="noreferrer">
            Découvrir Structura
          </a>
        </div>
      </section>

      <section class="section about" id="vision">
        <div>
          <span class="eyebrow">Vision</span>
          <h2>Créer des solutions utiles, élégantes et capables d’évoluer.</h2>
        </div>

        <p>
          Notre objectif est d’accompagner la transformation digitale de manière concrète :
          partir d’un problème réel, concevoir une solution claire, développer rapidement une première version,
          puis faire évoluer le produit avec une logique de performance, de qualité et de scalabilité.
        </p>
      </section>

      <section class="section contact" id="contact">
        <div>
          <span class="eyebrow">Contact</span>
          <h2>Construisons votre prochaine solution digitale.</h2>
          <p>
            Vous avez une idée, un besoin métier, un processus à digitaliser ou un produit à lancer ?
            CBM BuildTech peut vous accompagner de la réflexion initiale jusqu’au déploiement.
          </p>
        </div>

        <a class="btn primary" href="mailto:contact@cbm-buildtech.com">Contacter CBM BuildTech</a>
      </section>
    </main>

    <footer class="footer">
      <span>© CBM BuildTech</span>
      <span>Digital transformation · Software · SaaS · Innovation</span>
    </footer>
  </body>
</html>
'@ | Set-Content -Encoding UTF8 index.html

@'
* {
  box-sizing: border-box;
}

:root {
  --bg: #020617;
  --bg2: #07111D;
  --card: rgba(255, 255, 255, .055);
  --card2: rgba(255, 255, 255, .085);
  --line: rgba(255, 255, 255, .12);
  --text: #F8FAFC;
  --muted: #A8B3C4;
  --muted2: #94A3B8;
  --blue: #0EA5E9;
  --cyan: #22D3EE;
  --deep: #0B2F6B;
}

html {
  scroll-behavior: smooth;
}

body {
  margin: 0;
  color: var(--text);
  font-family: Inter, Arial, Helvetica, sans-serif;
  line-height: 1.6;
  background:
    radial-gradient(circle at 15% 10%, rgba(14, 165, 233, .18), transparent 28%),
    radial-gradient(circle at 85% 15%, rgba(34, 211, 238, .16), transparent 28%),
    linear-gradient(135deg, #020617 0%, #07111D 45%, #081A3A 100%);
  min-height: 100vh;
}

body::before {
  content: "";
  position: fixed;
  inset: 0;
  background:
    linear-gradient(rgba(255, 255, 255, .022) 1px, transparent 1px),
    linear-gradient(90deg, rgba(255, 255, 255, .022) 1px, transparent 1px);
  background-size: 42px 42px;
  opacity: .55;
  pointer-events: none;
}

body::after {
  content: "";
  position: fixed;
  inset: 0;
  background: #020617;
  z-index: 9998;
  animation: splashPageReveal .95s ease 2.25s forwards;
  pointer-events: none;
}

a {
  color: inherit;
}

.splash {
  position: fixed;
  inset: 0;
  z-index: 9999;
  display: grid;
  place-items: center;
  background:
    radial-gradient(circle at 50% 45%, rgba(34, 211, 238, .18), transparent 24%),
    linear-gradient(135deg, #020617, #07111D 55%, #081A3A);
  animation: splashOut .85s ease 2.15s forwards;
}

.splash-orbit {
  position: absolute;
  width: 340px;
  height: 340px;
  border-radius: 999px;
  border: 1px solid rgba(34, 211, 238, .18);
  box-shadow: 0 0 70px rgba(34, 211, 238, .16);
  animation: orbitPulse 1.8s ease-in-out infinite;
}

.splash-logo {
  width: 240px;
  max-width: 52vw;
  filter: drop-shadow(0 30px 70px rgba(14, 165, 233, .22));
  animation: logoEnter 1.15s cubic-bezier(.2,.8,.2,1) both;
}

.splash-word {
  position: absolute;
  top: calc(50% + 155px);
  text-align: center;
  animation: wordEnter 1.1s ease .25s both;
}

.splash-word strong {
  display: block;
  font-size: 28px;
  letter-spacing: -.8px;
}

.splash-word span {
  display: block;
  margin-top: 6px;
  color: var(--cyan);
  font-size: 11px;
  font-weight: 900;
  letter-spacing: .14em;
  text-transform: uppercase;
}

.splash-loader {
  position: absolute;
  top: calc(50% + 235px);
  width: 220px;
  height: 3px;
  border-radius: 999px;
  overflow: hidden;
  background: rgba(255,255,255,.10);
}

.splash-loader span {
  display: block;
  height: 100%;
  width: 50%;
  background: linear-gradient(90deg, transparent, var(--cyan), #fff);
  animation: loaderMove 1.45s ease-in-out infinite;
}

@keyframes logoEnter {
  from { opacity: 0; transform: translateY(20px) scale(.92); }
  to { opacity: 1; transform: translateY(0) scale(1); }
}

@keyframes wordEnter {
  from { opacity: 0; transform: translateY(14px); }
  to { opacity: 1; transform: translateY(0); }
}

@keyframes loaderMove {
  from { transform: translateX(-120%); }
  to { transform: translateX(240%); }
}

@keyframes orbitPulse {
  0%, 100% { transform: scale(.96); opacity: .55; }
  50% { transform: scale(1.04); opacity: 1; }
}

@keyframes splashOut {
  to { opacity: 0; visibility: hidden; pointer-events: none; }
}

@keyframes splashPageReveal {
  to { opacity: 0; visibility: hidden; pointer-events: none; }
}

.header,
main,
.footer {
  position: relative;
  z-index: 1;
}

.nav,
.hero,
.section,
.footer {
  width: min(1180px, calc(100% - 48px));
  margin-inline: auto;
}

.header {
  padding-top: 26px;
}

.nav {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 22px;
}

.brand {
  display: flex;
  align-items: center;
  gap: 15px;
  text-decoration: none;
  min-width: 0;
}

.brand img {
  width: 72px;
  height: 72px;
  object-fit: contain;
  border-radius: 18px;
  background: rgba(255, 255, 255, .035);
  border: 1px solid rgba(34, 211, 238, .18);
}

.brand strong {
  display: block;
  font-size: 26px;
  line-height: 1;
  letter-spacing: -.8px;
}

.brand span {
  display: block;
  margin-top: 8px;
  color: var(--cyan);
  font-size: 11px;
  font-weight: 900;
  letter-spacing: .14em;
  text-transform: uppercase;
}

.nav-links {
  display: flex;
  align-items: center;
  justify-content: flex-end;
  gap: 10px;
  flex-wrap: wrap;
}

.nav-links a {
  text-decoration: none;
  padding: 10px 14px;
  border-radius: 13px;
  background: rgba(255, 255, 255, .055);
  border: 1px solid var(--line);
  color: var(--text);
  font-size: 14px;
  font-weight: 850;
}

.nav-links .contact-link {
  background: linear-gradient(135deg, var(--blue), var(--cyan));
  border-color: rgba(34, 211, 238, .45);
  color: #020617;
  font-weight: 950;
}

.hero {
  min-height: calc(100vh - 120px);
  display: grid;
  grid-template-columns: minmax(0, 1.05fr) minmax(320px, .95fr);
  gap: 54px;
  align-items: center;
  padding: 80px 0 74px;
}

.eyebrow {
  display: inline-flex;
  color: var(--cyan);
  font-size: 12px;
  font-weight: 950;
  letter-spacing: .14em;
  text-transform: uppercase;
  margin-bottom: 18px;
}

h1,
h2,
h3,
p {
  margin-top: 0;
}

h1 {
  font-size: clamp(44px, 6vw, 76px);
  line-height: .96;
  letter-spacing: -3px;
  margin-bottom: 24px;
}

.hero-text p,
.section-title p,
.about p,
.contact p {
  color: #CBD5E1;
  font-size: 19px;
  max-width: 760px;
}

.hero-actions {
  margin-top: 34px;
  display: flex;
  flex-wrap: wrap;
  gap: 12px;
}

.btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  text-decoration: none;
  border-radius: 14px;
  padding: 14px 20px;
  font-weight: 950;
}

.btn.primary {
  background: linear-gradient(135deg, var(--blue), var(--cyan));
  color: #020617;
}

.btn.secondary {
  color: var(--text);
  border: 1px solid var(--line);
  background: rgba(255, 255, 255, .06);
}

.hero-visual {
  position: relative;
}

.visual-glow {
  position: absolute;
  inset: 10% 8%;
  background: rgba(34, 211, 238, .20);
  filter: blur(85px);
  border-radius: 999px;
}

.terminal-card {
  position: relative;
  border: 1px solid var(--line);
  background: rgba(255, 255, 255, .055);
  border-radius: 30px;
  padding: 24px;
  box-shadow: 0 26px 80px rgba(0, 0, 0, .38);
  backdrop-filter: blur(16px);
}

.terminal-top {
  display: flex;
  gap: 7px;
  margin-bottom: 18px;
}

.terminal-top span {
  width: 10px;
  height: 10px;
  background: rgba(255, 255, 255, .22);
  border-radius: 99px;
}

.terminal-content {
  min-height: 360px;
  background: rgba(2, 6, 23, .72);
  border: 1px solid rgba(255, 255, 255, .10);
  border-radius: 24px;
  padding: 24px;
}

.terminal-content p {
  margin: 0;
}

.terminal-content b {
  color: var(--cyan);
}

.muted {
  color: var(--muted2);
  font-size: 14px;
}

.metric-grid {
  margin-top: 24px;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 11px;
}

.metric-grid div {
  padding: 14px;
  border-radius: 17px;
  background: rgba(255, 255, 255, .065);
}

.metric-grid small {
  display: block;
  color: var(--muted2);
  text-transform: uppercase;
  font-size: 10px;
  letter-spacing: .08em;
  font-weight: 900;
}

.metric-grid strong {
  display: block;
  margin-top: 9px;
  font-size: 24px;
}

.code-lines {
  margin-top: 30px;
  display: grid;
  gap: 13px;
}

.code-lines span {
  height: 13px;
  border-radius: 999px;
  background: linear-gradient(90deg, rgba(14, 165, 233, .95), rgba(34, 211, 238, .20));
}

.code-lines span:nth-child(2) {
  width: 78%;
}

.code-lines span:nth-child(3) {
  width: 62%;
}

.code-lines span:nth-child(4) {
  width: 88%;
}

.section {
  padding-top: 74px;
}

.section-title {
  max-width: 790px;
  margin-bottom: 24px;
}

.section-title h2,
.about h2,
.contact h2 {
  font-size: clamp(30px, 4vw, 46px);
  line-height: 1.05;
  letter-spacing: -1.5px;
  margin-bottom: 12px;
}

.cards {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 18px;
}

.card,
.product-card,
.contact {
  background: var(--card);
  border: 1px solid var(--line);
  border-radius: 24px;
  padding: 24px;
}

.card h3 {
  margin-bottom: 9px;
  font-size: 20px;
}

.card p {
  color: var(--muted);
  font-size: 15px;
  margin-bottom: 0;
}

.product-card {
  display: grid;
  grid-template-columns: auto minmax(0, 1fr) auto;
  gap: 22px;
  align-items: center;
  border-color: rgba(34, 211, 238, .20);
  background:
    radial-gradient(circle at 12% 20%, rgba(14, 165, 233, .18), transparent 30%),
    var(--card);
}

.product-logo-wrap {
  width: 88px;
  height: 88px;
  border-radius: 22px;
  display: grid;
  place-items: center;
  overflow: hidden;
  border: 1px solid rgba(214, 160, 65, .28);
  background: #07111D;
  box-shadow: 0 22px 54px rgba(0,0,0,.28);
}

.product-logo {
  width: 88px;
  height: 88px;
  display: block;
}

.product-label {
  display: inline-flex;
  color: var(--cyan);
  font-weight: 950;
  text-transform: uppercase;
  letter-spacing: .12em;
  font-size: 12px;
  margin-bottom: 10px;
}

.product-card h3 {
  font-size: 36px;
  letter-spacing: -1.4px;
  margin-bottom: 10px;
}

.product-card p {
  color: #CBD5E1;
  max-width: 760px;
  margin-bottom: 0;
}

.about {
  display: grid;
  grid-template-columns: minmax(0, .95fr) minmax(0, 1fr);
  gap: 36px;
  align-items: start;
}

.contact {
  display: grid;
  grid-template-columns: minmax(0, 1fr) auto;
  gap: 24px;
  align-items: center;
}

.footer {
  margin-top: 74px;
  padding: 24px 0 34px;
  border-top: 1px solid var(--line);
  color: var(--muted2);
  display: flex;
  justify-content: space-between;
  gap: 16px;
  flex-wrap: wrap;
  font-size: 14px;
}

@media (max-width: 900px) {
  .nav {
    align-items: flex-start;
    flex-direction: column;
  }

  .nav-links {
    justify-content: flex-start;
  }

  .hero {
    min-height: auto;
    grid-template-columns: 1fr;
    padding-top: 58px;
  }

  .cards,
  .about {
    grid-template-columns: 1fr;
  }

  .product-card,
  .contact {
    grid-template-columns: 1fr;
  }

  .brand img {
    width: 62px;
    height: 62px;
  }

  .brand strong {
    font-size: 23px;
  }

  .splash-logo {
    width: 190px;
  }

  .splash-word {
    top: calc(50% + 130px);
  }

  .splash-loader {
    top: calc(50% + 205px);
  }
}
'@ | Set-Content -Encoding UTF8 style.css

Write-Host "CBM BuildTech V3 appliqué." -ForegroundColor Green
Write-Host "Lance maintenant:" -ForegroundColor Yellow
Write-Host "git status"
Write-Host "git add ."
Write-Host "git commit -m `"Improve CBM BuildTech website branding`""
Write-Host "git push"
