use utf8;
package Testbed::Spatial::VDS::Schema::Result::Hsis::Acc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Hsis::Acc

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<hsis.acc>

=cut

__PACKAGE__->table("hsis.acc");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'hsis.acc_id_seq'

=head2 cntyrte

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 milepost

  data_type: 'numeric'
  is_nullable: 1

=head2 rodwycls

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 caseno

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 36

=head2 psmilprf

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 psmilsuf

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 acctype

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 acc_ts

  data_type: 'timestamp with time zone'
  is_nullable: 1

=head2 weather1

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 weather2

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 loc_typ

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 sde_hwy

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 towaway

  data_type: 'boolean'
  is_nullable: 1

=head2 severity

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 rdsurf

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 light

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 trk_inv

  data_type: 'boolean'
  is_nullable: 1

=head2 mtcy_inv

  data_type: 'boolean'
  is_nullable: 1

=head2 distance

  data_type: 'integer'
  is_nullable: 1

=head2 numvehs

  data_type: 'integer'
  is_nullable: 1

=head2 hour_known

  data_type: 'boolean'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "hsis.acc_id_seq",
  },
  "cntyrte",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "milepost",
  { data_type => "numeric", is_nullable => 1 },
  "rodwycls",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "caseno",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 36 },
  "psmilprf",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "psmilsuf",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "acctype",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "acc_ts",
  { data_type => "timestamp with time zone", is_nullable => 1 },
  "weather1",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "weather2",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "loc_typ",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "sde_hwy",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "towaway",
  { data_type => "boolean", is_nullable => 1 },
  "severity",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "rdsurf",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "light",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "trk_inv",
  { data_type => "boolean", is_nullable => 1 },
  "mtcy_inv",
  { data_type => "boolean", is_nullable => 1 },
  "distance",
  { data_type => "integer", is_nullable => 1 },
  "numvehs",
  { data_type => "integer", is_nullable => 1 },
  "hour_known",
  { data_type => "boolean", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 acctype

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Acctype>

=cut

__PACKAGE__->belongs_to(
  "acctype",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Acctype",
  { id => "acctype" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

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

=head2 light

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Light>

=cut

__PACKAGE__->belongs_to(
  "light",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Light",
  { id => "light" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 loc_typ

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Loctyp>

=cut

__PACKAGE__->belongs_to(
  "loc_typ",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Loctyp",
  { id => "loc_typ" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 psmilprf

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Psmilprf>

=cut

__PACKAGE__->belongs_to(
  "psmilprf",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Psmilprf",
  { id => "psmilprf" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 psmilsuf

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Psmilsuf>

=cut

__PACKAGE__->belongs_to(
  "psmilsuf",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Psmilsuf",
  { id => "psmilsuf" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 rdsurf

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Rdsurf>

=cut

__PACKAGE__->belongs_to(
  "rdsurf",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Rdsurf",
  { id => "rdsurf" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 rodwycl

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Rodwycl>

=cut

__PACKAGE__->belongs_to(
  "rodwycl",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Rodwycl",
  { id => "rodwycls" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 sde_hwy

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Sdehwy>

=cut

__PACKAGE__->belongs_to(
  "sde_hwy",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Sdehwy",
  { id => "sde_hwy" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 severity

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Severity>

=cut

__PACKAGE__->belongs_to(
  "severity",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Severity",
  { id => "severity" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 weather1

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Weather>

=cut

__PACKAGE__->belongs_to(
  "weather1",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Weather",
  { id => "weather1" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 weather2

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Weather>

=cut

__PACKAGE__->belongs_to(
  "weather2",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Weather",
  { id => "weather2" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GdO95kP0dgPsPzeGxxncow


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
