---
title: "Swiped - Dokumentation zu betrieblichen Projektarbeit"
subtitle: "Entwicklung einer Webanwendung zum anonymisierten matchen von Filmen und Serien in Gruppen von Benutzern."
author: [Erik Berreßem]
titlepage: true
toc: true
toc-own-page: true
listings-no-page-break: true
header-includes:
  - \usepackage[toc]{glossaries}
  - \usepackage{dirtree}
  - \usepackage{emoji}
  - \usepackage{ulem}

  - \setemojifont{Segoe UI Emoji}

  - \renewcommand*{\glstextformat}[1]{\dotuline{#1}}
  - \makenoidxglossaries
  - \input{../src/glossary}
---

**Hinweis:** "Filme und Serien" wird in diesem Dokument als "Filme" abgekürzt.

# Projektbeschreibung

## Projektumfeld

Das Projekt wurde von mir im Rahmen der betrieblichen Projektarbeit in meinem Ausbildungsbetrieb der inSynergie GmbH durchgeführt. Die inSynergie GmbH, gegründet im Jahr 2000, ist ein inhabergeführtes, mittelständisches Unternehmen mit zur Zeit 45 fest angestellten Mitarbeitern. Im Rahmen der Projektarbeit planen und realisieren wir ganzheitliche Lösungen in den Bereichen Medientechnik und Exponatebau. Ein zweiter Schwerpunkt ist die Entwicklung und der Vertrieb von multimedialen Steuerungsprodukten und Ihrer Software. Unser Produktportfolio beinhaltet Eigenentwicklungen aus den Bereichen: Steuerungs und Touchpanels, Audiosysteme, Videosysteme und Steuerungssysteme.

## Projektziel

Ein Endbenutzer kann die Anwendung in einem Webbrowser seiner Wahl aufrufen. Beim ersten aufruf der Anwendung wird der Endbenutzer durch eine Login Seite darauf hingewiesen einen Account zu erstellen. Nachdem er sich angemeldet hat, wird er auf die Hauptseite umgeleitet.

Dort findet er ein Kartendeck welches aus momentan populären Filmen besteht. Diese Karten kann er mit seiner Maus oder über Touch-Input bewegen. Unter den Karten liegen außerdem zwei Button-Inputs. Der linke Button ist ein rotes Kreuz und der rechte Button ein grünes Herz. Hier wird durch die Design-Entscheidung der Farben und Symbole darauf hingewiesen, dass man die Filme mit eben diesen Buttons negativ (Rotes Kreuz) oder positiv (Grünes Herz) bewerten kann. Zusätzlich kann man die Bewertung auch ausführen, indem man die Karte in die jeweilige Richtung schleudert (links: negativ; rechts: positiv). Nach 10 bewerteten Karten ist das Deck leer. Das Ergebnis wird dann aus dem (+FrontEnd) ((+React)) an das (+BackEnd) ((+NodeJS)) weitergeleitet und in einer (+MongoDB) hinterlegt. Basierend auf diesen Bewertungen werden dann die nächsten Filme gewählt, die das Kartendeck darstellen soll.

Über eine Navigationsleiste gelangt der Endbenutzer zur Gruppenübersichts-Seite. Auf dieser findet er alle Gruppen denen er beigetreten ist und hat die möglichkeit neue Gruppen zu erstellen. Wenn er auf eine Gruppe klick wird er zu der Detail-Seite dieser umgeleitet. Hier findet er eine Liste der von ihm und anderen Gruppenmitgliedern positiv bewerteten Filmen. Je mehr positive Bewertungen ein Film erhält, desto mehr Sterne erhält dieser und desto höher wird er in der Liste angezeigt. Mit 5 Sternen erreicht ein Film die höchste Bewertung, welche durch eine Farbänderung der Herzen gekennzeichnet wird.

## Projektbegründung

Der Zweck dieser Anwendung ist es ein realistisches Projekt-Ziel zu haben in den man neue Technologien testen und bereits eingesetzte Technologien festigen und überdenken kann. Diese erlangten Kenntnisse kommen dann möglicherweise auch in einer Vielzahl an zukünftigen Projekten zum Einsatz. Deshalb dient dieses Projekt, als auch diese Dokumentation als eine Art Pilotprojekt.

## Projektschnittstellen

Der Endbenutzer kann die Webanwendung in jedem aktuellen Browser und auf einer Vielzahl von Geräten wie PCs, Notebooks über Tablets bis hin zu Smartphone aufrufen.

Das (+FrontEnd) der Webanwendung läuft auf einem (+NginX)-Server und das (+BackEnd) läuft auf einem (+NodeJS)-Server mit (+Express) und (+MongoDB).

Genehmigt wurde das Projekt von der Leitung der Entwicklungsabteilung. Dieser wurde auch der aktuelle Stand zweimal wöchentlich präsentiert, sowie über eine zu jeden Tag aktualisierte Test-Installation zugänglich gemacht.

## Projektabgrenzungen

Basiskenntnisse in der Erstellung von einfachen Webanwendung wie das Erstellen von HTML-Seiten, der Implementierung von CSS-Stilen, sowie der Einbindung von JavaScript Dateien werden vorausgesetzt, da eine genauere Beschreibung dieser Vorgänge den Rahmen dieser Dokumentation sprengen würde.

# Projektplanung

## Projektphasen

Das Projekt wurde innerhalb von 70 Stunden durchgeführt.

<!-- TODO Zeitplanungs Diagram? -->

## Abweichungen vom Projektantrag

Aspekte der Implementierung wurden aus zeitlichen Gründen ausgelassen. Dabei wurde darauf geachtet, dass keine Core-Konzepte entfallen. Zu den nicht implementierten Seiten zählen die "Film-Details", "Benutzerprofil", sowie die "Neuer Benutzer" Seite. Die letztere Seite wurde ausgelassen, da ein ähnliches Feature bereits in der "Swiping-Game" Seite, durch das Empfehlen von populärer Filmen existierte.

## Entwicklungsprozess

Als Entwicklungsprozess wurde die agile Softwareentwicklung verwendet, sodass während der Implementierung ständige Rücksprache mit der Entwicklungsabteilung bestand.

# Entwurf

## Auswahl der Tools

### React

Als (+FrontEnd) Framework wurde (+React) gewählt. (+React) wurde mit dem Fokus erstellt, für Webanwendungen zu erstellen. Eine (+React)-Komponente ist ein View, der von der Anwendung abgekapselt ist. Damit lassen sich zum Beispiel Buttons, Text-Elemente oder Beschriftungen isoliert und wiederverwendbar entwickeln. Zudem ist die spürbare Geschwindigkeit der Anwendung hoch, da (+React) nur DOM-Manipulationen an ausführt dessen sichtbare Daten sich ändern.

(+React) ist (+OpenSource) und wird von Facebook und einer Community einzelner Entwickler und Unternehmen gepflegt. Dadurch existiert für die Bibliothek eine sehr solide Dokumentation. Aber auch für obskurere Probleme findet man durch eine immer größer werdende Community an Entwicklern lösungen. Da (+React) unter der (+MITLizenz) steht, kann es kostenlos verwendet werden.

<!-- TODO mehr zu den verwendeten Bibliotheken? -->
<!-- TODO Datenbank diagram -->

# Implementierung

## Front-End

### Initialisierung

Das Projekt wurde mit Hilfe von (+CreateReactApp) über den Befehl `yarn create react-app swiped-frontend --template typescript` initialisiert. Dies erstellt eine Basisumgebung für eine neue (+React) Einzelseitenanwendung mit (+TypeScript) als Programmiersprache, (+Webpack) als Bundler und out-of-the-box Support für viele Entwickler-Features wie zum Beispiel dem (+HotReloading). Die erstellte Ordnerstruktur ist zunächst etwas "Unordentlich", weshalb sie zu einer Sinnvolleren Ordnerstruktur umgeändert wurde ([siehe Anhang](#front-end-ordnerstruktur)). Als nächstes wurden Konfigurationen für weitere Entwickler-Tools wie zum Beispiel (+ESLint) und (+Prettier) angelegt. Diese helfen dabei den Quellcode einheitlich zu halten und nehmen einiges an Arbeit ab.

### Styling

Ich habe mich schon früh dazu entschieden die (+React)-Komponenten Bibliothek "(+MaterialUI)" mit in das Projekt einzubinden. (+MaterialUI), welches Google's Design-Sprache (+MaterialDesign) als (+React)-Komponenten implementiert, erlaubt es mit einer einheitlichen Kollektion von Basis-Komponenten zu starten. Auch das Überschreiben der Standartwerte ist durch ein Theming-Konzept sehr leicht ([siehe Anhang](#material-ui-theming-konzept)). Styling wird bei der Verwendung von (+MaterialUI) nicht in CSS, sondern dank (+JSS) in JavaScript geschrieben. Dies ermöglicht es CSS dynamisch aus dem Quellcode zu manipulieren ([siehe Anhang](#styling-mit-material-ui)).

### Animationen

Für die Animationen der Karten wurde sich entschieden (+ReactSpring) im Zusammenspiel mit (+ReactUseGesture) zu verwenden. Dies stellt, wie auch (+MaterialUI), einen Quellcode nahen Ansatz für CSS manipulationen dar ([siehe Anhang](#react-spring--react-use-gesture-beispiel)).

# Qualitätskontrolle

## Statische Quellcode-Analyse

Zur statischen Code-Analyse wurde ein auf das Projekt zugeschnittenes (+ESLint)-Regelwerk angelegt. Dieses enthält spezielle Regeln für (+React) und (+ReactHooks), (+TypeScript), Sortier-Reihenfolgen und vieles mehr. Dies ist sehr hilfreich, da es einfache Fehler im Quellcode durch Warnungen verhindert.

Die Regelwerke kann man sich aus dem Stammverzeichnis der Projekte unter der Datei `.eslintrc.js` entnehmen.

## Quellcode formatierung

Damit der Quellcode einheitlich bleibt wurde das Code-Formatier Tool "(+Prettier)" eingesetzt. Auch hier wurde eine Konfigurations-Datei angelegt, die allerdings größtenteils die Standartwerte des Tools übernimmt. Die einzig angepassten Regeln sind das ausschalten von Semikolons und das Anpassen des Anführungszeichen-Charakters auf ein einfaches Anführungszeichen.

Auch diese Konfigurationen lassen sich im Stammverzeichnis der Projekte unter der Datei `.preettierrc.js` einsehen.

## Manuelle Tests

Die manuellen Tests im Bereich (+React) wurden unter anderen mit der Chrome-Erweiterung "React Developer Tools" durchgeführt, welche den Wert aller in der aktuellen Ansicht vorhandenen Variablen darstellt und manipulieren lässt.

Die (+GraphQL)-API wurde mithilfe der in der (+Apollo) integrierten Schnittstelle "GraphQL-Playground" getestet. Diese ermöglicht das einblicken des kompletten Schemas und das interactive erstellen und senden von Anfragen.

Die Webapplikation wurde auch in verschiedenen Browsern und auf verschiedenen Geräten getestet.

## Versionierung

Von Beginn des Projektes an wurde (+Git) als Versionsverwaltung verwendet. Der Übersichtlichkeit wegen wurde jedem Commit, nach dem (+Gitmoji) prinzip, ein Emoji zugewiesen, der die Art der Änderung beschreibt, wie z.B.: \emoji{bug} für Bug-Fixes oder \emoji{sparkles} für das implementieren von neuen Features.

# Wirtschaftlichkeitsbetrachtung

## Projektkosten

Jegliche verwendete Software ist zur freien Verwendung oder Open Source verfügbar (z.B.: (+React) und (+NodeJS)). Ebenso wurde die verwendete Hardware schon vor dem Projekt bezahlt. Auf dem Webserver werden auch andere Webseiten gehostet, sodass diesbezüglich auch keine weiteren Kosten angefallen sind. Somit fielen nur mein Stundenlohn als Kosten an. Für diesen Punkt wurde von einem pauschalen Stundensatz von 10€ ausgegangen. Somit ergeben sich folgende
Projektkosten: Durchführungszeit von 70 Stunden x 10€ Kosten pro Stunde, also Projektkosten von gesamt 700,00€.

\clearpage
\printnoidxglossary[title=Glossar,sort=word]
\clearpage

\appendix

# Anhang

## Front-End Ordnerstruktur

**Initiale Create-React-App Ordnerstruktur:**

\dirtree{%
.1 swiped-frontend/.
.2 public/\DTcomment{Alle statischen Dateien (z.B.: index.html, favicon.ico)}.
.2 src/\DTcomment{Alle Quellcode Dateien (z.B.: index.js)}.
}

**Meine Ordnerstruktur:**

\dirtree{%
.1 swiped-frontend/.
.2 public/\DTcomment{Alle statischen Dateien (z.B.: index.html, favicon.ico)}.
.2 src/.
.3 api/\DTcomment{Quellcode der mit dem Verbindungs-Code des \gls{BackEnd} zu tun hat (z.B.: \gls{Apollo}-Client initialisierung)}.
.3 app/\DTcomment{Einstiegspunkt des \gls{React}-Teils der Anwendung}.
.3 components/\DTcomment{Globale \gls{React}-Komponenten, die sich in jeden Container verwenden lassen (z.B.: Button Komponente)}.
.3 containers/\DTcomment{Hauptseiten die sich aus globalen und Container spezifischen Komponenten zusammensetzen (z.B.: Login Container)}.
.3 store/\DTcomment{\gls{MobX} Stores für Daten die Global in der Anwendung erreichbar sein sollen (z.B.: Name der aktuellen Seite)}.
.3 types/\DTcomment{Globale typisierungs-Dateien (z.B.: API typisierungen)}.
.3 utils/\DTcomment{Nützliche und wiederverwendbare Code-Snippets (z.B.: uppercaseFirstLetter.ts)}.
}

## Material-UI Theming-Konzept

```ts
// file: src/app/theme.ts

import { createMuiTheme } from "@material-ui/core/styles";

export default createMuiTheme({
  overrides: {
    MuiButton: {
      root: {
        height: "min-content",
      },
    },
    MuiCssBaseline: {
      "@global": {
        "#root": {
          display: "grid",
          gridTemplateRows: "max-content auto",
          height: "100%",
          overflow: "hidden",
          position: "fixed",
          width: "100%",
        },
      },
    },
  },
});
```

Hier werden allen (+MaterialUI) Buttons die CSS-Property `height: "min-content"` hinzugefügt. Zusätzlich wird hier auch die DIV mit der ID "root" gestyled.

## Styling mit Material-UI

```tsx
// file: src/containers/group/components/list/List.tsx

import { withStyles } from "@material-ui/core";

import styledBy from "utils/styledBy";

// [...]

const StyledRating = withStyles({
  iconFilled: {
    color: styledBy("color", {
      default: undefined,
      red: red[400],
    }),
  },
})(Rating);

// [...]

const List: FC<IProps> = ({ matches, membersCount }) => {
  const classes = useStyles();

  return (
    <MaterialList>
      {matches.map((match) => {
        const rating = ((match.count ?? 1) / membersCount) * 5;

        // [...]

        return (
          <ListItem disableGutters key={match.media.id}>
            {/* [...] */}
            <StyledRating color={rating < 5 ? "red" : "default"} /* [...] */ />
            {/* [...] */}
          </ListItem>
        );
      })}
    </MaterialList>
  );
};

export default List;
```

Hier werden die Sterne der Match-Karten auf der Gruppen Seite, je nach dem ob die Bewertungen fünf Sterne erreicht haben, entweder Rot oder Golden gefärbt.

## React-Spring / React-Use-Gesture Beispiel

```tsx
// taken from: https://use-gesture.netlify.app/docs

import { useSpring, animated } from "@react-spring/web";
import { useDrag } from "react-use-gesture";

function PullRelease() {
  const [{ x, y }, api] = useSpring(() => ({ x: 0, y: 0 }));

  // Set the drag hook and define component movement based on gesture data
  const bind = useDrag(({ down, movement: [mx, my] }) => {
    api.start({ x: down ? mx : 0, y: down ? my : 0 });
  });

  // Bind it to a component
  return <animated.div {...bind()} style={{ x, y }} />;
}
```

Das Ergebnis ist eine DIV die bei gedrückter Maus / gepressten Finger den Pointer folgt und sich zur Mitte zurückzieht, wenn man loslässt. Für eine Animierte Version kann man auch die Dokumentations-Seite von (+ReactUseGesture) (unter [https://use-gesture.netlify.app/docs](https://use-gesture.netlify.app/docs)) besuchen, dem dieses Beispiel entnommen wurde.
