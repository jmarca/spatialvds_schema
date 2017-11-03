use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::LoopSummaryStat;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::LoopSummaryStat

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.loop_summary_stats>

=cut

__PACKAGE__->table("public.loop_summary_stats");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 estimate_time

  data_type: 'timestamp'
  is_nullable: 0

=head2 interval_seconds

  data_type: 'integer'
  is_nullable: 0

=head2 mu_volocc

  data_type: 'numeric'
  is_nullable: 0

=head2 min_volocc

  data_type: 'numeric'
  is_nullable: 0

=head2 max_volocc

  data_type: 'numeric'
  is_nullable: 0

=head2 mu_vol

  data_type: 'numeric'
  is_nullable: 0

=head2 min_vol

  data_type: 'numeric'
  is_nullable: 0

=head2 max_vol

  data_type: 'numeric'
  is_nullable: 0

=head2 sd_vol

  data_type: 'numeric'
  is_nullable: 0

=head2 sum_vol

  data_type: 'numeric'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "estimate_time",
  { data_type => "timestamp", is_nullable => 0 },
  "interval_seconds",
  { data_type => "integer", is_nullable => 0 },
  "mu_volocc",
  { data_type => "numeric", is_nullable => 0 },
  "min_volocc",
  { data_type => "numeric", is_nullable => 0 },
  "max_volocc",
  { data_type => "numeric", is_nullable => 0 },
  "mu_vol",
  { data_type => "numeric", is_nullable => 0 },
  "min_vol",
  { data_type => "numeric", is_nullable => 0 },
  "max_vol",
  { data_type => "numeric", is_nullable => 0 },
  "sd_vol",
  { data_type => "numeric", is_nullable => 0 },
  "sum_vol",
  { data_type => "numeric", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 statsid

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::StatsId>

=cut

__PACKAGE__->belongs_to(
  "statsid",
  "Testbed::Spatial::VDS::Schema::Result::Public::StatsId",
  { id => "id" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "NO ACTION" },
);

=head2 vds_summarystats

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsSummarystat>

=cut

__PACKAGE__->has_many(
  "vds_summarystats",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsSummarystat",
  { "foreign.stats_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds

Type: many_to_many

Composing rels: L</vds_summarystats> -> vd

=cut

__PACKAGE__->many_to_many("vds", "vds_summarystats", "vd");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nQcLlqIFPSMe8cX8QDsEtA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
