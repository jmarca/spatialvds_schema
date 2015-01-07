use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::Calendar;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::Calendar

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.calendar>

=cut

__PACKAGE__->table("public.calendar");

=head1 ACCESSORS

=head2 calendar_key

  data_type: 'date'
  is_nullable: 0

=head2 dow

  data_type: 'smallint'
  is_nullable: 1

=head2 dom

  data_type: 'smallint'
  is_nullable: 1

=head2 year

  data_type: 'smallint'
  is_nullable: 1

=head2 holiday

  data_type: 'boolean'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "calendar_key",
  { data_type => "date", is_nullable => 0 },
  "dow",
  { data_type => "smallint", is_nullable => 1 },
  "dom",
  { data_type => "smallint", is_nullable => 1 },
  "year",
  { data_type => "smallint", is_nullable => 1 },
  "holiday",
  { data_type => "boolean", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</calendar_key>

=back

=cut

__PACKAGE__->set_primary_key("calendar_key");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WBt/2iXNF3mNctYQwj0s5A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
