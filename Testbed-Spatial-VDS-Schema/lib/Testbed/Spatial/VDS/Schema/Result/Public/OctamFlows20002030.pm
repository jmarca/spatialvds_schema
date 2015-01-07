use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::OctamFlows20002030;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::OctamFlows20002030

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.octam_flows_2000_2030>

=cut

__PACKAGE__->table("public.octam_flows_2000_2030");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_nullable: 0

=head2 ab_flow_day_pce_2000

  data_type: 'double precision'
  is_nullable: 1

=head2 ba_flow_day_pce_2000

  data_type: 'double precision'
  is_nullable: 1

=head2 tot_flow_day_pce_2000

  data_type: 'double precision'
  is_nullable: 1

=head2 ab_flow_am_pce_2000

  data_type: 'double precision'
  is_nullable: 1

=head2 ba_flow_am_pce_2000

  data_type: 'double precision'
  is_nullable: 1

=head2 tot_flow_am_pce_2000

  data_type: 'double precision'
  is_nullable: 1

=head2 ab_flow_pm_pce_2000

  data_type: 'double precision'
  is_nullable: 1

=head2 ba_flow_pm_pce_2000

  data_type: 'double precision'
  is_nullable: 1

=head2 tot_flow_pm_pce_2000

  data_type: 'double precision'
  is_nullable: 1

=head2 ab_flow_day_pce_2030

  data_type: 'double precision'
  is_nullable: 1

=head2 ba_flow_day_pce_2030

  data_type: 'double precision'
  is_nullable: 1

=head2 tot_flow_day_pce_2030

  data_type: 'double precision'
  is_nullable: 1

=head2 ab_flow_am_pce_2030

  data_type: 'double precision'
  is_nullable: 1

=head2 ba_flow_am_pce_2030

  data_type: 'double precision'
  is_nullable: 1

=head2 tot_flow_am_pce_2030

  data_type: 'double precision'
  is_nullable: 1

=head2 ab_flow_pm_pce_2030

  data_type: 'double precision'
  is_nullable: 1

=head2 ba_flow_pm_pce_2030

  data_type: 'double precision'
  is_nullable: 1

=head2 tot_flow_pm_pce_2030

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_nullable => 0 },
  "ab_flow_day_pce_2000",
  { data_type => "double precision", is_nullable => 1 },
  "ba_flow_day_pce_2000",
  { data_type => "double precision", is_nullable => 1 },
  "tot_flow_day_pce_2000",
  { data_type => "double precision", is_nullable => 1 },
  "ab_flow_am_pce_2000",
  { data_type => "double precision", is_nullable => 1 },
  "ba_flow_am_pce_2000",
  { data_type => "double precision", is_nullable => 1 },
  "tot_flow_am_pce_2000",
  { data_type => "double precision", is_nullable => 1 },
  "ab_flow_pm_pce_2000",
  { data_type => "double precision", is_nullable => 1 },
  "ba_flow_pm_pce_2000",
  { data_type => "double precision", is_nullable => 1 },
  "tot_flow_pm_pce_2000",
  { data_type => "double precision", is_nullable => 1 },
  "ab_flow_day_pce_2030",
  { data_type => "double precision", is_nullable => 1 },
  "ba_flow_day_pce_2030",
  { data_type => "double precision", is_nullable => 1 },
  "tot_flow_day_pce_2030",
  { data_type => "double precision", is_nullable => 1 },
  "ab_flow_am_pce_2030",
  { data_type => "double precision", is_nullable => 1 },
  "ba_flow_am_pce_2030",
  { data_type => "double precision", is_nullable => 1 },
  "tot_flow_am_pce_2030",
  { data_type => "double precision", is_nullable => 1 },
  "ab_flow_pm_pce_2030",
  { data_type => "double precision", is_nullable => 1 },
  "ba_flow_pm_pce_2030",
  { data_type => "double precision", is_nullable => 1 },
  "tot_flow_pm_pce_2030",
  { data_type => "double precision", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XqabVWZGjQxzgDSDrvf4dw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
