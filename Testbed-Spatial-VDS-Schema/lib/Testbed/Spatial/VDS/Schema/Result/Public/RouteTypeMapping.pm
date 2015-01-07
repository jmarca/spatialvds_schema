use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::RouteTypeMapping;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::RouteTypeMapping

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.route_type_mapping>

=cut

__PACKAGE__->table("public.route_type_mapping");

=head1 ACCESSORS

=head2 orig

  data_type: 'text'
  is_nullable: 0

=head2 std

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "orig",
  { data_type => "text", is_nullable => 0 },
  "std",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</orig>

=back

=cut

__PACKAGE__->set_primary_key("orig");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yapqxwr3AQbbhBBbazGwbA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
