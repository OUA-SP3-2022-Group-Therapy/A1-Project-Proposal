# Backend


## API Endpoints

| Resource      | HTTP Verb | Auth | Params                             | Description             |
|---------------|:---------:|:----:|------------------------------------|-------------------------|
| /auth/login   |   POST    |  F   | -email <br/>-password              | Login existing user     |
| /auth/signup  |   POST    |  F   | -email<br/>-password               | Signup new user         |       
| /user:id      |    GET    |  T   |                                    | Get all info for user   |
| /user         |    PUT    |  T   | -id<br/>-JSON str                  | Update user data        |
| /user:id      |  DELETE   |  T   |                                    | User can delete account |
| /family-group |   POST    |  T   | -user_id<br/>-name<br/>created_on  | Create new group        |
| /family-group |    GET    |  T   |                                    | Get group data          |
| /family-group |    PUT    |  T   | -user_id<br/>group_id<br/>JSON str | Update group data       |
| /family-group |  DELETE   |  T   |                                    | Delete group            |


#### todo:
 - ~~auth~~
 - ~~user~~
 - ~~family-group~~
 - schedule
 - trends
 - pet
 - event




