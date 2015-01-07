use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::StatsId;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::StatsId

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.stats_ids>

=cut

__PACKAGE__->table("public.stats_ids");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'stats_ids_id_seq'

=head2 dummy

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "stats_ids_id_seq",
  },
  "dummy",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 accident_risk_result

Type: might_have

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::AccidentRiskResult>

=cut

__PACKAGE__->might_have(
  "accident_risk_result",
  "Testbed::Spatial::VDS::Schema::Result::Public::AccidentRiskResult",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 loop_stat

Type: might_have

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::LoopStat>

=cut

__PACKAGE__->might_have(
  "loop_stat",
  "Testbed::Spatial::VDS::Schema::Result::Public::LoopStat",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 loop_summary_stat

Type: might_have

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::LoopSummaryStat>

=cut

__PACKAGE__->might_have(
  "loop_summary_stat",
  "Testbed::Spatial::VDS::Schema::Result::Public::LoopSummaryStat",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RhnfjyjMyx0MfJuvl8vPTg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
