# Tagging API

## Local Development (Mac OS / Ubuntu)

 - Ruby version 2.7.1

**System Level Dependencies:**

 - PostgreSQL 12.4

**Project Level Dependencies**

 - bundle install

**Setting up the Database**

 - rails db:create 
 - rails db:migrate 
 - rails db:seed

**Running the Rails Server**

 - rails server

**Running Tests**

- bundle exec rspec


##API Endpoints

### User:
#### Sign-in
Method: `POST`
url:  `/api/v1/auth/sign_in`
 Parameters:
 
    Login Headers (Parameters)
    { email: "some@email.com", password: "somepassword" }

#### Sign-out
The sign-out is dependant on sign-in response header attributes
Method: `DELETE`
url:  `/api/v1/auth/sign_out`
 Parameters:

    Logout Headers (Parameters)
     {
        'uid' => response.headers['uid'],
        'client' => response.headers['client'],
        'access-token' => response.headers['access-token']
     }
