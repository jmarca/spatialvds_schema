use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::Timestamp;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::Timestamp

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.timestamps>

=cut

__PACKAGE__->table("public.timestamps");

=head1 ACCESSORS

=head2 ts

  data_type: 'timestamp'
  is_nullable: 0

=head2 fivemin

  data_type: 'time'
  is_nullable: 1
  size: 6

=head2 dow

  data_type: 'smallint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ts",
  { data_type => "timestamp", is_nullable => 0 },
  "fivemin",
  { data_type => "time", is_nullable => 1, size => 6 },
  "dow",
  { data_type => "smallint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</ts>

=back

=cut

__PACKAGE__->set_primary_key("ts");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CbG86o7RRZyRKUUEsk6I9A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
