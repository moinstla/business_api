# Business API

#### Rails Building an API Independent Project 7/21/2017

#### By Monique St. Laurent

## Description
A rails API that provides users with information about businesses, including their name, type of business, and address. The data is paginated, and has scopes to allow the user to search for businesses by name, and to return a random business.

#### Endpoints

GET request examples:
  GET localhost:3000/businesses
  GET localhost:3000/businesses/1
  GET localhost:3000/businesses?name=Mayer+LLC
  GET localhost:3000/businesses?random=2
  GET localhost:3000/businesses/page/3

POST request example:
  POST localhost:3000/businesses/?name=Eatery&business_type=restaurant&address=street

PATCH request example:
  PATCH localhost:3000/businesses/1?address=avenue

DELETE request example:
  DELETE localhost:3000/businesses/1


## Installation and Setup

1. Run:
*  `$ git clone https://github.com/moinstla/business_api.git`
* `$ cd business_api`
* `$ bundle install`
* `$ bundle exec rails db:setup`
* `$ bundle exec rails server`

2. Navigate to http://localhost:3000

## Technologies Used
Ruby
Rails
Active Record
Bundler
Postgres
RSpec
Javascript (ES6)
Jquery 3
HTML5
CSS
FactoryGirl
Faker
SimpleCov

## License Information

MIT License

Copyright (c) 2017

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
