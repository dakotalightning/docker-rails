## README

initial pull

  rake db:create
  rake db:schema:load

after a pull

  rake db:reset

all else fails

  rake db:reset db:migrate

or

  rake db:drop db:create db:migrate
