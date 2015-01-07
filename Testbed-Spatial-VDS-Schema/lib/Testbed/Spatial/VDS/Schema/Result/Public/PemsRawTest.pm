use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::PemsRawTest;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::PemsRawTest

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.pems_raw_test>

=cut

__PACKAGE__->table("public.pems_raw_test");

=head1 ACCESSORS

=head2 vds_id

  data_type: 'integer'
  is_nullable: 1

=head2 ts

  data_type: 'timestamp'
  is_nullable: 1

=head2 n1

  data_type: 'integer'
  is_nullable: 1

=head2 n2

  data_type: 'integer'
  is_nullable: 1

=head2 n3

  data_type: 'integer'
  is_nullable: 1

=head2 n4

  data_type: 'integer'
  is_nullable: 1

=head2 n5

  data_type: 'integer'
  is_nullable: 1

=head2 n6

  data_type: 'integer'
  is_nullable: 1

=head2 n7

  data_type: 'integer'
  is_nullable: 1

=head2 n8

  data_type: 'integer'
  is_nullable: 1

=head2 o1

  data_type: 'numeric'
  is_nullable: 1

=head2 o2

  data_type: 'numeric'
  is_nullable: 1

=head2 o3

  data_type: 'numeric'
  is_nullable: 1

=head2 o4

  data_type: 'numeric'
  is_nullable: 1

=head2 o5

  data_type: 'numeric'
  is_nullable: 1

=head2 o6

  data_type: 'numeric'
  is_nullable: 1

=head2 o7

  data_type: 'numeric'
  is_nullable: 1

=head2 o8

  data_type: 'numeric'
  is_nullable: 1

=head2 s1

  data_type: 'numeric'
  is_nullable: 1

=head2 s2

  data_type: 'numeric'
  is_nullable: 1

=head2 s3

  data_type: 'numeric'
  is_nullable: 1

=head2 s4

  data_type: 'numeric'
  is_nullable: 1

=head2 s5

  data_type: 'numeric'
  is_nullable: 1

=head2 s6

  data_type: 'numeric'
  is_nullable: 1

=head2 s7

  data_type: 'numeric'
  is_nullable: 1

=head2 s8

  data_type: 'numeric'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "vds_id",
  { data_type => "integer", is_nullable => 1 },
  "ts",
  { data_type => "timestamp", is_nullable => 1 },
  "n1",
  { data_type => "integer", is_nullable => 1 },
  "n2",
  { data_type => "integer", is_nullable => 1 },
  "n3",
  { data_type => "integer", is_nullable => 1 },
  "n4",
  { data_type => "integer", is_nullable => 1 },
  "n5",
  { data_type => "integer", is_nullable => 1 },
  "n6",
  { data_type => "integer", is_nullable => 1 },
  "n7",
  { data_type => "integer", is_nullable => 1 },
  "n8",
  { data_type => "integer", is_nullable => 1 },
  "o1",
  { data_type => "numeric", is_nullable => 1 },
  "o2",
  { data_type => "numeric", is_nullable => 1 },
  "o3",
  { data_type => "numeric", is_nullable => 1 },
  "o4",
  { data_type => "numeric", is_nullable => 1 },
  "o5",
  { data_type => "numeric", is_nullable => 1 },
  "o6",
  { data_type => "numeric", is_nullable => 1 },
  "o7",
  { data_type => "numeric", is_nullable => 1 },
  "o8",
  { data_type => "numeric", is_nullable => 1 },
  "s1",
  { data_type => "numeric", is_nullable => 1 },
  "s2",
  { data_type => "numeric", is_nullable => 1 },
  "s3",
  { data_type => "numeric", is_nullable => 1 },
  "s4",
  { data_type => "numeric", is_nullable => 1 },
  "s5",
  { data_type => "numeric", is_nullable => 1 },
  "s6",
  { data_type => "numeric", is_nullable => 1 },
  "s7",
  { data_type => "numeric", is_nullable => 1 },
  "s8",
  { data_type => "numeric", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6+/get0TuHqFgfEaF78VPQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
