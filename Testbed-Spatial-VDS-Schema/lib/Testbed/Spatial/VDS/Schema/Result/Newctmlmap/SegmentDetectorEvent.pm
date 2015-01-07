use utf8;
package Testbed::Spatial::VDS::Schema::Result::Newctmlmap::SegmentDetectorEvent;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Newctmlmap::SegmentDetectorEvent

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<newctmlmap.segment_detector_events>

=cut

__PACKAGE__->table("newctmlmap.segment_detector_events");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'newctmlmap.segment_detector_events_id_seq'

=head2 detector_id

  data_type: 'text'
  is_nullable: 0

=head2 ts

  data_type: 'timestamp'
  is_nullable: 0

=head2 endts

  data_type: 'timestamp'
  is_nullable: 0

=head2 event

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "newctmlmap.segment_detector_events_id_seq",
  },
  "detector_id",
  { data_type => "text", is_nullable => 0 },
  "ts",
  { data_type => "timestamp", is_nullable => 0 },
  "endts",
  { data_type => "timestamp", is_nullable => 0 },
  "event",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/0X4JWzqr5BQA1f/pIjxvw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
