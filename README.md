# ImpactfulChat

## Description
This app allows users to anonymously connect with donation companies and message them about any question they have for donating to the company without being identified. 

![pic1](/public/images/homepage.png)
When users create a chatroom they are given a 5 digit code. They only need the code and the name of the chatroom to login.

![pic1](/public/images/create.png) 
 There is no username and password to identify each user.  When user login to the chatroom, a 16 digit token created and saved to their broweser that identifies them. With the token, they are given a random color as well, to separate their messages from other people in the chatroom. Each time they come back to the chatroom they are identified with the token saved to cookies and their color is identified. When they type something, the box around their comment changes to the color assigned to them.
 Many users can login to the chatroom. the example bellow has 3 user logged in.

![pic1](/public/images/chat.png)

## Technologies Used
* Sinatra
* Active Record
* PostgreSQL
* Google map API

### To run locally
To run the app locally download the files and follow the steps bellow in your terminal:
```
bundle install
```
```
be rake db:create
```
```
be rake db:migrate
```
```
be shotgun
```
