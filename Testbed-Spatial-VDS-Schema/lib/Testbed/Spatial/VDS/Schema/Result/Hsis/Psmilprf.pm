use utf8;
package Testbed::Spatial::VDS::Schema::Result::Hsis::Psmilprf;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Hsis::Psmilprf

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<hsis.psmilprf>

=cut

__PACKAGE__->table("hsis.psmilprf");

=head1 ACCESSORS

=head2 id

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 label

  data_type: 'varchar'
  is_nullable: 0
  size: 256

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "label",
  { data_type => "varchar", is_nullable => 0, size => 256 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 accs

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Acc>

=cut

__PACKAGE__->has_many(
  "accs",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Acc",
  { "foreign.psmilprf" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 roads

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Road>

=cut

__PACKAGE__->has_many(
  "roads",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Road",
  { "foreign.psmilprf" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gp2PH0f0bh4LGGmuFB68QA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
