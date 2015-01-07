use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::TmcpeData;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::TmcpeData

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<public.tmcpe_data>

=cut

__PACKAGE__->table("public.tmcpe_data");

=head1 ACCESSORS

=head2 vdsid

  data_type: 'integer'
  is_nullable: 1

=head2 stamp

  data_type: 'timestamp'
  is_nullable: 1

=head2 o_vol

  data_type: 'smallint'
  is_nullable: 1

=head2 o_occ

  data_type: 'real'
  is_nullable: 1

=head2 o_spd

  data_type: 'real'
  is_nullable: 1

=head2 o_pct_obs

  data_type: 'smallint'
  is_nullable: 1

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
  "vdsid",
  { data_type => "integer", is_nullable => 1 },
  "stamp",
  { data_type => "timestamp", is_nullable => 1 },
  "o_vol",
  { data_type => "smallint", is_nullable => 1 },
  "o_occ",
  { data_type => "real", is_nullable => 1 },
  "o_spd",
  { data_type => "real", is_nullable => 1 },
  "o_pct_obs",
  { data_type => "smallint", is_nullable => 1 },
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


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:A/iaS5njXNJ9l1mqHZ8Zgg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
