use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::OctamSed2000;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::OctamSed2000

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.octam_sed_2000>

=cut

__PACKAGE__->table("public.octam_sed_2000");

=head1 ACCESSORS

=head2 taz_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 pop_tot

  data_type: 'integer'
  is_nullable: 1

=head2 pop_in_hh

  data_type: 'integer'
  is_nullable: 1

=head2 pop_emp

  data_type: 'integer'
  is_nullable: 1

=head2 pop_grp

  data_type: 'integer'
  is_nullable: 1

=head2 hh_sf

  data_type: 'integer'
  is_nullable: 1

=head2 hh_mf

  data_type: 'integer'
  is_nullable: 1

=head2 hh_tot

  data_type: 'integer'
  is_nullable: 1

=head2 hh_size

  data_type: 'double precision'
  is_nullable: 1

=head2 emp_retail

  data_type: 'integer'
  is_nullable: 1

=head2 emp_serv

  data_type: 'integer'
  is_nullable: 1

=head2 emp_basic

  data_type: 'integer'
  is_nullable: 1

=head2 emp_tot

  data_type: 'integer'
  is_nullable: 1

=head2 income

  data_type: 'integer'
  is_nullable: 1

=head2 sch_enroll

  data_type: 'integer'
  is_nullable: 1

=head2 univ_enroll

  data_type: 'integer'
  is_nullable: 1

=head2 area

  data_type: 'integer'
  is_nullable: 1

=head2 autos

  data_type: 'integer'
  is_nullable: 1

=head2 x_centroid

  data_type: 'integer'
  is_nullable: 1

=head2 y_centroid

  data_type: 'integer'
  is_nullable: 1

=head2 county

  data_type: 'smallint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "taz_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "pop_tot",
  { data_type => "integer", is_nullable => 1 },
  "pop_in_hh",
  { data_type => "integer", is_nullable => 1 },
  "pop_emp",
  { data_type => "integer", is_nullable => 1 },
  "pop_grp",
  { data_type => "integer", is_nullable => 1 },
  "hh_sf",
  { data_type => "integer", is_nullable => 1 },
  "hh_mf",
  { data_type => "integer", is_nullable => 1 },
  "hh_tot",
  { data_type => "integer", is_nullable => 1 },
  "hh_size",
  { data_type => "double precision", is_nullable => 1 },
  "emp_retail",
  { data_type => "integer", is_nullable => 1 },
  "emp_serv",
  { data_type => "integer", is_nullable => 1 },
  "emp_basic",
  { data_type => "integer", is_nullable => 1 },
  "emp_tot",
  { data_type => "integer", is_nullable => 1 },
  "income",
  { data_type => "integer", is_nullable => 1 },
  "sch_enroll",
  { data_type => "integer", is_nullable => 1 },
  "univ_enroll",
  { data_type => "integer", is_nullable => 1 },
  "area",
  { data_type => "integer", is_nullable => 1 },
  "autos",
  { data_type => "integer", is_nullable => 1 },
  "x_centroid",
  { data_type => "integer", is_nullable => 1 },
  "y_centroid",
  { data_type => "integer", is_nullable => 1 },
  "county",
  { data_type => "smallint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</taz_id>

=back

=cut

__PACKAGE__->set_primary_key("taz_id");

=head1 RELATIONS

=head2 taz

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::OctamTaz>

=cut

__PACKAGE__->belongs_to(
  "taz",
  "Testbed::Spatial::VDS::Schema::Result::Public::OctamTaz",
  { taz_id => "taz_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6J4cTPFvPQMU247x3RUR1A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
