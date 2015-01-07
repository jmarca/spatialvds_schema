use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::MeanOnrTripDistance;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::MeanOnrTripDistance

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<public.mean_onr_trip_distance>

=cut

__PACKAGE__->table("public.mean_onr_trip_distance");

=head1 ACCESSORS

=head2 vds_id

  data_type: 'integer'
  is_nullable: 1

=head2 geom_2230

  data_type: 'geometry'
  is_nullable: 1

=head2 count

  data_type: 'bigint'
  is_nullable: 1

=head2 avg_dist

  data_type: 'double precision'
  is_nullable: 1

=head2 avg_manhdist

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "vds_id",
  { data_type => "integer", is_nullable => 1 },
  "geom_2230",
  { data_type => "geometry", is_nullable => 1 },
  "count",
  { data_type => "bigint", is_nullable => 1 },
  "avg_dist",
  { data_type => "double precision", is_nullable => 1 },
  "avg_manhdist",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fU7DX52GeKl3/MH2Mk/GTw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
