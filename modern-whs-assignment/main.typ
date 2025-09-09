#import "meta.typ" as meta
#import "@preview/modern-whs-assignment:0.1.0": *
#set heading(numbering: none)
// Language override
#set text(lang: "en")

// Override the logo image
#show image: it => {
  if "logo.png" in repr(it) {
    image("images/sita.png", width: it.width)
  } else {
    it
  }
}
#set heading(numbering: "1.1")

#show heading: it => {
    if (it.level >= 1){
        block(it.body)
    } else {
        block(counter(heading).display() + " " + it.body)
    }
}
#show "Literaturverzeichnis": ""
#show "Inhaltsverzeichnis": "Table of Contents"
#show "Abbildungsverzeichnis": ""
#show "Tabellenverzeichnis": ""
#show "Codeverzeichnis": ""
#show "Verzeichnisse": ""  // References
#show "Version vom": "Issued:"

// Override German bibliography terms:
#show "Verfügbar unter": "Available at"
#show "Zugriff am": "Accessed on"
#show "online": "Online"

#show: whs-assignment.with(
  meta.title,
  meta.author,
  meta.submission-date,
  meta.keywords,
  meta.course,
  meta.lecturer,
  meta.bibliography,
)

= Introduction
This document defines the core features, functions, and user experience of a real
estate platform. It explains what the system will do, why we are building it,
and what value it brings to our customers compare to other competitors in the market.

== Hight-level System Design
Before writing code, we need to outline system design of the application, to
ensures it grow and adapt to web and mobile use cases.

=== Define Core Features
Identify core features:
- Who are the primary users?
Are we focusing more on property sellers (agencies, owners, brokers) or buyers/renters? Or focus on both?

=== User Flows
What users will do?
(e.g., register, log in, post content, view)
- Map out **user journeys**.

== Design the System Architecture

=== Backend Layer

- **Backend:** Django + Django REST Framework.
- **API Layer:** REST or GraphQL both allows web and mobile app to communicate
with same core logic and data.
- **CDN & Storage:** AWS S3 Distributes static assets globally.

=== Database Layer
- **Database:**
    - Relational Database (e.g, PostgreSQL): Stores structured data such as user information and transactions.
    - NoSQL Database (e.g, MangoDB): Handles unstructured data for flexible schema design.
    - Caching.

== So the path looks like this:

1. **Start with (HLD) High-Level System Design**
2. Define **backend structure** and **API contracts**
3. Build the **web frontend** that uses those APIs
4. Later: Build the **mobile app** to use the same APIs

// == Problem Statement
//
// == Define the Core Features
//
// == Use Cases
//
// == Requirements
//
// == High Level System Architecture
