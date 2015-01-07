use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::DateIn2007;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::DateIn2007

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<public.dates_in_2007>

=cut

__PACKAGE__->table("public.dates_in_2007");

=head1 ACCESSORS

=head2 dates

  data_type: 'date'
  is_nullable: 1

=cut

__PACKAGE__->add_columns("dates", { data_type => "date", is_nullable => 1 });


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/c8pYbx+SzN+nqg+CVyj1A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
