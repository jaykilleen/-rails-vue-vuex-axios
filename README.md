# README

This is a boilerplate rails application that has a simple posts table. I then use Vue and a Vuex store (using the complete Vuex modules pattern) to then render some data from the rails json api into a Vue component. Requires some additional detail to flesh out the axios api so it is reusable and elegant. Right now I put this together to get some help on a bug I experienced with a Vuex `this.$store` undefined error that was doing my head in :sad:

## System dependencies  

**ruby 2.6.3**  
**rails 6.0.2.1**  

## Configuration  

If this is your first time installing Ruby or Ruby on Rails then please follow [Chris from Gorails' excellent guide](https://gorails.com/setup/ubuntu/18.04).

After cloning, and validating your dependencies please follow these steps:  
`bundle install`  
`yarn install --check-files`

You will need to create a file `config/master.key` and paste/save this text `fd5e7bfe95de2cd329ac9f2a3671f837` in that file.  
**Note:** This app was built to debug an error I was having. If you plan to clone and use this app yourself then you **MUST** regenerate the credentials and master.key.  
Follow the steps below to regenerate a `credentials.yml.enc` and `master.key`.

Delete the `credentials.yml.enc` file.
Regenerate a new `credentials.yml.enc` and `master.key` by running the command `EDITOR=vim rails credentials:edit`.

## Database creation and seeding

You should now be ready to create your database, migrate the tables and seed with seed data.  
The `database.yml` has been setup to use the default `sqlite` configuration.

`rails db:setup`

## Deployment instructions  

_This application has not been configured for deployment_

Once the rails server is running please visit [localhost:3000](http://localhost:3000) to see rails-vue-vuex-axios in action!  

If you get an error like `rails Webpacker can't find application` then you may need to re-run `yarn`.  
