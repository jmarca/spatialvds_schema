use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::VdsVdstype;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::VdsVdstype

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.vds_vdstype>

=cut

__PACKAGE__->table("public.vds_vdstype");

=head1 ACCESSORS

=head2 vds_id

  data_type: 'integer'
  is_nullable: 0

=head2 type_id

  data_type: 'varchar'
  is_nullable: 0
  size: 4

=cut

__PACKAGE__->add_columns(
  "vds_id",
  { data_type => "integer", is_nullable => 0 },
  "type_id",
  { data_type => "varchar", is_nullable => 0, size => 4 },
);

=head1 PRIMARY KEY

=over 4

=item * L</vds_id>

=back

=cut

__PACKAGE__->set_primary_key("vds_id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mVN2NzJ5kngNwYqfKrYiUg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
