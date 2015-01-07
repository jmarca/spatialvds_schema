use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::OnrTazMatchTbl;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::OnrTazMatchTbl

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.onr_taz_match_tbl>

=cut

__PACKAGE__->table("public.onr_taz_match_tbl");

=head1 ACCESSORS

=head2 vds_id

  data_type: 'integer'
  is_nullable: 1

=head2 taz_id

  data_type: 'integer'
  is_nullable: 1

=head2 mindist

  data_type: 'double precision'
  is_nullable: 1

=head2 manhdist

  data_type: 'double precision'
  is_nullable: 1

=head2 linegeom

  data_type: 'geometry'
  is_nullable: 1

=head2 gid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'onr_taz_match_tbl_gid_seq'

=cut

__PACKAGE__->add_columns(
  "vds_id",
  { data_type => "integer", is_nullable => 1 },
  "taz_id",
  { data_type => "integer", is_nullable => 1 },
  "mindist",
  { data_type => "double precision", is_nullable => 1 },
  "manhdist",
  { data_type => "double precision", is_nullable => 1 },
  "linegeom",
  { data_type => "geometry", is_nullable => 1 },
  "gid",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "onr_taz_match_tbl_gid_seq",
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</gid>

=back

=cut

__PACKAGE__->set_primary_key("gid");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Vsg1IoLkgjXCiq2gF2xLEQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
