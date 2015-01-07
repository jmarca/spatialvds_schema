use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::Vd;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::Vd

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.vds>

=cut

__PACKAGE__->table("public.vds");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'vds_id_seq'

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 freeway_dir

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 lanes

  data_type: 'integer'
  is_nullable: 0

=head2 cal_pm

  data_type: 'varchar'
  is_nullable: 0
  size: 12

=head2 abs_pm

  data_type: 'double precision'
  is_nullable: 0

=head2 latitude

  data_type: 'numeric'
  is_nullable: 1

=head2 longitude

  data_type: 'numeric'
  is_nullable: 1

=head2 last_modified

  data_type: 'date'
  is_nullable: 1

=head2 length

  data_type: 'numeric'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "vds_id_seq",
  },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "freeway_dir",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "lanes",
  { data_type => "integer", is_nullable => 0 },
  "cal_pm",
  { data_type => "varchar", is_nullable => 0, size => 12 },
  "abs_pm",
  { data_type => "double precision", is_nullable => 0 },
  "latitude",
  { data_type => "numeric", is_nullable => 1 },
  "longitude",
  { data_type => "numeric", is_nullable => 1 },
  "last_modified",
  { data_type => "date", is_nullable => 1 },
  "length",
  { data_type => "numeric", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 accident_risk_results

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::AccidentRiskResult>

=cut

__PACKAGE__->has_many(
  "accident_risk_results",
  "Testbed::Spatial::VDS::Schema::Result::Public::AccidentRiskResult",
  { "foreign.vds_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds_haspems5min

Type: might_have

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsHaspems5min>

=cut

__PACKAGE__->might_have(
  "vds_haspems5min",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsHaspems5min",
  { "foreign.vds_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds_stats

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsStat>

=cut

__PACKAGE__->has_many(
  "vds_stats",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsStat",
  { "foreign.vds_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds_summarystats

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsSummarystat>

=cut

__PACKAGE__->has_many(
  "vds_summarystats",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsSummarystat",
  { "foreign.vds_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds_taz_intersections

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsTazIntersection>

=cut

__PACKAGE__->has_many(
  "vds_taz_intersections",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsTazIntersection",
  { "foreign.vds_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds_taz_intersections_alts

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsTazIntersectionsAlt>

=cut

__PACKAGE__->has_many(
  "vds_taz_intersections_alts",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsTazIntersectionsAlt",
  { "foreign.vds_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds_taz_intersections_simples

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsTazIntersectionsSimple>

=cut

__PACKAGE__->has_many(
  "vds_taz_intersections_simples",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsTazIntersectionsSimple",
  { "foreign.vds_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds_wim_distances

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsWimDistance>

=cut

__PACKAGE__->has_many(
  "vds_wim_distances",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsWimDistance",
  { "foreign.vds_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 stats

Type: many_to_many

Composing rels: L</vds_stats> -> stat

=cut

__PACKAGE__->many_to_many("stats", "vds_stats", "stat");

=head2 stats_2s

Type: many_to_many

Composing rels: L</vds_summarystats> -> stat

=cut

__PACKAGE__->many_to_many("stats_2s", "vds_summarystats", "stat");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LRAK9RcY5wMG0nxgzeA32Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
