use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::VdsSed2000Or;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::VdsSed2000Or

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.vds_sed_2000_or>

=cut

__PACKAGE__->table("public.vds_sed_2000_or");

=head1 ACCESSORS

=head2 vds_id

  data_type: 'integer'
  is_nullable: 1

=head2 freeway_dir

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 type_id

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 district_id

  data_type: 'integer'
  is_nullable: 1

=head2 pop_tot

  data_type: 'double precision'
  is_nullable: 1

=head2 pop_in_hh

  data_type: 'double precision'
  is_nullable: 1

=head2 pop_emp

  data_type: 'double precision'
  is_nullable: 1

=head2 pop_grp

  data_type: 'double precision'
  is_nullable: 1

=head2 hh_sf

  data_type: 'double precision'
  is_nullable: 1

=head2 hh_mf

  data_type: 'double precision'
  is_nullable: 1

=head2 hh_tot

  data_type: 'double precision'
  is_nullable: 1

=head2 hh_size

  data_type: 'double precision'
  is_nullable: 1

=head2 emp_retail

  data_type: 'double precision'
  is_nullable: 1

=head2 emp_serv

  data_type: 'double precision'
  is_nullable: 1

=head2 emp_basic

  data_type: 'double precision'
  is_nullable: 1

=head2 emp_tot

  data_type: 'double precision'
  is_nullable: 1

=head2 income

  data_type: 'double precision'
  is_nullable: 1

=head2 sch_enroll

  data_type: 'double precision'
  is_nullable: 1

=head2 univ_enroll

  data_type: 'double precision'
  is_nullable: 1

=head2 area

  data_type: 'double precision'
  is_nullable: 1

=head2 autos

  data_type: 'double precision'
  is_nullable: 1

=head2 geom

  data_type: 'geometry'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "vds_id",
  { data_type => "integer", is_nullable => 1 },
  "freeway_dir",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "type_id",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "district_id",
  { data_type => "integer", is_nullable => 1 },
  "pop_tot",
  { data_type => "double precision", is_nullable => 1 },
  "pop_in_hh",
  { data_type => "double precision", is_nullable => 1 },
  "pop_emp",
  { data_type => "double precision", is_nullable => 1 },
  "pop_grp",
  { data_type => "double precision", is_nullable => 1 },
  "hh_sf",
  { data_type => "double precision", is_nullable => 1 },
  "hh_mf",
  { data_type => "double precision", is_nullable => 1 },
  "hh_tot",
  { data_type => "double precision", is_nullable => 1 },
  "hh_size",
  { data_type => "double precision", is_nullable => 1 },
  "emp_retail",
  { data_type => "double precision", is_nullable => 1 },
  "emp_serv",
  { data_type => "double precision", is_nullable => 1 },
  "emp_basic",
  { data_type => "double precision", is_nullable => 1 },
  "emp_tot",
  { data_type => "double precision", is_nullable => 1 },
  "income",
  { data_type => "double precision", is_nullable => 1 },
  "sch_enroll",
  { data_type => "double precision", is_nullable => 1 },
  "univ_enroll",
  { data_type => "double precision", is_nullable => 1 },
  "area",
  { data_type => "double precision", is_nullable => 1 },
  "autos",
  { data_type => "double precision", is_nullable => 1 },
  "geom",
  { data_type => "geometry", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XqsdAs2VEG4FlDTigBGcPw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
