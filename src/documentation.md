---
title: "Swiped - Dokumentation zu betrieblichen Projektarbeit"
subtitle: "Entwicklung einer Webanwendung zum anonymisierten matchen von Filmen und Serien in Gruppen von Benutzern."
author: [Erik Berreßem]
titlepage: true
toc: true
toc-own-page: true
header-includes:
  - \usepackage{ulem}
  - \usepackage[toc]{glossaries}
  - \renewcommand*{\glstextformat}[1]{\dotuline{#1}}
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

## Projektschnittstellen

Der Endbenutzer kann die Webanwendung in jedem aktuellen Browser und auf einer Vielzahl von Geräten wie PCs, Notebooks über Tablets bis hin zu Smartphone aufrufen.

Das (+Front-End) der Webanwendung läuft auf einem (+NginX)-Server und das (+Back-End) läuft auf einem (+NodeJS)-Server mit (+Express) und (+MongoDB).

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

Als (+Front-End) Framework wurde (+React) gewählt. (+React) wurde mit dem Fokus erstellt, Komponenten für Webanwendungen zu erstellen. Eine (+React)-Komponente ist ein View, der von der Anwendung abgekapselt ist. Damit lassen sich zum Beispiel Buttons, Text-Elemente oder Beschriftungen isoliert und wiederverwendbar entwickeln. Zudem ist die spürbare Geschwindigkeit der Anwendung hoch, da (+React) nur DOM-Manipulationen an Komponenten ausführt dessen sichtbare Daten sich ändern.

(+React) ist (+Open-Source) und wird von Facebook und einer Community einzelner Entwickler und Unternehmen gepflegt. Dadurch existiert für die Bibliothek eine sehr solide Dokumentation. Aber auch für obskurere Probleme findet man durch eine immer größer werdende Community an Entwicklern lösungen. Da (+React) unter der (+MIT-Lizenz) steht, kann es kostenlos verwendet werden.

<!-- TODO mehr zu den verwendeten Bibliotheken? -->
<!-- TODO Datenbank diagram -->

# Qualitätskontrolle

## Manuelle Tests

Die manuellen Tests im Bereich (+React) wurden unter anderen mit der Chrome-Erweiterung "React Developer Tools" durchgeführt, welche den Wert aller in der aktuellen Ansicht vorhandenen Variablen darstellt und manipulieren lässt.

Die (+GraphQL)-API wurde mithilfe der in der (+Apollo) integrierten Schnittstelle "GraphQL-Playground" getestet. Diese ermöglicht das einblicken des kompletten Schemas und das interactive erstellen und senden von Anfragen.

Die Webapplikation wurde auch in verschiedenen Browsern und auf verschiedenen Geräten getestet.

## Versionierung

Von Beginn des Projektes an wurde (+Git) als Versionsverwaltung verwendet. Der Übersichtlichkeit wegen wurde jedem Commit, nach dem (+Gitmoji) prinzip, ein Emoji zugewiesen, der die Art der Änderung beschreibt, wie z.B. 🐛 für Bug-Fixes oder ✨ für das implementieren von neuen Features.
