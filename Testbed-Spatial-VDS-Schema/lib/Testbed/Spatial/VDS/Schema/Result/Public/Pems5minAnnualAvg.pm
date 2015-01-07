use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::Pems5minAnnualAvg;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::Pems5minAnnualAvg

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.pems_5min_annual_avg>

=cut

__PACKAGE__->table("public.pems_5min_annual_avg");

=head1 ACCESSORS

=head2 stamp

  data_type: 'timestamp'
  is_nullable: 0

=head2 vdsid

  data_type: 'integer'
  is_nullable: 0

=head2 days_in_avg

  data_type: 'smallint'
  is_nullable: 1

=head2 avg_samples

  data_type: 'smallint'
  is_nullable: 1

=head2 a_pct_obs

  data_type: 'double precision'
  is_nullable: 1

=head2 a_vol

  data_type: 'double precision'
  is_nullable: 1

=head2 a_occ

  data_type: 'double precision'
  is_nullable: 1

=head2 a_spd

  data_type: 'double precision'
  is_nullable: 1

=head2 sd_vol

  data_type: 'double precision'
  is_nullable: 1

=head2 sd_occ

  data_type: 'double precision'
  is_nullable: 1

=head2 sd_spd

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "stamp",
  { data_type => "timestamp", is_nullable => 0 },
  "vdsid",
  { data_type => "integer", is_nullable => 0 },
  "days_in_avg",
  { data_type => "smallint", is_nullable => 1 },
  "avg_samples",
  { data_type => "smallint", is_nullable => 1 },
  "a_pct_obs",
  { data_type => "double precision", is_nullable => 1 },
  "a_vol",
  { data_type => "double precision", is_nullable => 1 },
  "a_occ",
  { data_type => "double precision", is_nullable => 1 },
  "a_spd",
  { data_type => "double precision", is_nullable => 1 },
  "sd_vol",
  { data_type => "double precision", is_nullable => 1 },
  "sd_occ",
  { data_type => "double precision", is_nullable => 1 },
  "sd_spd",
  { data_type => "double precision", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</stamp>

=item * L</vdsid>

=back

=cut

__PACKAGE__->set_primary_key("stamp", "vdsid");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Uj8MVW2k5GlItC3pDFK3zQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
