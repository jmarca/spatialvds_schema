use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::VdsHaspems5min;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::VdsHaspems5min

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.vds_haspems5min>

=cut

__PACKAGE__->table("public.vds_haspems5min");

=head1 ACCESSORS

=head2 vds_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "vds_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</vds_id>

=back

=cut

__PACKAGE__->set_primary_key("vds_id");

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


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Dp/dFk4F2d7y1fNeQtIpsA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
