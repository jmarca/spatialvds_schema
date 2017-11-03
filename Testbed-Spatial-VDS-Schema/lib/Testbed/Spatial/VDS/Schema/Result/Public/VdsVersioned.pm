use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::VdsVersioned;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::VdsVersioned

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.vds_versioned>

=cut

__PACKAGE__->table("public.vds_versioned");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 lanes

  data_type: 'integer'
  is_nullable: 0

=head2 segment_length

  data_type: 'numeric'
  is_nullable: 1

=head2 version

  data_type: 'date'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "lanes",
  { data_type => "integer", is_nullable => 0 },
  "segment_length",
  { data_type => "numeric", is_nullable => 1 },
  "version",
  { data_type => "date", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=item * L</version>

=back

=cut

__PACKAGE__->set_primary_key("id", "version");

=head1 RELATIONS

=head2 vdsidall

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsIdAll>

=cut

__PACKAGE__->belongs_to(
  "vdsidall",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsIdAll",
  { id => "id" },
  { is_deferrable => 0, on_delete => "RESTRICT", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JIxpxhp9MaVR/xHr485qbg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
