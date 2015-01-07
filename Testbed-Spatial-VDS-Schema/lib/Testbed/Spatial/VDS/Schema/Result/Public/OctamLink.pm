use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::OctamLink;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::OctamLink

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.octam_links>

=cut

__PACKAGE__->table("public.octam_links");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'link_id_seq'

=head2 frnode

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 tonode

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 type

  data_type: 'smallint'
  is_nullable: 1

=head2 spd

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "link_id_seq",
  },
  "frnode",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "tonode",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "type",
  { data_type => "smallint", is_nullable => 1 },
  "spd",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 frnode

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::OctamNode>

=cut

__PACKAGE__->belongs_to(
  "frnode",
  "Testbed::Spatial::VDS::Schema::Result::Public::OctamNode",
  { id => "frnode" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);

=head2 tonode

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::OctamNode>

=cut

__PACKAGE__->belongs_to(
  "tonode",
  "Testbed::Spatial::VDS::Schema::Result::Public::OctamNode",
  { id => "tonode" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hnhjhsNgzHbFtCHCdSXCHQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
