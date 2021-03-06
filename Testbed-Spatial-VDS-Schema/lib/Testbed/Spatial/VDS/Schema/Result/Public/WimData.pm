use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::WimData;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::WimData

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.wim_data>

=cut

__PACKAGE__->table("public.wim_data");

=head1 ACCESSORS

=head2 site_no

  data_type: 'integer'
  is_nullable: 0

=head2 lane

  data_type: 'smallint'
  is_nullable: 0

=head2 ts

  data_type: 'timestamp'
  is_nullable: 0

=head2 veh_no

  data_type: 'integer'
  is_nullable: 0

=head2 veh_class

  data_type: 'smallint'
  is_nullable: 0

=head2 gross_weight

  data_type: 'real'
  is_nullable: 0

=head2 veh_len

  data_type: 'real'
  is_nullable: 0

=head2 speed

  data_type: 'real'
  is_nullable: 0

=head2 violation_code

  data_type: 'smallint'
  is_nullable: 0

=head2 axle_1_rt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_1_lt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_2_rt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_2_lt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_1_2_spacing

  data_type: 'real'
  is_nullable: 1

=head2 axle_3_rt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_3_lt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_2_3_spacing

  data_type: 'real'
  is_nullable: 1

=head2 axle_4_rt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_4_lt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_3_4_spacing

  data_type: 'real'
  is_nullable: 1

=head2 axle_5_rt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_5_lt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_4_5_spacing

  data_type: 'real'
  is_nullable: 1

=head2 axle_6_rt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_6_lt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_5_6_spacing

  data_type: 'real'
  is_nullable: 1

=head2 axle_7_rt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_7_lt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_6_7_spacing

  data_type: 'real'
  is_nullable: 1

=head2 axle_8_rt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_8_lt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_7_8_spacing

  data_type: 'real'
  is_nullable: 1

=head2 axle_9_rt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_9_lt_weight

  data_type: 'real'
  is_nullable: 1

=head2 axle_8_9_spacing

  data_type: 'real'
  is_nullable: 1

=head2 obs_no

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'wim_data_obs_no_seq'

=cut

__PACKAGE__->add_columns(
  "site_no",
  { data_type => "integer", is_nullable => 0 },
  "lane",
  { data_type => "smallint", is_nullable => 0 },
  "ts",
  { data_type => "timestamp", is_nullable => 0 },
  "veh_no",
  { data_type => "integer", is_nullable => 0 },
  "veh_class",
  { data_type => "smallint", is_nullable => 0 },
  "gross_weight",
  { data_type => "real", is_nullable => 0 },
  "veh_len",
  { data_type => "real", is_nullable => 0 },
  "speed",
  { data_type => "real", is_nullable => 0 },
  "violation_code",
  { data_type => "smallint", is_nullable => 0 },
  "axle_1_rt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_1_lt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_2_rt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_2_lt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_1_2_spacing",
  { data_type => "real", is_nullable => 1 },
  "axle_3_rt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_3_lt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_2_3_spacing",
  { data_type => "real", is_nullable => 1 },
  "axle_4_rt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_4_lt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_3_4_spacing",
  { data_type => "real", is_nullable => 1 },
  "axle_5_rt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_5_lt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_4_5_spacing",
  { data_type => "real", is_nullable => 1 },
  "axle_6_rt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_6_lt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_5_6_spacing",
  { data_type => "real", is_nullable => 1 },
  "axle_7_rt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_7_lt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_6_7_spacing",
  { data_type => "real", is_nullable => 1 },
  "axle_8_rt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_8_lt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_7_8_spacing",
  { data_type => "real", is_nullable => 1 },
  "axle_9_rt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_9_lt_weight",
  { data_type => "real", is_nullable => 1 },
  "axle_8_9_spacing",
  { data_type => "real", is_nullable => 1 },
  "obs_no",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "wim_data_obs_no_seq",
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</site_no>

=item * L</lane>

=item * L</ts>

=item * L</veh_no>

=back

=cut

__PACKAGE__->set_primary_key("site_no", "lane", "ts", "veh_no");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:U3szCh/KhoDi5NTSF8dJgA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
