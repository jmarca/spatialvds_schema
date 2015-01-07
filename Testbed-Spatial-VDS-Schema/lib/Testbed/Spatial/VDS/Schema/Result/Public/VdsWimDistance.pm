use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::VdsWimDistance;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::VdsWimDistance

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.vds_wim_distance>

=cut

__PACKAGE__->table("public.vds_wim_distance");

=head1 ACCESSORS

=head2 vds_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 wim_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 distance

  data_type: 'numeric'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "vds_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "wim_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "distance",
  { data_type => "numeric", is_nullable => 1 },
);

=head1 RELATIONS

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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:83MbgZbZjzmJWkvO1t2QJA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
