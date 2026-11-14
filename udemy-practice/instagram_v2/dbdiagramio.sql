table users{
  id integer [pk,increment]
  username varchar}

table comments{
  id integer [pk,increment]
  username varchar
  user_id int [ref: >users.id]
  post_id int [ref: >posts.id]}


table posts{
  id integer [pk,increment]
  title varchar}

