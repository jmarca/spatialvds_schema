use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::FreewayOsmRoute;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::FreewayOsmRoute

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.freeway_osm_routes>

=cut

__PACKAGE__->table("public.freeway_osm_routes");

=head1 ACCESSORS

=head2 freeway_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 osm_relation_id

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "freeway_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "osm_relation_id",
  { data_type => "integer", is_nullable => 0 },
);

=head1 RELATIONS

=head2 freeway

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::Freeway>

=cut

__PACKAGE__->belongs_to(
  "freeway",
  "Testbed::Spatial::VDS::Schema::Result::Public::Freeway",
  { id => "freeway_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xUwqESN80eoAAGtrfioQrQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
