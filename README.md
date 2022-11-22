#Back-end Sinatra Project

This repository is for a backend to a larger project.
The front end can be found here:
https://github.com/MichaelDDJ/my-app-frontend

After cloning this project you need to run a few tasks to get the server up and running. Start by installing all dependencies.
```ruby
bundle install
bundle exec rake db:migrate
bundle exec rake db:seed
bundle exec rake server
```
This is to start the migrations, seed the database, and run the server. After this you should run the app on the front-end to begin interacting.
The server will run on local port 3001.

This Ruby project uses ActiveRecord, Sinatra, and Rake gems to work.

