use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::P5mt;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::P5mt

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.p5mt>

=cut

__PACKAGE__->table("public.p5mt");

=head1 ACCESSORS

=head2 stamp

  data_type: 'timestamp'
  is_nullable: 0

=head2 vdsid

  data_type: 'integer'
  is_nullable: 0

=head2 seg_len

  data_type: 'real'
  is_nullable: 1

=head2 samples_all

  data_type: 'smallint'
  is_nullable: 1

=head2 pct_obs_all

  data_type: 'smallint'
  is_nullable: 1

=head2 cnt_all

  data_type: 'smallint'
  is_nullable: 1

=head2 occ_all

  data_type: 'real'
  is_nullable: 1

=head2 spd_all

  data_type: 'real'
  is_nullable: 1

=head2 samples_1

  data_type: 'smallint'
  is_nullable: 1

=head2 cnt_1

  data_type: 'smallint'
  is_nullable: 1

=head2 occ_1

  data_type: 'real'
  is_nullable: 1

=head2 spd_1

  data_type: 'real'
  is_nullable: 1

=head2 obs_1

  data_type: 'boolean'
  is_nullable: 1

=head2 samples_2

  data_type: 'smallint'
  is_nullable: 1

=head2 cnt_2

  data_type: 'smallint'
  is_nullable: 1

=head2 occ_2

  data_type: 'real'
  is_nullable: 1

=head2 spd_2

  data_type: 'real'
  is_nullable: 1

=head2 obs_2

  data_type: 'boolean'
  is_nullable: 1

=head2 samples_3

  data_type: 'smallint'
  is_nullable: 1

=head2 cnt_3

  data_type: 'smallint'
  is_nullable: 1

=head2 occ_3

  data_type: 'real'
  is_nullable: 1

=head2 spd_3

  data_type: 'real'
  is_nullable: 1

=head2 obs_3

  data_type: 'boolean'
  is_nullable: 1

=head2 samples_4

  data_type: 'smallint'
  is_nullable: 1

=head2 cnt_4

  data_type: 'smallint'
  is_nullable: 1

=head2 occ_4

  data_type: 'real'
  is_nullable: 1

=head2 spd_4

  data_type: 'real'
  is_nullable: 1

=head2 obs_4

  data_type: 'boolean'
  is_nullable: 1

=head2 samples_5

  data_type: 'smallint'
  is_nullable: 1

=head2 cnt_5

  data_type: 'smallint'
  is_nullable: 1

=head2 occ_5

  data_type: 'real'
  is_nullable: 1

=head2 spd_5

  data_type: 'real'
  is_nullable: 1

=head2 obs_5

  data_type: 'boolean'
  is_nullable: 1

=head2 samples_6

  data_type: 'smallint'
  is_nullable: 1

=head2 cnt_6

  data_type: 'smallint'
  is_nullable: 1

=head2 occ_6

  data_type: 'real'
  is_nullable: 1

=head2 spd_6

  data_type: 'real'
  is_nullable: 1

=head2 obs_6

  data_type: 'boolean'
  is_nullable: 1

=head2 samples_7

  data_type: 'smallint'
  is_nullable: 1

=head2 cnt_7

  data_type: 'smallint'
  is_nullable: 1

=head2 occ_7

  data_type: 'real'
  is_nullable: 1

=head2 spd_7

  data_type: 'real'
  is_nullable: 1

=head2 obs_7

  data_type: 'boolean'
  is_nullable: 1

=head2 samples_8

  data_type: 'smallint'
  is_nullable: 1

=head2 cnt_8

  data_type: 'smallint'
  is_nullable: 1

=head2 occ_8

  data_type: 'real'
  is_nullable: 1

=head2 spd_8

  data_type: 'real'
  is_nullable: 1

=head2 obs_8

  data_type: 'boolean'
  is_nullable: 1

=head2 calendar_key

  data_type: 'date'
  is_nullable: 1

=head2 time_key

  data_type: 'time'
  is_nullable: 1
  size: 6

=cut

__PACKAGE__->add_columns(
  "stamp",
  { data_type => "timestamp", is_nullable => 0 },
  "vdsid",
  { data_type => "integer", is_nullable => 0 },
  "seg_len",
  { data_type => "real", is_nullable => 1 },
  "samples_all",
  { data_type => "smallint", is_nullable => 1 },
  "pct_obs_all",
  { data_type => "smallint", is_nullable => 1 },
  "cnt_all",
  { data_type => "smallint", is_nullable => 1 },
  "occ_all",
  { data_type => "real", is_nullable => 1 },
  "spd_all",
  { data_type => "real", is_nullable => 1 },
  "samples_1",
  { data_type => "smallint", is_nullable => 1 },
  "cnt_1",
  { data_type => "smallint", is_nullable => 1 },
  "occ_1",
  { data_type => "real", is_nullable => 1 },
  "spd_1",
  { data_type => "real", is_nullable => 1 },
  "obs_1",
  { data_type => "boolean", is_nullable => 1 },
  "samples_2",
  { data_type => "smallint", is_nullable => 1 },
  "cnt_2",
  { data_type => "smallint", is_nullable => 1 },
  "occ_2",
  { data_type => "real", is_nullable => 1 },
  "spd_2",
  { data_type => "real", is_nullable => 1 },
  "obs_2",
  { data_type => "boolean", is_nullable => 1 },
  "samples_3",
  { data_type => "smallint", is_nullable => 1 },
  "cnt_3",
  { data_type => "smallint", is_nullable => 1 },
  "occ_3",
  { data_type => "real", is_nullable => 1 },
  "spd_3",
  { data_type => "real", is_nullable => 1 },
  "obs_3",
  { data_type => "boolean", is_nullable => 1 },
  "samples_4",
  { data_type => "smallint", is_nullable => 1 },
  "cnt_4",
  { data_type => "smallint", is_nullable => 1 },
  "occ_4",
  { data_type => "real", is_nullable => 1 },
  "spd_4",
  { data_type => "real", is_nullable => 1 },
  "obs_4",
  { data_type => "boolean", is_nullable => 1 },
  "samples_5",
  { data_type => "smallint", is_nullable => 1 },
  "cnt_5",
  { data_type => "smallint", is_nullable => 1 },
  "occ_5",
  { data_type => "real", is_nullable => 1 },
  "spd_5",
  { data_type => "real", is_nullable => 1 },
  "obs_5",
  { data_type => "boolean", is_nullable => 1 },
  "samples_6",
  { data_type => "smallint", is_nullable => 1 },
  "cnt_6",
  { data_type => "smallint", is_nullable => 1 },
  "occ_6",
  { data_type => "real", is_nullable => 1 },
  "spd_6",
  { data_type => "real", is_nullable => 1 },
  "obs_6",
  { data_type => "boolean", is_nullable => 1 },
  "samples_7",
  { data_type => "smallint", is_nullable => 1 },
  "cnt_7",
  { data_type => "smallint", is_nullable => 1 },
  "occ_7",
  { data_type => "real", is_nullable => 1 },
  "spd_7",
  { data_type => "real", is_nullable => 1 },
  "obs_7",
  { data_type => "boolean", is_nullable => 1 },
  "samples_8",
  { data_type => "smallint", is_nullable => 1 },
  "cnt_8",
  { data_type => "smallint", is_nullable => 1 },
  "occ_8",
  { data_type => "real", is_nullable => 1 },
  "spd_8",
  { data_type => "real", is_nullable => 1 },
  "obs_8",
  { data_type => "boolean", is_nullable => 1 },
  "calendar_key",
  { data_type => "date", is_nullable => 1 },
  "time_key",
  { data_type => "time", is_nullable => 1, size => 6 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xR1HNlG1LTIwrEZ6mSiIzA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
