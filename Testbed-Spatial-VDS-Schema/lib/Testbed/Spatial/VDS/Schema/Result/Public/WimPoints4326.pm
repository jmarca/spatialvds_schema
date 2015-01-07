use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::WimPoints4326;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::WimPoints4326

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.wim_points_4326>

=cut

__PACKAGE__->table("public.wim_points_4326");

=head1 ACCESSORS

=head2 gid

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 wim_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "gid",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "wim_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</wim_id>

=back

=cut

__PACKAGE__->set_primary_key("wim_id");

=head1 RELATIONS

=head2 g

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::GeomPoints4326>

=cut

__PACKAGE__->belongs_to(
  "g",
  "Testbed::Spatial::VDS::Schema::Result::Public::GeomPoints4326",
  { gid => "gid" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "NO ACTION" },
);

=head2 wim

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::WimStation>

=cut

__PACKAGE__->belongs_to(
  "wim",
  "Testbed::Spatial::VDS::Schema::Result::Public::WimStation",
  { site_no => "wim_id" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:b801apTpY0IBqjAi4p7Lfg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
