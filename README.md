# The perl files for accessing spatialvds database

This is the new home of the perl libs for accessing spatialvds.

To generate or regenerate if you change the db, edit
`public_schema.json` as necessary, and then run:

```
dbicdump public_schema.json
```

and cross your fingers


## Some tips on regenerating

First you need to make sure none of the old library is installed.  If
it *is* installed, the resulting libraries will be super long...top
half will be the old lib, bottom half the new one.  Super ugly.  So
just uninstall the old stuff, or find and delete, etc.

Second, as of this writing (November 2017) there is a bug in dbicdump
when it processes some of the foreign keys in the database.  The
result is relationship names called `""`, which of course is not going
to work.  In the past apparently that worked fine, but with recent
versions of perl and DBIx::Class, it crashes.

So after generating the library, look through the generated classes
for the pattern "".  One command that works is

```
grep '""' * -R
```

Then go into those files and fix them.  For example, the file
`lib/Testbed/Spatial/VDS/Schema/Result/Public/LoopStat.pm` was
recently fixed with the following (looking at `git log -p`)

```
--- a/Testbed-Spatial-VDS-Schema/lib/Testbed/Spatial/VDS/Schema/Result/Public/LoopStat.pm
+++ b/Testbed-Spatial-VDS-Schema/lib/Testbed/Spatial/VDS/Schema/Result/Public/LoopStat.pm
@@ -316,7 +316,7 @@ __PACKAGE__->set_primary_key("id");

 =head1 RELATIONS

-=head2
+=head2 statsid

 Type: belongs_to

@@ -325,7 +325,7 @@ Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::StatsId>
 =cut

 __PACKAGE__->belongs_to(
-  "",
+  "statsid",
   "Testbed::Spatial::VDS::Schema::Result::Public::StatsId",
   { id => "id" },
   { is_deferrable => 0, on_delete => "CASCADE", on_update => "NO ACTION" },
```

The foreign key belongs to `StatsId`, so I just added "statsid" to the
`=head2` perldoc, and added `"statsid"` in place of the `""` in the
`belongs_to()` call.


With those edits, it should be the case that the tests will all pass
when you run make test or ./Build test.

Finally, if new tables are added to the database and they get picked
up by dbicdump, then you should add those packages to the test file
`./Testbed-Spatial-VDS-Schema/t/00.load.t`.

# passwords

In order to access the database when running dbicdump, you need to set
up a pgpass file as described here:
<http://www.postgresql.org/docs/9.4/static/libpq-pgpass.html>

Make sure to follow the correct instructions for windows or Linux

## okay with what is there

In 2016 or so, I ran the dbic script, then the module starter stuff,
to create perl modules.

To install these packages on a new computer, assuming the database is
still the same (or that you don't care about accessing new tables),
all you have to do is to cd into the Testbed-Spatial-VDS-Schema
directory, then as appropriate for your distro (windows, linux, mac,
etc) run

```
perl Build.PL
./Build
./Build test
sudo ./Build install
```

to install the libraries to use with other packages.  You can also run
`perl Makefile.PL && make && make test && sudo make install` if you
prefer make over Build.


Note that the `perl Build.PL` (or `perl Makefile.PL`) part will
complain about missing kit and metadata.  I'm ignoring that for now,
and the library still installs fine.

Also, all the test does is to make sure all of the expected classes
can be loaded in a simple perl script.  It doesn't actually use the
classes to access anything or do anything, it basically is just
checking to make sure that all of the parent classes (DBIx::Class,
etc) are installed.  This means you don't need to have access to the
database to build and install this library.  But of course, you *do*
need access to actually use the library files.
