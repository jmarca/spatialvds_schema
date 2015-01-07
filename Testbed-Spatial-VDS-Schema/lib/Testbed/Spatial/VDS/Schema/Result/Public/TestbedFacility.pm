use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::TestbedFacility;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::TestbedFacility

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.testbed_facilities>

=cut

__PACKAGE__->table("public.testbed_facilities");

=head1 ACCESSORS

=head2 tfid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'testbed_facilities_tfid_seq'

=head2 net

  data_type: 'text'
  is_nullable: 1

=head2 ref

  data_type: 'text'
  is_nullable: 1

=head2 dir

  data_type: 'text'
  is_nullable: 1

=head2 rteid

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "tfid",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "testbed_facilities_tfid_seq",
  },
  "net",
  { data_type => "text", is_nullable => 1 },
  "ref",
  { data_type => "text", is_nullable => 1 },
  "dir",
  { data_type => "text", is_nullable => 1 },
  "rteid",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</tfid>

=back

=cut

__PACKAGE__->set_primary_key("tfid");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wkBwV8HapeCp2l+XtUQpIg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
