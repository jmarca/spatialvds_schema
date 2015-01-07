use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::WimStatusCode;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::WimStatusCode

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.wim_status_codes>

=cut

__PACKAGE__->table("public.wim_status_codes");

=head1 ACCESSORS

=head2 status

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "varchar"}

=head2 description

  data_type: 'text'
  is_nullable: 0
  original: {data_type => "varchar"}

=cut

__PACKAGE__->add_columns(
  "status",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "varchar" },
  },
  "description",
  {
    data_type   => "text",
    is_nullable => 0,
    original    => { data_type => "varchar" },
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</status>

=back

=cut

__PACKAGE__->set_primary_key("status");

=head1 RELATIONS

=head2 wim_status_class_statuses

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::WimStatus>

=cut

__PACKAGE__->has_many(
  "wim_status_class_statuses",
  "Testbed::Spatial::VDS::Schema::Result::Public::WimStatus",
  { "foreign.class_status" => "self.status" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 wim_status_weight_statuses

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::WimStatus>

=cut

__PACKAGE__->has_many(
  "wim_status_weight_statuses",
  "Testbed::Spatial::VDS::Schema::Result::Public::WimStatus",
  { "foreign.weight_status" => "self.status" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cgt9X6J4d69nl+9CB5epUw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
