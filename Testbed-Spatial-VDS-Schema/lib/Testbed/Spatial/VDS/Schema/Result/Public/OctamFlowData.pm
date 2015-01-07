use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::OctamFlowData;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::OctamFlowData

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.octam_flow_data>

=cut

__PACKAGE__->table("public.octam_flow_data");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_nullable: 0

=head2 ab_daily_volume

  data_type: 'double precision'
  is_nullable: 1

=head2 ba_daily_volume

  data_type: 'double precision'
  is_nullable: 1

=head2 tot_daily_volume

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_nullable => 0 },
  "ab_daily_volume",
  { data_type => "double precision", is_nullable => 1 },
  "ba_daily_volume",
  { data_type => "double precision", is_nullable => 1 },
  "tot_daily_volume",
  { data_type => "double precision", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:P7fl6fMIN2M01Oer/nIxIA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
