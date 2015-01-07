use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::MainlineRamp;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::MainlineRamp

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.mainline_ramp>

=cut

__PACKAGE__->table("public.mainline_ramp");

=head1 ACCESSORS

=head2 ml_vds_id

  data_type: 'integer'
  is_nullable: 0

=head2 r_vds_id

  data_type: 'integer'
  is_nullable: 0

=head2 distance

  data_type: 'numeric'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ml_vds_id",
  { data_type => "integer", is_nullable => 0 },
  "r_vds_id",
  { data_type => "integer", is_nullable => 0 },
  "distance",
  { data_type => "numeric", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</ml_vds_id>

=item * L</r_vds_id>

=back

=cut

__PACKAGE__->set_primary_key("ml_vds_id", "r_vds_id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vskTijpk9lEjJdZnaZahdw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
