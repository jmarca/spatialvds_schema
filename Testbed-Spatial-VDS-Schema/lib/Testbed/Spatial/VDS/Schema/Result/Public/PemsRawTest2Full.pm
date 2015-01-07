use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::PemsRawTest2Full;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::PemsRawTest2Full

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<public.pems_raw_test2_full>

=cut

__PACKAGE__->table("public.pems_raw_test2_full");

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

=head2 n

  data_type: 'integer'
  is_nullable: 1

=head2 o

  data_type: 'numeric'
  is_nullable: 1

=head2 lane_counts

  data_type: 'integer'
  is_nullable: 1

=head2 lanes

  data_type: 'integer'
  is_nullable: 1

=head2 segment_length

  data_type: 'numeric'
  is_nullable: 1

=head2 version

  data_type: 'date'
  is_nullable: 1

=head2 pctobs

  data_type: 'double precision'
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
  "n",
  { data_type => "integer", is_nullable => 1 },
  "o",
  { data_type => "numeric", is_nullable => 1 },
  "lane_counts",
  { data_type => "integer", is_nullable => 1 },
  "lanes",
  { data_type => "integer", is_nullable => 1 },
  "segment_length",
  { data_type => "numeric", is_nullable => 1 },
  "version",
  { data_type => "date", is_nullable => 1 },
  "pctobs",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:b+AEvO1H91/YQEz1i3arsA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;