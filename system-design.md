# Hight-level System Design

Before writing code, we need to outline system design of the application, to
ensures it grow and adapt to web and mobile use cases.

## Define Core Features

Identify core features:

- Who are the primary users? Are we focusing more on property sellers (agencies,
  owners, brokers) or buyers/renters? Or focus on both?

### User Flows

What users will do? (e.g., register, log in, post content, view)

- Map out **user journeys**.

## Design the System Architecture

### Backend Layer

- **Backend:** Django + Django REST Framework.
- **API Layer:** REST or GraphQL both allows web and mobile app to communicate
  with same core logic and data.
- **CDN & Storage:** AWS S3 Distributes static assets globally.

### Database Layer

- **Database:**
  - Relational Database (e.g, PostgreSQL): Stores structured data such as user
    information and transactions.
  - NoSQL Database (e.g, MangoDB): Handles unstructured data for flexible schema
    design.
  - Caching.

## So the path looks like this:

1. **Start with (HLD) High-Level System Design**
2. Define **backend structure** and **API contracts**
3. Build the **web frontend** that uses those APIs
4. Later: Build the **mobile app** to use the same APIs

### Problem Statement

### 

### Define the Core Features

### 

### Use Cases

### 

### Requirements

### 

### High Level System Architecture
