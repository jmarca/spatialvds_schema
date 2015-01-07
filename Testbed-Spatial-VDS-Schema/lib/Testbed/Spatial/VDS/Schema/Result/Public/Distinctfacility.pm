use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::Distinctfacility;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::Distinctfacility

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<public.distinctfacilities>

=cut

__PACKAGE__->table("public.distinctfacilities");

=head1 ACCESSORS

=head2 freeway_id

  data_type: 'integer'
  is_nullable: 1

=head2 freeway_dir

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=cut

__PACKAGE__->add_columns(
  "freeway_id",
  { data_type => "integer", is_nullable => 1 },
  "freeway_dir",
  { data_type => "varchar", is_nullable => 1, size => 2 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ygUDqP1jW//d2RbGJ5mBEQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
