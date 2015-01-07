use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::WimStatus2010;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::WimStatus2010

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.wim_status_2010>

=cut

__PACKAGE__->table("public.wim_status_2010");

=head1 ACCESSORS

=head2 site_no

  data_type: 'integer'
  is_nullable: 1

=head2 ts

  data_type: 'date'
  is_nullable: 1

=head2 class_status

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 class_notes

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 weight_status

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 weight_notes

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=cut

__PACKAGE__->add_columns(
  "site_no",
  { data_type => "integer", is_nullable => 1 },
  "ts",
  { data_type => "date", is_nullable => 1 },
  "class_status",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "class_notes",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "weight_status",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "weight_notes",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:tQ574GilZ+UVCMkfLDgLpQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
