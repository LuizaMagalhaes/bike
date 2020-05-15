## Bikes API

### Tech
Ruby version 2.5
SQLite 3

This API was created for use in the Rent-bike mobile app. The whole app is for a college project

## Users
Users are the regular people who will rent the bikes

### requests
**Create users**  ` POST localhost:3000/users`
   the body for this request:
   ```
   {
    "user": {
      "name": "Hermione Granger",
      "email": "hermione@email.com",
      "password": "psw123",
      "password_confirmation": "psw123",
      "document": "12332145678",
      "phone": 11999112244,
      "credit_card_number": 1234567899887,
      "credit_card_name": "hermione granger",
      "credit_card_cvv": 123,
      "credit_card_expiration_date": "04/21"
    }
  }
  ```
**Find user**  `GET localhost:3000/users/:id`

**Find all users**  `GET localhost:3000/users`

**Update users**  ` PUT localhost:3000/users/:id`
   the body for this request:
   ```
   {
    "user": {
      "name": "Hermione GRanger",
      "email": "hermione@email.com",
      "password": "psw123",
      "password_confirmation": "psw123",
      "document": "12332145678",
      "phone": 11999112244,
      "credit_card_number": 1234567899887,
      "credit_card_name": "hermione granger",
      "credit_card_cvv": 567,
      "credit_card_expiration_date": "04/21"
    }
  }
  ```
### Advertisers
Advertisers are the people who have bikes for rental

  **Create Advertisers** `POST localhost:3000/advertisers`

   the body for this request:
   ```
   {
    "advertiser": {
      "name": "Harry Potter",
      "email": "harry@email.com",
      "password": "12345",
      "password_confirmation": "12345",
      "document": "12332145678",
      "phone": 1199256676,
      "agency": 2244,
      "account_number": "12345-7",
      "bank_name": "bank x",
      "account_type": "cc"
    }
  }
  ```

### Bicycles
Bicycles belongs to advertiser

  **Create bicycles** `POST localhost:3000/bicycles`

   the body for this request:
   ```
   {
	  "bicycle": {
		"title": "bike vintage",
		"price": 50,
		"longitude": -23.5870745,
		"latitude": -46.6560565,
		"description": "bike linda com cestinha",
		"available": true,
		"image_url": "encurtador.com.br/QWY26"
	}
}
```
**Find bicycle**  `GET localhost:3000/bicycles/:id`

**Find all bicycles**  `GET localhost:3000/bicycles`
