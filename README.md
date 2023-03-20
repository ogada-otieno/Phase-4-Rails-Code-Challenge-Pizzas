# SA-01: Phase 4 Code Challenge: Pizzas
## Learning Goals
Implement a 'mini' Rails application that implements associations.

## Requirements
For this project, I am required to:

Create a Rails API backend. Have at least three resources (three DB tables).

## MODEL Deliverables and Relationships
Create the following relationships:

* A Restaurant has many Pizzas through RestaurantPizza
* A Pizza has many Restaurants through RestaurantPizza
* A RestaurantPizza belongs to a Restaurant and belongs to * a Pizza

![](/assets/erd.png)


## Deployment Link
This link can be easily used to test the different routes/requests available to the API server. If you want to have the project in your development environment, proceed to set it up as outlined in the section that follows.

```bash
https://pizza-server-20v2.onrender.com
```

## Setup
In order to use this repository, you need the following:
* Operating System (Windows 10+, Linux 3.8+, or MacOS X 10.7+)
* An account on Postman API Platform. CLICK HERE TO CREATE ONE
* RAM >= 4GB
* Free Space >= 2GB

1. Fork and clone the repository.
2. Ensure the ruby gems are setup in your machine
```
bundle install
```
3. Perform any pending database migrations and seed data
```
rails db:migrate db:seed
```
4. Make sure no other application is using PORT 3000 and run the application
```
rails s
```
5. Using your preferred API testing platform (Postman, ThunderClient, etc), proceed to test the various routes available to the API. This will be your base URL:
```
http://localhost:3000
```
## validations Deliverables
Add validations to the `RestaurantPizza` model:

- must have a `price` between 1 and 30

## Routes
Set up the following routes. Make sure to return JSON data in the format
specified along with the appropriate HTTP verb. Also, ensure that errors are returned and handled appropriately. This includes and is not limited to necessary status codes.

```
GET /restaurants
GET /restaurants/:id
DELETE /restaurants/:id
GET /pizzas
POST /restaurant_pizzas
```

## Authors
Project contributed to and maintained by:
- [Rodgers Ogada](https://github.com/ogada-otieno)

## License

### ISC License (ISC)

[![License: ICL](https://img.shields.io/badge/License-ISC-blue.svg)](https://opensource.org/licenses/ISC)


