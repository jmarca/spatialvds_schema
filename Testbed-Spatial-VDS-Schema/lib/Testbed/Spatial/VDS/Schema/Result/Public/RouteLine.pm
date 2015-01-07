use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::RouteLine;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::RouteLine

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.route_lines>

=cut

__PACKAGE__->table("public.route_lines");

=head1 ACCESSORS

=head2 rteid

  data_type: 'bigint'
  is_nullable: 1

=head2 routeline

  data_type: 'geometry'
  is_nullable: 1

=head2 id4

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "rteid",
  { data_type => "bigint", is_nullable => 1 },
  "routeline",
  { data_type => "geometry", is_nullable => 1 },
  "id4",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id4>

=back

=cut

__PACKAGE__->set_primary_key("id4");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qHEtiICZ/dx9i22I/vlthQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
