use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::VdsCurrentTest;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::VdsCurrentTest

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.vds_current_test>

=cut

__PACKAGE__->table("public.vds_current_test");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_nullable: 0

=head2 version

  data_type: 'date'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_nullable => 0 },
  "version",
  { data_type => "date", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=item * L</version>

=back

=cut

__PACKAGE__->set_primary_key("id", "version");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FzWev/XcYxEVSH+zPJO2GQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
