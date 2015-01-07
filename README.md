# The perl files for accessing spatialvds database

This is the new home of the perl libs for accessing spatialvds.

To generate or regenerate if you change the db, just run

```
dbicdump
```

and cross your fingers


Hope I write better docs as I go through this process myself.

# passwords

In order to access the database, you need to set up a pgpass file as
described here:
<http://www.postgresql.org/docs/9.4/static/libpq-pgpass.html>

Make sure to follow the correct instructions for windows or Linux

