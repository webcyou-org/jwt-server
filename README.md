# JWT（JSON Web Tokens） Authorization - Server

## Setup

```
$ git clone git@github.com:webcyou-org/jwt-server.git
```
## Server Framework List

- Ruby on Rails 5



and more...


## Select Server Framework

- Ruby on Rails 5

```
$ bundle install --path vendor/bundle
```

```
$ bin/rails db:create db:migrate
```

```
$ bin/rails db:seed
```

```
$ bundle exec rails s
```

Listening on tcp://localhost:3000

## API EndPoints

**Host**

http://localhost:3000

**EndPoints**

| url | method | details |
|---|---|---|
| /api/v1/user_token  | POST | Create Access Token (User Login) |
| /api/v1/users  | POST | Create new account |
| /api/v1/users | DELETE | User Logout |
| /api/v1/users | GET | Login User Show |


### Default User

| name | email | password |
|---|---|---|
| daisuke.takayama | test@user.com | test123 |
   
### CURL Test

**Create Access Token (User Login)**

```
$ curl -X "POST" "http://localhost:3000/api/v1/user_token" -H "Content-Type: application/json" -d $'{"auth": {"email": "test@user.com", "password": "test123"}}'
```

response

```
{"jwt":"eyJ0eXAiOiJKV1QiLCJhbG...."}
```

**Login User Show**


```
$ curl -X "GET" "http://localhost:3000/api/v1/users" -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbG...." -H "Content-Type: application/json"
```

response

```
{"status":200,"user":{"id":1,"name":"daisuke.takayama","email":"test@user.com"}}
```

### Open Browser

http://localhost:3000


and more...

## development

### SubModule

We store the front end source in the front end directory.

```
$ git submodule init
$ git submodule update
```

**git clone & SubModule init**

```
$ git clone --recursive git@github.com:webcyou-org/jwt-server.git
```

## Author

**Daisuke Takayama**
* [@webcyou](https://twitter.com/webcyou)
* [@panicdragon](https://twitter.com/panicdragon)
* <https://github.com/webcyou>
* <https://github.com/webcyou-org>
* <https://github.com/panicdragon>
* <http://www.webcyou.com/>
