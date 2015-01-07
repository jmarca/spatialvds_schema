use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::Crossing;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::Crossing

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.crossings>

=cut

__PACKAGE__->table("public.crossings");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'crossings_id_seq'

=head2 county_id

  data_type: 'integer'
  is_nullable: 0

=head2 description

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 freeway_id

  data_type: 'integer'
  is_nullable: 0

=head2 freeway_dir

  data_type: 'varchar'
  is_nullable: 0
  size: 2

=head2 cal_pm

  data_type: 'varchar'
  is_nullable: 0
  size: 12

=head2 abs_pm

  data_type: 'double precision'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "crossings_id_seq",
  },
  "county_id",
  { data_type => "integer", is_nullable => 0 },
  "description",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "freeway_id",
  { data_type => "integer", is_nullable => 0 },
  "freeway_dir",
  { data_type => "varchar", is_nullable => 0, size => 2 },
  "cal_pm",
  { data_type => "varchar", is_nullable => 0, size => 12 },
  "abs_pm",
  { data_type => "double precision", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<crossings_county_id_key>

=over 4

=item * L</county_id>

=item * L</freeway_id>

=item * L</freeway_dir>

=item * L</description>

=item * L</cal_pm>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "crossings_county_id_key",
  [
    "county_id",
    "freeway_id",
    "freeway_dir",
    "description",
    "cal_pm",
  ],
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3DXoS/UQmmufRSEPay15rw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
