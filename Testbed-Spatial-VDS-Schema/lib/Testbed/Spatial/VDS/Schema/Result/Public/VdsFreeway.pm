use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::VdsFreeway;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::VdsFreeway

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.vds_freeway>

=cut

__PACKAGE__->table("public.vds_freeway");

=head1 ACCESSORS

=head2 vds_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 freeway_id

  data_type: 'integer'
  is_nullable: 0

=head2 freeway_dir

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=cut

__PACKAGE__->add_columns(
  "vds_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "freeway_id",
  { data_type => "integer", is_nullable => 0 },
  "freeway_dir",
  { data_type => "varchar", is_nullable => 1, size => 2 },
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

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsIdAll>

=cut

__PACKAGE__->belongs_to(
  "vd",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsIdAll",
  { id => "vds_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GeDYW2LTT10xA/Zf98v8Iw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
