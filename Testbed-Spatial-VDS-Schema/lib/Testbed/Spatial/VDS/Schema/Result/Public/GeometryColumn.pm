use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::GeometryColumn;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::GeometryColumn

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<public.geometry_columns>

=cut

__PACKAGE__->table("public.geometry_columns");

=head1 ACCESSORS

=head2 f_table_catalog

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=head2 f_table_schema

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=head2 f_table_name

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=head2 f_geometry_column

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=head2 coord_dimension

  data_type: 'integer'
  is_nullable: 1

=head2 srid

  data_type: 'integer'
  is_nullable: 1

=head2 type

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=cut

__PACKAGE__->add_columns(
  "f_table_catalog",
  { data_type => "varchar", is_nullable => 1, size => 256 },
  "f_table_schema",
  { data_type => "varchar", is_nullable => 1, size => 256 },
  "f_table_name",
  { data_type => "varchar", is_nullable => 1, size => 256 },
  "f_geometry_column",
  { data_type => "varchar", is_nullable => 1, size => 256 },
  "coord_dimension",
  { data_type => "integer", is_nullable => 1 },
  "srid",
  { data_type => "integer", is_nullable => 1 },
  "type",
  { data_type => "varchar", is_nullable => 1, size => 30 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:TWn2rgcRunpiNuswr/rcQQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
