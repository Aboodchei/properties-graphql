# Properties, Furnishings, & Valuations 🏛 Rails & GraphQL
This was a fun project, I enjoyed it! It took me ~5 hours to complete.

## What's the idea here? 💡
The main idea behind the project is to launch a simple GraphQL API MVP with 3 models: Properties, Furnishings, and Valuations.

I wanted to treat this project as I do my startup work. Get an MVP that works, and that meets requirements as quickly as possible, with as little technical debt as possible.

##### Setup
There should be nothing out of the ordinary.
- `$ rvm use` - this project uses Ruby 3.2.1
- `$ bundle install` to install Ruby dependencies
- `$ rails db:setup` to setup the database, and seed records
- `$ rails s` to run the server

#### Postman Collection
A postman collection containing all working queries and mutations can be found at `/postman_collection.json`

#### Areas of improvement
- N+1 queries. Currently, there is an issue with N+1 queries. There are a few [solution ideas](https://evilmartians.com/chronicles/how-to-graphql-with-ruby-rails-active-record-and-no-n-plus-one), but I wanted to get something out as soon as possible.
- Error handling. Currently, there is no error handling structure. The app tries to avoid errors as much as possible, simply returning null values. For example, if a user tries to create a valuation with an invalid property_id, it iwll simply return null instead of raising an error.
- Pagination. Currently, there is no pagination implemented, and for all of the index actions, all records are loaded using `.all`. Ideally, there should be some sort of paging mechanism.
- Better code formatting (rubocop/prettier).
- Add tests.
#### Hope you like it!
