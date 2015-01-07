use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::WimDataWeekday5min;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::WimDataWeekday5min

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.wim_data_weekday5min>

=cut

__PACKAGE__->table("public.wim_data_weekday5min");

=head1 ACCESSORS

=head2 site_no

  data_type: 'integer'
  is_nullable: 0

=head2 direction

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 facility

  data_type: 'integer'
  is_nullable: 0

=head2 data_year

  data_type: 'integer'
  is_nullable: 0

=head2 weekday

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 five_minute

  data_type: 'time'
  is_nullable: 0
  size: 6

=head2 observations

  data_type: 'integer'
  is_nullable: 0

=head2 vh_count

  data_type: 'integer'
  is_nullable: 1

=head2 vh_fraction

  data_type: 'real'
  is_nullable: 1

=head2 mean_interarrivals

  data_type: 'real'
  is_nullable: 1

=head2 mean_gross_weight

  data_type: 'real'
  is_nullable: 1

=head2 mean_veh_len

  data_type: 'real'
  is_nullable: 1

=head2 mean_speed

  data_type: 'real'
  is_nullable: 1

=head2 mean_total_axle_spacings

  data_type: 'real'
  is_nullable: 1

=head2 var_gross_weight

  data_type: 'real'
  is_nullable: 1

=head2 var_veh_len

  data_type: 'real'
  is_nullable: 1

=head2 var_speed

  data_type: 'real'
  is_nullable: 1

=head2 var_total_axle_spacings

  data_type: 'real'
  is_nullable: 1

=head2 vh_mean_interarrivals

  data_type: 'real'
  is_nullable: 1

=head2 vh_mean_gross_weight

  data_type: 'real'
  is_nullable: 1

=head2 vh_mean_veh_len

  data_type: 'real'
  is_nullable: 1

=head2 vh_mean_speed

  data_type: 'real'
  is_nullable: 1

=head2 vh_mean_total_axle_spacings

  data_type: 'real'
  is_nullable: 1

=head2 vh_var_gross_weight

  data_type: 'real'
  is_nullable: 1

=head2 vh_var_veh_len

  data_type: 'real'
  is_nullable: 1

=head2 vh_var_speed

  data_type: 'real'
  is_nullable: 1

=head2 vh_var_total_axle_spacings

  data_type: 'real'
  is_nullable: 1

=head2 nvh_mean_interarrivals

  data_type: 'real'
  is_nullable: 1

=head2 nvh_mean_gross_weight

  data_type: 'real'
  is_nullable: 1

=head2 nvh_mean_veh_len

  data_type: 'real'
  is_nullable: 1

=head2 nvh_mean_speed

  data_type: 'real'
  is_nullable: 1

=head2 nvh_mean_total_axle_spacings

  data_type: 'real'
  is_nullable: 1

=head2 nvh_var_gross_weight

  data_type: 'real'
  is_nullable: 1

=head2 nvh_var_veh_len

  data_type: 'real'
  is_nullable: 1

=head2 nvh_var_speed

  data_type: 'real'
  is_nullable: 1

=head2 nvh_var_total_axle_spacings

  data_type: 'real'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "site_no",
  { data_type => "integer", is_nullable => 0 },
  "direction",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "facility",
  { data_type => "integer", is_nullable => 0 },
  "data_year",
  { data_type => "integer", is_nullable => 0 },
  "weekday",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "five_minute",
  { data_type => "time", is_nullable => 0, size => 6 },
  "observations",
  { data_type => "integer", is_nullable => 0 },
  "vh_count",
  { data_type => "integer", is_nullable => 1 },
  "vh_fraction",
  { data_type => "real", is_nullable => 1 },
  "mean_interarrivals",
  { data_type => "real", is_nullable => 1 },
  "mean_gross_weight",
  { data_type => "real", is_nullable => 1 },
  "mean_veh_len",
  { data_type => "real", is_nullable => 1 },
  "mean_speed",
  { data_type => "real", is_nullable => 1 },
  "mean_total_axle_spacings",
  { data_type => "real", is_nullable => 1 },
  "var_gross_weight",
  { data_type => "real", is_nullable => 1 },
  "var_veh_len",
  { data_type => "real", is_nullable => 1 },
  "var_speed",
  { data_type => "real", is_nullable => 1 },
  "var_total_axle_spacings",
  { data_type => "real", is_nullable => 1 },
  "vh_mean_interarrivals",
  { data_type => "real", is_nullable => 1 },
  "vh_mean_gross_weight",
  { data_type => "real", is_nullable => 1 },
  "vh_mean_veh_len",
  { data_type => "real", is_nullable => 1 },
  "vh_mean_speed",
  { data_type => "real", is_nullable => 1 },
  "vh_mean_total_axle_spacings",
  { data_type => "real", is_nullable => 1 },
  "vh_var_gross_weight",
  { data_type => "real", is_nullable => 1 },
  "vh_var_veh_len",
  { data_type => "real", is_nullable => 1 },
  "vh_var_speed",
  { data_type => "real", is_nullable => 1 },
  "vh_var_total_axle_spacings",
  { data_type => "real", is_nullable => 1 },
  "nvh_mean_interarrivals",
  { data_type => "real", is_nullable => 1 },
  "nvh_mean_gross_weight",
  { data_type => "real", is_nullable => 1 },
  "nvh_mean_veh_len",
  { data_type => "real", is_nullable => 1 },
  "nvh_mean_speed",
  { data_type => "real", is_nullable => 1 },
  "nvh_mean_total_axle_spacings",
  { data_type => "real", is_nullable => 1 },
  "nvh_var_gross_weight",
  { data_type => "real", is_nullable => 1 },
  "nvh_var_veh_len",
  { data_type => "real", is_nullable => 1 },
  "nvh_var_speed",
  { data_type => "real", is_nullable => 1 },
  "nvh_var_total_axle_spacings",
  { data_type => "real", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</weekday>

=item * L</five_minute>

=item * L</site_no>

=item * L</direction>

=item * L</facility>

=item * L</data_year>

=back

=cut

__PACKAGE__->set_primary_key(
  "weekday",
  "five_minute",
  "site_no",
  "direction",
  "facility",
  "data_year",
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:K6kPhtbos4MTxyQv+RHrpA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
