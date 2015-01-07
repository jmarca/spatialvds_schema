use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::VehLengthLookup;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::VehLengthLookup

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.veh_length_lookup>

=cut

__PACKAGE__->table("public.veh_length_lookup");

=head1 ACCESSORS

=head2 fwydir

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 timeofday

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 avgvehlength

  data_type: 'real'
  is_nullable: 1

=head2 avgtrucklength

  data_type: 'real'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "fwydir",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "timeofday",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "avgvehlength",
  { data_type => "real", is_nullable => 1 },
  "avgtrucklength",
  { data_type => "real", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</timeofday>

=item * L</fwydir>

=back

=cut

__PACKAGE__->set_primary_key("timeofday", "fwydir");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+EB+hu/2x6LGYV8W+m6qzg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
