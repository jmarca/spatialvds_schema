use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::AccidentRiskResult;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::AccidentRiskResult

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.accident_risk_results>

=cut

__PACKAGE__->table("public.accident_risk_results");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 estimate_time

  data_type: 'timestamp'
  is_nullable: 0

=head2 model_name

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 odds

  data_type: 'numeric'
  is_nullable: 0

=head2 vds_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "estimate_time",
  { data_type => "timestamp", is_nullable => 0 },
  "model_name",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "odds",
  { data_type => "numeric", is_nullable => 0 },
  "vds_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<accident_risk_results_vds_id_key>

=over 4

=item * L</vds_id>

=item * L</estimate_time>

=item * L</model_name>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "accident_risk_results_vds_id_key",
  ["vds_id", "estimate_time", "model_name"],
);

=head1 RELATIONS

=head2

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::StatsId>

=cut

__PACKAGE__->belongs_to(
  "",
  "Testbed::Spatial::VDS::Schema::Result::Public::StatsId",
  { id => "id" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "NO ACTION" },
);

=head2 vd

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::Vd>

=cut

__PACKAGE__->belongs_to(
  "vd",
  "Testbed::Spatial::VDS::Schema::Result::Public::Vd",
  { id => "vds_id" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Ml3HQ4B0vBn8oRxPXsg/9Q

use version; our $VERSION = qv("v1.2.3");

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
