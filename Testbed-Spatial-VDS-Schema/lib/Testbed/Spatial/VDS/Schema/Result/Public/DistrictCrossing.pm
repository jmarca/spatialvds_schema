use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::DistrictCrossing;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::DistrictCrossing

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.district_crossing>

=cut

__PACKAGE__->table("public.district_crossing");

=head1 ACCESSORS

=head2 district_id

  data_type: 'integer'
  is_nullable: 0

=head2 crossing_id

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "district_id",
  { data_type => "integer", is_nullable => 0 },
  "crossing_id",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</district_id>

=item * L</crossing_id>

=back

=cut

__PACKAGE__->set_primary_key("district_id", "crossing_id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mnH29s16jiCaz1IdpScbVA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
