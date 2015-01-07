use utf8;
package Testbed::Spatial::VDS::Schema::Result::Hsis::Veh;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Hsis::Veh

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<hsis.veh>

=cut

__PACKAGE__->table("hsis.veh");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'hsis.veh_id_seq'

=head2 caseno

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 36

=head2 dir_trvl

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 loc_typ1

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 loc_typ2

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 loc_typ3

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 loc_typ4

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "hsis.veh_id_seq",
  },
  "caseno",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 36 },
  "dir_trvl",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "loc_typ1",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "loc_typ2",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "loc_typ3",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "loc_typ4",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 caseno

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Case>

=cut

__PACKAGE__->belongs_to(
  "caseno",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Case",
  { caseno => "caseno" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 dir_trvl

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Dirtrvl>

=cut

__PACKAGE__->belongs_to(
  "dir_trvl",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Dirtrvl",
  { id => "dir_trvl" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 loc_typ1

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Loctyp>

=cut

__PACKAGE__->belongs_to(
  "loc_typ1",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Loctyp",
  { id => "loc_typ1" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 loc_typ2

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Loctyp>

=cut

__PACKAGE__->belongs_to(
  "loc_typ2",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Loctyp",
  { id => "loc_typ2" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 loc_typ3

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Loctyp>

=cut

__PACKAGE__->belongs_to(
  "loc_typ3",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Loctyp",
  { id => "loc_typ3" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 loc_typ4

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Loctyp>

=cut

__PACKAGE__->belongs_to(
  "loc_typ4",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Loctyp",
  { id => "loc_typ4" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NQi5HWauI60nbsay3Ew9GA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
