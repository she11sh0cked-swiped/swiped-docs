---
title: "Swiped - Dokumentation zu betrieblichen Projektarbeit"
subtitle: "Entwicklung einer Webanwendung zum anonymisierten matchen von Filmen und Serien in Gruppen von Benutzern."
author: [Erik Berreßem]
keywords: [Markdown, Example]
titlepage: true
toc: true
toc-own-page: true
header-includes:
  - \usepackage{glossaries}
  - \makenoidxglossaries
  - \input{../src/glossary}
include-after:
  - \printnoidxglossary[sort=word]
---

# Projektbeschreibung

## Projektumfeld

Das Projekt wurde von mir im Rahmen der betrieblichen Projektarbeit in meinem Ausbildungsbetrieb der inSynergie GmbH durchgeführt. Die inSynergie GmbH, gegründet im Jahr 2000, ist ein inhabergeführtes, mittelständisches Unternehmen mit zur Zeit 45 fest angestellten Mitarbeitern. Im Rahmen der Projektarbeit planen und realisieren wir ganzheitliche Lösungen in den Bereichen Medientechnik und Exponatebau. Ein zweiter Schwerpunkt ist die Entwicklung und der Vertrieb von multimedialen Steuerungsprodukten und Ihrer Software. Unser Produktportfolio beinhaltet Eigenentwicklungen aus den Bereichen: Steuerungskomponenten und Touchpanels, Audiosysteme, Videosysteme und Steuerungssysteme.

## Projektziel

Ein Endbenutzer kann die Anwendung in einem Webbrowser seiner Wahl aufrufen. Beim ersten aufruf der Anwendung wird der Endbenutzer durch eine Login Seite darauf hingewiesen einen Account zu erstellen. Nachdem er sich angemeldet hat, wird er auf die Hauptseite umgeleitet. Dort findet er ein Kartendeck welches aus momentan populären Filmen und Serien besteht. Diese Karten kann er mit seiner Maus oder über Touch-Input bewegen. Unter den Karten liegen außerdem zwei Button-Inputs. Der linke Button ist ein rotes Kreuz und der rechte Button ein grünes Herz. Hier wird durch die Design-Entscheidung der Farben und Symbole darauf hingewiesen, dass man die Filme und Serien mit eben diesen Buttons negativ (Rotes Kreuz) oder positiv (Grünes Herz) bewerten kann. Zusätzlich kann man die Bewertung auch ausführen, indem man die Karte in die jeweilige Richtung schleudert (links: negativ; rechts: positiv). Nach 10 bewerteten Karten ist das Deck leer. Das Ergebnis wird dann aus dem \gls{Front-End} (\gls{React}) an das \gls{Back-End} (\gls{NodeJS}) weitergeleitet und in einer \gls{MongoDB} hinterlegt. Basierend auf diesen Bewertungen werden dann die nächsten Filme und Serien gewählt, die das Kartendeck darstellen soll.
