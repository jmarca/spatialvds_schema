use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::CountiesFip;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::CountiesFip

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.counties_fips>

=cut

__PACKAGE__->table("public.counties_fips");

=head1 ACCESSORS

=head2 fips

  data_type: 'varchar'
  is_nullable: 0
  size: 5

=head2 name

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "fips",
  { data_type => "varchar", is_nullable => 0, size => 5 },
  "name",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</fips>

=back

=cut

__PACKAGE__->set_primary_key("fips");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:a3lkKBZMLZvnS3z7OAOsGA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
