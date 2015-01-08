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

## okay

I ran the dbic script, then the module starter stuff, to create perl
modules.

All you have to do is to cd into the Testbed-Spatial-VDS-Schema
directory, then as appropriate for your distro (woindows, linux, mac,
etc) run

```
perl Build.PL
./Build
./Build test
sudo ./Build install
```

to use the libraries

Note that the perl Build.PL part will complain.  I'm ignoring that for
now, and the library still installs fine.

Also, all the test does is to make sure all of the expected classes
can be loaded in a simple perl script.  It doesn't actually use the
classes to access anything or do anything, it basically is just
checking to make sure that all of the parent classes (DBIx::Class,
etc) are installed.
