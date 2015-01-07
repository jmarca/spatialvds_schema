use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::Freeway;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::Freeway

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.freeways>

=cut

__PACKAGE__->table("public.freeways");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 64 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 freeway_osm_routes

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::FreewayOsmRoute>

=cut

__PACKAGE__->has_many(
  "freeway_osm_routes",
  "Testbed::Spatial::VDS::Schema::Result::Public::FreewayOsmRoute",
  { "foreign.freeway_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 wim_freeways

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::WimFreeway>

=cut

__PACKAGE__->has_many(
  "wim_freeways",
  "Testbed::Spatial::VDS::Schema::Result::Public::WimFreeway",
  { "foreign.freeway_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FA5IXHZ0U9RWTSEKPhYMpw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
