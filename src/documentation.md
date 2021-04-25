---
title: "Swiped - Dokumentation zu betrieblichen Projektarbeit"
subtitle: "Entwicklung einer Webanwendung zum anonymisierten matchen von Filmen und Serien in Gruppen von Benutzern."
author: [Erik Berreßem]
titlepage: true
toc: true
toc-own-page: true
header-includes:
  - \usepackage[toc]{glossaries}
  - \makenoidxglossaries
  - \input{../src/glossary}
include-after:
  - \clearpage
  - \printnoidxglossary[title=Glossar,sort=word]
---

**Hinweis:** "Filme und Serien" wird in diesem Dokument als "Filme" abgekürzt.

# Projektbeschreibung

## Projektumfeld

Das Projekt wurde von mir im Rahmen der betrieblichen Projektarbeit in meinem Ausbildungsbetrieb der inSynergie GmbH durchgeführt. Die inSynergie GmbH, gegründet im Jahr 2000, ist ein inhabergeführtes, mittelständisches Unternehmen mit zur Zeit 45 fest angestellten Mitarbeitern. Im Rahmen der Projektarbeit planen und realisieren wir ganzheitliche Lösungen in den Bereichen Medientechnik und Exponatebau. Ein zweiter Schwerpunkt ist die Entwicklung und der Vertrieb von multimedialen Steuerungsprodukten und Ihrer Software. Unser Produktportfolio beinhaltet Eigenentwicklungen aus den Bereichen: Steuerungskomponenten und Touchpanels, Audiosysteme, Videosysteme und Steuerungssysteme.

## Projektziel

Ein Endbenutzer kann die Anwendung in einem Webbrowser seiner Wahl aufrufen. Beim ersten aufruf der Anwendung wird der Endbenutzer durch eine Login Seite darauf hingewiesen einen Account zu erstellen. Nachdem er sich angemeldet hat, wird er auf die Hauptseite umgeleitet.

Dort findet er ein Kartendeck welches aus momentan populären Filmen besteht. Diese Karten kann er mit seiner Maus oder über Touch-Input bewegen. Unter den Karten liegen außerdem zwei Button-Inputs. Der linke Button ist ein rotes Kreuz und der rechte Button ein grünes Herz. Hier wird durch die Design-Entscheidung der Farben und Symbole darauf hingewiesen, dass man die Filme mit eben diesen Buttons negativ (Rotes Kreuz) oder positiv (Grünes Herz) bewerten kann. Zusätzlich kann man die Bewertung auch ausführen, indem man die Karte in die jeweilige Richtung schleudert (links: negativ; rechts: positiv). Nach 10 bewerteten Karten ist das Deck leer. Das Ergebnis wird dann aus dem (+Front-End) ((+React)) an das (+Back-End) ((+NodeJS)) weitergeleitet und in einer (+MongoDB) hinterlegt. Basierend auf diesen Bewertungen werden dann die nächsten Filme gewählt, die das Kartendeck darstellen soll.

Über eine Navigationsleiste gelangt der Endbenutzer zur Gruppenübersichts-Seite. Auf dieser findet er alle Gruppen denen er beigetreten ist und hat die möglichkeit neue Gruppen zu erstellen. Wenn er auf eine Gruppe klick wird er zu der Detail-Seite dieser umgeleitet. Hier findet er eine Liste der von ihm und anderen Gruppenmitgliedern positiv bewerteten Filmen. Je mehr positive Bewertungen ein Film erhält, desto mehr Sterne erhält dieser und desto höher wird er in der Liste angezeigt. Mit 5 Sternen erreicht ein Film die höchste Bewertung, welche durch eine Farbänderung der Herzen gekennzeichnet wird.

## Projektbegründung

Der Zweck dieser Anwendung ist es ein realistisches Projekt-Ziel zu haben in den man neue Technologien testen und bereits eingesetzte Technologien festigen und überdenken kann. Diese erlangten Kenntnisse kommen dann möglicherweise auch in einer Vielzahl an zukünftigen Projekten zum Einsatz. Deshalb dient dieses Projekt, als auch diese Dokumentation als eine Art Pilotprojekt.
