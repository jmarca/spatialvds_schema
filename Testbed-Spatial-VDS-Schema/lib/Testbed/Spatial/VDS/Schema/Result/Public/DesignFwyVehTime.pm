use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::DesignFwyVehTime;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::DesignFwyVehTime

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<public.design_fwy_veh_time>

=cut

__PACKAGE__->table("public.design_fwy_veh_time");

=head1 ACCESSORS

=head2 obs_no

  data_type: 'integer'
  is_nullable: 1

=head2 site_no

  data_type: 'integer'
  is_nullable: 1

=head2 district_id

  data_type: 'integer'
  is_nullable: 1

=head2 fwydir

  data_type: 'text'
  is_nullable: 1

=head2 dow

  data_type: 'text'
  is_nullable: 1

=head2 timeofday

  data_type: 'text'
  is_nullable: 1

=head2 fouraxle

  data_type: 'integer'
  is_nullable: 1

=head2 heavytruck

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "obs_no",
  { data_type => "integer", is_nullable => 1 },
  "site_no",
  { data_type => "integer", is_nullable => 1 },
  "district_id",
  { data_type => "integer", is_nullable => 1 },
  "fwydir",
  { data_type => "text", is_nullable => 1 },
  "dow",
  { data_type => "text", is_nullable => 1 },
  "timeofday",
  { data_type => "text", is_nullable => 1 },
  "fouraxle",
  { data_type => "integer", is_nullable => 1 },
  "heavytruck",
  { data_type => "integer", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:12esliau5LECBf8556aGLQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
