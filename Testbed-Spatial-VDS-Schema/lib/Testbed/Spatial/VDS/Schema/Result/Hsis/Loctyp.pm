use utf8;
package Testbed::Spatial::VDS::Schema::Result::Hsis::Loctyp;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Hsis::Loctyp

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<hsis.loctyp>

=cut

__PACKAGE__->table("hsis.loctyp");

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
  { "foreign.loc_typ" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 veh_loc_typ1s

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Veh>

=cut

__PACKAGE__->has_many(
  "veh_loc_typ1s",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Veh",
  { "foreign.loc_typ1" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 veh_loc_typ2s

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Veh>

=cut

__PACKAGE__->has_many(
  "veh_loc_typ2s",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Veh",
  { "foreign.loc_typ2" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 veh_loc_typ3s

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Veh>

=cut

__PACKAGE__->has_many(
  "veh_loc_typ3s",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Veh",
  { "foreign.loc_typ3" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 veh_loc_typ4s

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Veh>

=cut

__PACKAGE__->has_many(
  "veh_loc_typ4s",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Veh",
  { "foreign.loc_typ4" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:10dewlpzfKlQNdfsfz0wEg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
