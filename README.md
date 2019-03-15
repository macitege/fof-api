# F.O.F. | Boston
## Free Offerings of Food
##### Web Application created by M. Ege ERCAN
---
Note: This application is providing database api support for the F.O.F. web application.

F.O.F. | Boston , stands for Free Offerings of Food, is an application where people can create posts for their extra food that they dont want to throw away. So that, people who helps homeless people can find free food, collect them and give them to whoever in need. This application uses Google Maps API and Google Geocoding API to locate user's address
on the map.

- [View the client repo here!](https://github.com/macitege/fof-client)
- [View the API repo here!](https://github.com/macitege/fof-api)
- [View the deployed website here!](http://www.macitege.com/fof-client/)
- [View the deployed api here!](https://fof-api.herokuapp.com)

## Technologies used

- Ruby
- Ruby on Rails
- PostgreSQL
- ActiveRecord

## Planning, process and problem solving

The focus of this project was to successfully use Google Maps API to locate addresses that are provided in the posts, and place markers on the map for those posts. In order to achive this task, 2 different third party api has been used. Because addresses are entered without latitude and longitute values, before being able to use Google Maps API -which needs lat-lng values to locate places- for showing markers, first Google Geocoding API has been utilized and latitude-longitute values of given addresses have been fetched.

Since this is a React.js application, before implying Google Maps API and Google Geocoding API, a planning of the component structure for React app has been done. The most challenging part was to use states to put the address given by user and the lat-lng values coming from geocoding api together and send it to database.

## Future feature additions - Unsolved Issues

Although everything runs correctly in the app, couple things are omitted to be able to meet m.v.p. requirements before the due date, and those features can be added in future iterations and improvements. Which are:
- Providing a user name validation in addition to email
- Showing username on posts instead of id
- Uploading image on the posts
- Following other users
- Sending message to other users
- An expiration timer for posts
- A confirmation dialog box before deleting, editing and creating posts

### Entity Relationship Diagram and a Catalog of the Routes
- Entity Relationship Diagram located [here.](https://i.imgur.com/N7EuWcK.png)

### Routes

Verb|	URI Pattern |	Request Body |	Headers	| Action
---|---|---|---
POST|	/sign-up|	credentials|	N/A|	user sign-up
POST|	/sign-in|	credentials|	N/A	|user sign-in
DELETE|	/sign-out	|N/A	|Token	|user sign-out
PATCH|	/change-password|	passwords	|Token|	change-password
GET|	/posts|	N/A|	N/A|	index posts
GET|	/posts/:id|	N/A	|Token|	show single post
POST|	/posts|	post: {}|	Token	|create post
PATCH|	/posts/:id|	post delta|	Token|	update post
DELETE|	/posts/:id|	N/A	|Token|	remove post


### Wireframes and user stories

1. [Wireframes located here.](https://i.imgur.com/PsOMKVM.png)
1. User stories:
  - As an unregistered user, I would like to sign up with email and password.
  - As a registered user, I would like to sign in with email and password.
  - As a signed in user, I would like to change password.
  - As a signed in user, I would like to sign out.
  - As an unregistered user, I would like to see all the latest posts with address info.
  - As a signed in user, I would to create posts.
  - As a signed in user, I would to edit my posts.
  - As a signed in user, I would to delete posts.
  - As a user, I want to see locations of posts on the map as markers, and see the post titles by clicking on them.

***

### Setup and Installation
For those who wants to fork this repo and build on it:

__Note:__ This is a Ruby on Rails application, so please check following before starting:
 - [Ruby Documentation](https://ruby-doc.org/)
 - [Rails Documentation](https://guides.rubyonrails.org/)
 - [ActiveRecord Documentation](https://guides.rubyonrails.org/active_record_basics.html)

##### Setting up
- Fork and clone this repository.
- Empty `README.md` and fill with your own content.
- Rename your app module in `config/application.rb`.
- Install dependencies with `bundle install`.
- `git add` and `git commit` your changes.
- Create a .env for sensitive settings (`touch .env`).
- Generate new development and test secrets (`bundle exec rails secret`).
- Store them in .env with keys `SECRET_KEY_BASE_<DEVELOPMENT|TEST>` respectively.
- In order to make requests to your deployed API, you will need to set `SECRET_KEY_BASE` in the environment of the production API (for example, using `heroku config:set` or the Heroku dashboard).
- In order to make requests from your deployed client application, you will need to set `CLIENT_ORIGIN` in the environment of the production API (for example, `heroku config:set CLIENT_ORIGIN=https://<github-username>.github.io)`.

##### To Run the Server

- Run the API server with `bin/rails server` or `bundle exec rails server`.

##### Deploy
For deployment, you need to create a account on Heroku. Check the documentation:
- [Heroku Documentation](https://www.heroku.com)

##### Mutate the Database with

- `bin/rails db:drop`
- `bin/rails db:create`
- `bin/rails db:migrate`
- `bin/rails db:seed`

###### Other commands to run
- `bin/rails routes` lists the endpoints available in your API.
- `bin/rspec spec` runs automated tests.
- `bin/rails console` opens a REPL that pre-loads the API.
- `bin/rails db` opens your database client and loads the correct database.
- `bin/rails server` starts the API.

***

A screenshot of the app uses this database api:

![Screenshot of the app](https://i.imgur.com/vAt8KcP.png "Screenshot of the app")
