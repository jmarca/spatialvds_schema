perl -MDBIx::Class::Schema::Loader=make_schema_at,dump_to_dir:./lib -e 'make_schema_at("Testbed::Spatial::VDS::Schema::Public",{debug=>0,db_schema=>\'public\'} , [ "dbi:Pg:dbname=spatialvds;host=metis.its.uci.edu", "slash", "secret"])'

perl -MDBIx::Class::Schema::Loader=make_schema_at,dump_to_dir:./lib -e 'make_schema_at("Testbed::Spatial::VDS::Schema::HSIS",{debug=>0,db_schema=>\'hsis\'} , [ "dbi:Pg:dbname=spatialvds;host=metis.its.uci.edu", "slash", "secret"])'

perl -MDBIx::Class::Schema::Loader=make_schema_at,dump_to_dir:./lib -e 'make_schema_at("Testbed::Spatial::VDS::Schema::WIM",{debug=>0,db_schema=>\'wim\'} , [ "dbi:Pg:dbname=spatialvds;host=metis.its.uci.edu", "slash", "secret"])'

perl -MDBIx::Class::Schema::Loader=make_schema_at,dump_to_dir:./lib -e "make_schema_at(\"Testbed::Spatial::VDS::Schema::NewCTMLMap\",{debug=>0,db_schema=>'newctmlmap'} , [ \"dbi:Pg:dbname=spatialvds;host=metis.its.uci.edu\", \"slash\", \"secret\"])"

perl -MDBIx::Class::Schema::Loader=make_schema_at,dump_to_dir:./lib -e "make_schema_at(\"Testbed::Spatial::VDS::Schema::OSM::TempSeg\",{debug=>0,db_schema=>'tempseg'} , [ \"dbi:Pg:dbname=osm;host=metis.its.uci.edu\", \"slash\"])"
