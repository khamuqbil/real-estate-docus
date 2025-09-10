This simple architecture ensures your platform can scale from web to mobile
while maintaining a clean separation of concerns and API-first approach.

## Simple Backend Architecture

```tree
API Layer (REST/GraphQL)
├── Authentication Service
├── Property Service
├── User Service
├── Promotion Service
├── Search Service
├── Location Service
└── Notification Service
```

---

### Simple Database Schema (Core Table)

```sql
-- Users
users (id, email, password, user_type, city_id, created_at)

-- Properties
properties (id, title, description, price, property_type, 
           address, lat, lng, city_id, user_id, status, created_at)

-- Cities
cities (id, name, country, lat, lng, is_active)

-- Promotions
promotions (id, property_id, promotion_type, start_date, 
           end_date, price_paid, is_active)

-- Property Images
property_images (id, property_id, image_url, is_primary)

-- Contacts/Inquiries
inquiries (id, property_id, seeker_id, message, created_at)
```

---

### Simple API Design Structure

```API
/api/v1/
├── auth/
│   ├── login
│   ├── register
│   └── refresh
├── properties/
│   ├── GET /properties (search, filters)
│   ├── POST /properties (create)
│   ├── GET /properties/{id}
│   └── PUT /properties/{id}
├── users/
│   ├── GET /profile
│   └── PUT /profile
├── promotions/
│   ├── POST /promotions
│   └── GET /promotions
├── cities/
│   └── GET /cities
└── search/
    ├── GET /search
    └── GET /map-data
```
