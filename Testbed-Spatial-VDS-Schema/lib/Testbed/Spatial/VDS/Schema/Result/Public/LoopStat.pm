use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::LoopStat;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::LoopStat

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.loop_stats>

=cut

__PACKAGE__->table("public.loop_stats");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 estimate_time

  data_type: 'timestamp'
  is_nullable: 0

=head2 cv_occ_1

  data_type: 'numeric'
  is_nullable: 0

=head2 cv_occ_m

  data_type: 'numeric'
  is_nullable: 0

=head2 cv_occ_r

  data_type: 'numeric'
  is_nullable: 0

=head2 cv_volocc_1

  data_type: 'numeric'
  is_nullable: 0

=head2 cv_volocc_m

  data_type: 'numeric'
  is_nullable: 0

=head2 cv_volocc_r

  data_type: 'numeric'
  is_nullable: 0

=head2 corr_vol_1m

  data_type: 'numeric'
  is_nullable: 0

=head2 corr_vol_1r

  data_type: 'numeric'
  is_nullable: 0

=head2 corr_vol_mr

  data_type: 'numeric'
  is_nullable: 0

=head2 corr_occ_1m

  data_type: 'numeric'
  is_nullable: 0

=head2 corr_occ_1r

  data_type: 'numeric'
  is_nullable: 0

=head2 corr_occ_mr

  data_type: 'numeric'
  is_nullable: 0

=head2 corr_volocc_1m

  data_type: 'numeric'
  is_nullable: 0

=head2 corr_volocc_1r

  data_type: 'numeric'
  is_nullable: 0

=head2 corr_volocc_mr

  data_type: 'numeric'
  is_nullable: 0

=head2 lag1_vol_1

  data_type: 'numeric'
  is_nullable: 0

=head2 lag1_vol_m

  data_type: 'numeric'
  is_nullable: 0

=head2 lag1_vol_r

  data_type: 'numeric'
  is_nullable: 0

=head2 lag1_occ_1

  data_type: 'numeric'
  is_nullable: 0

=head2 lag1_occ_m

  data_type: 'numeric'
  is_nullable: 0

=head2 lag1_occ_r

  data_type: 'numeric'
  is_nullable: 0

=head2 mu_vol_1

  data_type: 'numeric'
  is_nullable: 0

=head2 mu_vol_m

  data_type: 'numeric'
  is_nullable: 0

=head2 mu_vol_r

  data_type: 'numeric'
  is_nullable: 0

=head2 sd_vol_1

  data_type: 'numeric'
  is_nullable: 0

=head2 sd_vol_m

  data_type: 'numeric'
  is_nullable: 0

=head2 sd_vol_r

  data_type: 'numeric'
  is_nullable: 0

=head2 corr_occ_1m_x_mu_vol_m

  data_type: 'numeric'
  is_nullable: 0

=head2 corr_occ_1m_x_sd_vol_r

  data_type: 'numeric'
  is_nullable: 0

=head2 corr_occ_1m_x_lag1_occ_r

  data_type: 'numeric'
  is_nullable: 0

=head2 cv_volocc_1_x_corr_volocc_1m

  data_type: 'numeric'
  is_nullable: 0

=head2 occ_1

  data_type: 'numeric'
  is_nullable: 1

=head2 occ_m

  data_type: 'numeric'
  is_nullable: 1

=head2 occ_r

  data_type: 'numeric'
  is_nullable: 1

=head2 vol_1

  data_type: 'numeric'
  is_nullable: 1

=head2 vol_m

  data_type: 'numeric'
  is_nullable: 1

=head2 vol_r

  data_type: 'numeric'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "estimate_time",
  { data_type => "timestamp", is_nullable => 0 },
  "cv_occ_1",
  { data_type => "numeric", is_nullable => 0 },
  "cv_occ_m",
  { data_type => "numeric", is_nullable => 0 },
  "cv_occ_r",
  { data_type => "numeric", is_nullable => 0 },
  "cv_volocc_1",
  { data_type => "numeric", is_nullable => 0 },
  "cv_volocc_m",
  { data_type => "numeric", is_nullable => 0 },
  "cv_volocc_r",
  { data_type => "numeric", is_nullable => 0 },
  "corr_vol_1m",
  { data_type => "numeric", is_nullable => 0 },
  "corr_vol_1r",
  { data_type => "numeric", is_nullable => 0 },
  "corr_vol_mr",
  { data_type => "numeric", is_nullable => 0 },
  "corr_occ_1m",
  { data_type => "numeric", is_nullable => 0 },
  "corr_occ_1r",
  { data_type => "numeric", is_nullable => 0 },
  "corr_occ_mr",
  { data_type => "numeric", is_nullable => 0 },
  "corr_volocc_1m",
  { data_type => "numeric", is_nullable => 0 },
  "corr_volocc_1r",
  { data_type => "numeric", is_nullable => 0 },
  "corr_volocc_mr",
  { data_type => "numeric", is_nullable => 0 },
  "lag1_vol_1",
  { data_type => "numeric", is_nullable => 0 },
  "lag1_vol_m",
  { data_type => "numeric", is_nullable => 0 },
  "lag1_vol_r",
  { data_type => "numeric", is_nullable => 0 },
  "lag1_occ_1",
  { data_type => "numeric", is_nullable => 0 },
  "lag1_occ_m",
  { data_type => "numeric", is_nullable => 0 },
  "lag1_occ_r",
  { data_type => "numeric", is_nullable => 0 },
  "mu_vol_1",
  { data_type => "numeric", is_nullable => 0 },
  "mu_vol_m",
  { data_type => "numeric", is_nullable => 0 },
  "mu_vol_r",
  { data_type => "numeric", is_nullable => 0 },
  "sd_vol_1",
  { data_type => "numeric", is_nullable => 0 },
  "sd_vol_m",
  { data_type => "numeric", is_nullable => 0 },
  "sd_vol_r",
  { data_type => "numeric", is_nullable => 0 },
  "corr_occ_1m_x_mu_vol_m",
  { data_type => "numeric", is_nullable => 0 },
  "corr_occ_1m_x_sd_vol_r",
  { data_type => "numeric", is_nullable => 0 },
  "corr_occ_1m_x_lag1_occ_r",
  { data_type => "numeric", is_nullable => 0 },
  "cv_volocc_1_x_corr_volocc_1m",
  { data_type => "numeric", is_nullable => 0 },
  "occ_1",
  { data_type => "numeric", is_nullable => 1 },
  "occ_m",
  { data_type => "numeric", is_nullable => 1 },
  "occ_r",
  { data_type => "numeric", is_nullable => 1 },
  "vol_1",
  { data_type => "numeric", is_nullable => 1 },
  "vol_m",
  { data_type => "numeric", is_nullable => 1 },
  "vol_r",
  { data_type => "numeric", is_nullable => 1 },
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

=head2 vds_stats

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsStat>

=cut

__PACKAGE__->has_many(
  "vds_stats",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsStat",
  { "foreign.stats_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds

Type: many_to_many

Composing rels: L</vds_stats> -> vd

=cut

__PACKAGE__->many_to_many("vds", "vds_stats", "vd");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:03XIjhpXkXWQ31SjEFZayQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
