use utf8;
package Testbed::Spatial::VDS::Schema::Result::Tempseg::Twim;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Tempseg::Twim

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<tempseg.twim>

=cut

__PACKAGE__->table("tempseg.twim");

=head1 ACCESSORS

=head2 site_no

  data_type: 'integer'
  is_nullable: 0

=head2 loc

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 wim_type

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 cal_pm

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 latitude

  data_type: 'numeric'
  is_nullable: 1

=head2 longitude

  data_type: 'numeric'
  is_nullable: 1

=head2 last_modified

  data_type: 'date'
  is_nullable: 1

=head2 freeway_id

  data_type: 'integer'
  is_nullable: 0

=head2 direction

  data_type: 'varchar'
  is_nullable: 0
  size: 1

=head2 geom

  data_type: 'geometry'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "site_no",
  { data_type => "integer", is_nullable => 0 },
  "loc",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "wim_type",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "cal_pm",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "latitude",
  { data_type => "numeric", is_nullable => 1 },
  "longitude",
  { data_type => "numeric", is_nullable => 1 },
  "last_modified",
  { data_type => "date", is_nullable => 1 },
  "freeway_id",
  { data_type => "integer", is_nullable => 0 },
  "direction",
  { data_type => "varchar", is_nullable => 0, size => 1 },
  "geom",
  { data_type => "geometry", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</site_no>

=item * L</freeway_id>

=item * L</direction>

=back

=cut

__PACKAGE__->set_primary_key("site_no", "freeway_id", "direction");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FX2jWY3raZiiuj436wlzKA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
