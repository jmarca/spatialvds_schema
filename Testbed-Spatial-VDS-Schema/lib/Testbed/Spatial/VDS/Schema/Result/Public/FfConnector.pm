use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::FfConnector;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::FfConnector

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.ff_connectors>

=cut

__PACKAGE__->table("public.ff_connectors");

=head1 ACCESSORS

=head2 reffrom

  data_type: 'integer'
  is_nullable: 1

=head2 dirfrom

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 refto

  data_type: 'integer'
  is_nullable: 1

=head2 dirto

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 components

  data_type: 'integer[]'
  is_nullable: 0

=head2 next

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "reffrom",
  { data_type => "integer", is_nullable => 1 },
  "dirfrom",
  { data_type => "char", is_nullable => 1, size => 1 },
  "refto",
  { data_type => "integer", is_nullable => 1 },
  "dirto",
  { data_type => "char", is_nullable => 1, size => 1 },
  "components",
  { data_type => "integer[]", is_nullable => 0 },
  "next",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</components>

=back

=cut

__PACKAGE__->set_primary_key("components");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Ju0K1k5iT+uzIBwWXIWTXA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
