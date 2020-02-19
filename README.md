### Project : Multitenancy Workout App





* NOTES :
```
    - cd kickoff ;
    - BUT I DID THIS, rails new workout_tracker -m template.rb
    - rails new workout_tracker -m template.rb --webpack ; /
    - rails new myapp --webpack
    - Add gems nto gemfile ;

    - If you add webpacker in gemfile Webpacker :

       - rails generate simple_form:install ;
       - bundle exec rake webpacker:install ;
       - yarn add vue-resource ;
       - yarn add webpack-cli -D ;
       - yarn add webpack-dev-server ;

   * NOW TRY rails s on localhost:3000/

       - if error show run this on terminal : yarn install --check-files ;
       - nowrun rails s , hope it will work .

     * Next NOTES :

       - bundle exec rails generate apartment:install ;
       - rails g migration add_subdomain_to_users subdomain:string ;
       - rails db:migrate ;
       
      * Setuping SUBDOMAIN :

       - rails g migration reindex_users_by_email_and_subdomain ;
       - rails db:migrate ;
       - After setuping subdomain you can delete localhosthost:3000/ and type http://lvh.me:3000/ to access your app, now you can access in http://lvh.me:3000/ or, localhost:3000/.

       - rails g scaffold Workout title:string date:datetime  ;
       - rails db:migrate ;
       - rails c (user = User.all;) ;

       * If you see you this type of errors, ActiveRecord::ConnectionNotEstablished - No connection pool with 'primary' found.: - (go to puma.rb and delte 5 and write 1.)

           - 
```