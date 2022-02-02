




# SUPER MVP
##  🌟 User -< Alerts 
####  User:Auth




# MVP
##  🌟 User  -< UserLocation/UserLivesHere/UserIsHere/UserCurrentLocation >- Location >- ...CAN CONTINUE...

##  🌟 User  -<  Alert  -<  AlertDamages   >- DamageTypes (Categories/Tags/Types)
##  🌟           Alert  -<  AlertLocation  >- Location >- ...CAN CONTINUE...


#### Locations
# Location (ZipCodes/Neighborhood/Township/Villiages/provinices)  >- ...
#   ...  >- County >- Town >- City >- State >- Country >- Planet >- SolarSystem >- Galaxies >- ...
## !! 👀 !! THERE ARE JOINS BETWEEN EVERY SINGLE FORM OF RELATIONAL-LOCATIONS

#< NYC >< USA >
#< DC >< USA >
#< Indonesia >



#### MODELS


## User
####  User:Auth 🌟
####  Attributes
# t.string :name
# t.string :username
# t.string :email
# t.string :current_location
# t.string :password_digest
#### :password *  ->  salted + hashed  ->  password_digest
#### 123, password, abc ->->->->->->->->->->->-> XBJ7-JCKDB JCDS-NJ4K-KS6J-N5JH-D737


# -x- t.integer :age
#### age users 
# -x- t.string :hometown 

--------------------------------






## Alert
####  Attributes
# t.string :title
# t.string :description
# t.datetime :alert_time
# t.belongs_to :user

# -x- date + time sepreately - At This Time 😉


--------------------------------




## JOIN: AlertDamage
####  Attributes

# t.string :level  ::  "minor", "moderate", "high", "critical"

# t.belongs_to :alert
# t.belongs_to :damage_type

--------------------------------


## DamageType 
####  Attributes
# t.string :level  ::  "minor", "moderate", "high", "critical"


# -x-
# t.integer :level  ::  10, 20, 30, ... 100
# ~ DamagedThings 
## Could Be Another Model 😬



#< The Tapapn Zee >

#May Windup Being Instances ~ 
#Infrastructure t.boolean 
#Bridge
#Electrical
#Weather
#Fire
#Flood
#Airborne
#

--------------------------------

## Location

--------------------------------
## JOIN: AlertLocation

--------------------------------

@channel #BACKENDTEAM
(And Anyone Who Would Like to Join Them - Ofcorse)
 



Your Assignment for Today
Do All Generators for the Remaining Models
- Alert
- JOIN: AlertDamage
- DamageType
- Location
- JOIN: AlertLocation

Establish sensible Attributes for all Models
Remember - That Will Be Established in the  Migrations





Start Working on Controller Actions for Any Requests Y’all Think Will Be Necessary
Feel Free to Use Postman to test those  Routes  +  Controller Actions :ok_hand::skin-tone-5::dizzy: 

Make Seeds in a bunch of Combinations for Each Relaionship Between Models
Test Out the Macros and Confirm That They Work Properly :ok_hand::skin-tone-5::eyes:  




:small_red_triangle_down::small_red_triangle_down::small_red_triangle_down::small_red_triangle_down::small_red_triangle_down::small_red_triangle_down::small_red_triangle_down::small_red_triangle_down:

:bangbang: PLEASE :bangbang:

:arrow-right: NO ONE PUSH TO THE MAIN BRANCH WITHOUT TELLING ME/ALERTING THE CHANNEL

tnx :meow_ok:

:small_red_triangle::small_red_triangle::small_red_triangle::small_red_triangle::small_red_triangle::small_red_triangle::small_red_triangle::small_red_triangle:




Have Fuuuuuuuun:sparkles::meow_party::sparkles:













################################
################################
################################
################################


# The Wooblies Are Selling Snacks ✨🐱🍇🍪🍿🍩🍫🧁🍨🍡🥨🍊🐱✨




## Models - DONE  :)
<!-- 
Your Models will each have the following attributes:

- A `Woobly`:
string :name
string :hometown

- A `Snack`:
string :name
string :ingredients

- A `WooblySnack` belongs to a `Woobly` and belongs to a `Snack`
float :price
string :special_additional_ingredients
boolean :marked_as_healthy -->


You need to create the following relationships:

<!-- - A `Woobly` has many `Snack`s through `WooblySnack`
- A `Snack` has many `Woobly`s through `WooblySnack`
- A `WooblySnack` belongs to a `Woobly` and belongs to a `Snack` -->


<!-- Start by creating the models and migrations for the following database tables: -->

<!-- If you use a Rails generator to create the models, make sure to use the
`--no-test-framework` flag to avoid overwriting the test files.

Add any code needed in the model files to ESTABLISH THE RELATIONSHIPS/ASSOCIATIONS establish the relationships. -->

> ❗️❗️❗️❗️
> 
<!-- Please generate your own seed data to test the application, seeing as Sam's RAILS ARE CLEARLY OFF-IT 💥🚂💥🥴 -->
>❗️❗️❗️❗️

<!-- Then, run the migrations and seed file:

```sh
rails db:migrate db:seed
``` -->




## Validations

<!-- Add validations to the `Woobly` model:

- must have a `name`


Add validations to the `Snack` model:

- must have a `name`
- `name` must be unique


Add validations to the `WooblySnack` model:

- must have a `price` between 1 and 1000000 -->




## Routes

Set up the following routes. Make sure to return JSON data in the format
specified along with the appropriate HTTP verb.


### GET /wooblies

<!-- Return JSON data in the format below:

```json
[
    {
        "name": "Woobly",
        "hometown": "The Bronx"
    },
    {
        "name": "Joobly",
        "hometown": "Manhattan"
    },
    {
        "name": "WaWaWa",
        "hometown": "Republica Dominicana"
    },
    {
        "name": "Mooply",
        "hometown": "The Abyss"
    }
]
``` -->


### GET /wooblies/:id

<!-- If the `Woobly` exists, return JSON data in the format below:

```json
{
  "id": 1,
  "name": "Woobly",
  "hometown": "Austin",
  "snacks": [
    {
        "id": 1,
        "name": "Ice Cream",
        "ingredients": "Ice, Cream, Happiness"
    },
    {
      "id": 2,
      "name": "Chips",
      "ingredients": "Potatoes, Salt"
    }
  ]
}
```

If the `Woobly` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```json
{
  "error": "Woobly not found 🌾😕🌾"
}
``` -->


### POST /wooblies

<!-- This route should create a new `Woobly`. It should accept an object with the following
properties in the body of the request:

```json
{
    "name": "Confoobly",
    "hometown": "Florida"
}
```

If the `Woobly` is created successfully, send back a response with the data
related to that `Woobly`:

```json
{
    "id": 5,
    "name": "Confoobly",
    "hometown": "Florida"
}
```

If the `Woobly` is **not** created successfully, return the following
JSON data, along with the appropriate HTTP status code:

```json
{
  "errors": ["validation errors"]
}
``` -->


### DELETE /wooblies/:id

<!-- If the `Woobly` decides to Retire, check if they exist, and then they should be removed from the database, along with any `WooblySnack`s that are associated with it (a `WooblySnack` belongs
to a `Woobly`, so you need to delete the `WooblySnack`s before the
`Woobly` can be deleted).

After Retiring that `Woobly`, return an _empty_ response body, along with the
appropriate HTTP status code.

If the `Woobly` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```json
{
  "error": "Woobly not found 🌾🙃🌾"
}
``` -->




### GET /snacks

<!-- Return JSON data in the format below:

```json
[
    {
      "id": 1,
      "name": "Ice Cream",
      "ingredients": "Ice, Cream, Happiness"
    },
    {
      "id": 2,
      "name": "Chips",
      "ingredients": "Potatoes, Salt"
    }
    { 
      "id": 3,
      "name": "Grapes",
      "ingredients": "...Grapes?"
    }
]
``` -->


### GET /snacks/:id

<!-- If the `Snack` exists, return JSON data in the format below:

```json
{
  "id": 1,
  "name": "Ice Cream",
  "ingredients": "Ice, Cream, Happiness",
  "wooblies": [
    {
        "id": 1,
        "name": "Woobly",
        "hometown": "The Bronx"
    }
  ]
}
```

If the `Snack` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```json
{
  "error": "Snack not found 🍽🙃🥣"
}
``` -->


### POST /snacks

<!-- This route should create a new `Snack`. It should accept an object with the following
properties in the body of the request:

```json
{
    "name": "Pinapples",
    "ingredients": "Pine, Apples, Magic✨"
}
```

If the `Snack` is created successfully, send back a response with the data
related to that `Snack`:

```json
{
    "id": 4,
    "name": "Pinapples",
    "ingredients": "Pine, Apples, Magic✨"
}
```

If the `Snack` is **not** created successfully, return the following
JSON data, along with the appropriate HTTP status code:

```json
{
  "errors": ["validation errors"]
}
``` -->




### POST /wooblie_snacks

This route should create a new `WooblySnack` that is associated with an
existing `Snack` and `Woobly`. It should accept an object with the following
properties in the body of the request:

```json
{
  "price": 5.55,
  "special_additional_ingredients": "Love💛✨",
  "marked_as_healthy": true,
  "snack_id": 1,  // (or any valid :id)
  "woobly_id": 5 // (or any valid :id)
}
```

If the `WooblySnack` is created successfully, send back a response with the data
related to the `Snack`:

```json
{
  "name": "Ice Cream",
  "ingredients": "Ice, Cream, Happiness",
  "being_sold_for": 5.55 
}
```

If the `WooblySnack` is **not** created successfully, return the following
JSON data, along with the appropriate HTTP status code:

```json
{
  "errors": ["validation errors"]
}
```


### DELETE /wooblie_snacks

<!-- If the `WooblySnack` exists, it should be removed from the database

After deleting the `WooblySnack`, return an _empty_ response body, along with the
appropriate HTTP status code.

If the `WooblySnack` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```json
{
  "error": "[Woobly] doesn't sell [Snack] Anymore 🥣😿"
}
``` -->




################################
################################
################################
################################
































# Rails Mock Challenge - Camping Fun

Congratulations! You have been hired by Access Camp and for your first job, you
have been tasked with building out a website to log campers with their
activities.

In this repo, there is a Rails application with some features built out. There
is also a fully built React frontend application, so you can test if your API is
working.

Your job is to build out the Rails API to add the functionality described in the
deliverables below.

## Setup

To download the dependencies for the frontend and backend, run:

```console
$ bundle install
$ npm install --prefix client
```

There is some starter code in the `db/seeds.rb` file so that once you've
generated the models, you'll be able to create data to test your application.

You can run your Rails API on [`localhost:3000`](http://localhost:3000) by running:

```console
$ rails s
```

You can run your React app on [`localhost:4000`](http://localhost:4000) by running:

```console
$ npm start --prefix client
```

You are not being assessed on React, and you don't have to update any of the React
code; the frontend code is available just so that you can test out the behavior
of your API in a realistic setting.

There are also tests included which you can run using `rspec` to check your work.

Depending on your preference, you can either check your progress by:

- Running `rspec` and seeing if your code passes the tests
- Running the React application in the browser and interacting with the API via
  the frontend
- Running the Rails server and using Postman to make requests

## Models

You need to create the following relationships:

- A `Camper` has many `Signups`, and has many `Activity`s through `Signup`s
- An `Activity` has many `Signups`, and has many has many `Camper`s through `Signup`s
- A `Signup` belongs to a `Camper` and belongs to a `Activity`

Start by creating the models and migrations for the following database tables:

![domain diagram](https://curriculum-content.s3.amazonaws.com/phase-4/mock-challenge-camping-fun/diagram.png)

If you use a Rails generator to create the models, make sure to use the
`--no-test-framework` flag to avoid overwriting the test files.

Add any code needed in the model files to establish the relationships.

Then, run the migrations and seed file:

```console
$ rails db:migrate db:seed
```

> If you aren't able to get the provided seed file working, you are welcome to
> generate your own seed data to test the application.

## Validations

<!-- Add validations to the `Camper` model:

- must have a `name`
- must have an `age` between 8 and 18 -->

Add validations to the `Signup` model:

- must have a `time` between 0 and 23 (referring to the hour of day for the
  activity)

## Routes

Set up the following routes. Make sure to return JSON data in the format
specified along with the appropriate HTTP verb.

### GET /campers

<!-- Return JSON data in the format below. **Note**: you should return a JSON
response in this format, without any additional nested data related to each
camper.

```json
[
  {
    "id": 1,
    "name": "Caitlin",
    "age": 8
  },
  {
    "id": 2,
    "name": "Lizzie",
    "age": 9
  }
]
``` -->

### GET /campers/:id

<!-- If the `Camper` exists, return JSON data in the format below. **Note**: you will
need to serialize the data for this response differently than for the
`GET /campers` route. Make sure to include an array of activities for each
camper.

```json
{
  "id": 1,
  "name": "Caitlin",
  "age": 8,
  "activities": [
    {
      "id": 1,
      "name": "Archery",
      "difficulty": 2
    },
    {
      "id": 2,
      "name": "Swimming",
      "difficulty": 3
    }
  ]
}
```

If the `Camper` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```json
{
  "error": "Camper not found"
}
``` -->

### POST /campers

<!-- This route should create a new `Camper`. It should accept an object with the
following properties in the body of the request:

```json
{
  "name": "Zoe",
  "age": 11
}
```

If the `Camper` is created successfully, send back a response with the new
`Camper`:

```json
{
  "id": 2,
  "name": "Zoe",
  "age": 11
}
```

If the `Camper` is **not** created successfully, return the following JSON data,
along with the appropriate HTTP status code:

```json
{
  "errors": ["validation errors"]
}
``` -->

### GET /activities

<!-- Return JSON data in the format below:

```json
[
  {
    "id": 1,
    "name": "Archery",
    "difficulty": 2
  },
  {
    "id": 2,
    "name": "Swimming",
    "difficulty": 3
  }
]
``` -->

### DELETE /activities/:id

<!-- If the `Activity` exists, it should be removed from the database, along with
any `Signup`s that are associated with it (a `Signup` belongs
to an `Activity`, so you need to delete the `Signup`s before the
`Activity` can be deleted).

After deleting the `Activity`, return an _empty_ response body, along with the
appropriate HTTP status code.

If the `Activity` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```json
{
  "error": "Activity not found"
}
``` -->

### POST /signups

This route should create a new `Signup` that is associated with an
existing `Camper` and `Activity`. It should accept an object with the following
properties in the body of the request:

```json
{
  "time": 9,
  "camper_id": 1,
  "activity_id": 3
}
```

If the `Signup` is created successfully, send back a response with the data
related to the `Activity`:

```json
{
  "id": 1,
  "name": "Archery",
  "difficulty": 2
}
```

If the `Signup` is **not** created successfully, return the following JSON data,
along with the appropriate HTTP status code:

```json
{
  "errors": ["validation errors"]
}
```
