use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::FinalMatchTbl;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::FinalMatchTbl

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.final_match_tbl>

=cut

__PACKAGE__->table("public.final_match_tbl");

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

=head2 gid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'final_match_tbl_gid_seq'

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
  "gid",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "final_match_tbl_gid_seq",
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</gid>

=back

=cut

__PACKAGE__->set_primary_key("gid");

=head1 UNIQUE CONSTRAINTS

=head2 C<match_vds_taz_uniq>

=over 4

=item * L</vds_id>

=item * L</taz_id>

=back

=cut

__PACKAGE__->add_unique_constraint("match_vds_taz_uniq", ["vds_id", "taz_id"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MrN9g/bD6igGws5C+CLCtQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
