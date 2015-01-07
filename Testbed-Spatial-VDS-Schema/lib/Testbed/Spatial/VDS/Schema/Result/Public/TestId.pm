use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::TestId;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::TestId

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.test_ids>

=cut

__PACKAGE__->table("public.test_ids");

=head1 ACCESSORS

=head2 gid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'test_ids_gid_seq'

=head2 dummy

  data_type: 'integer'
  default_value: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "gid",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "test_ids_gid_seq",
  },
  "dummy",
  { data_type => "integer", default_value => 1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</gid>

=back

=cut

__PACKAGE__->set_primary_key("gid");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LRbWf2FMxkqO++eMVl5DpA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
