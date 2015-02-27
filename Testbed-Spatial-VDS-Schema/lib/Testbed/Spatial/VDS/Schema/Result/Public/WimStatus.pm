use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::WimStatus;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::WimStatus

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.wim_status>

=cut

__PACKAGE__->table("public.wim_status");

=head1 ACCESSORS

=head2 site_no

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 ts

  data_type: 'date'
  is_nullable: 0

=head2 class_status

  data_type: 'text'
  is_foreign_key: 1
  is_nullable: 0
  original: {data_type => "varchar"}

=head2 class_notes

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=head2 weight_status

  data_type: 'text'
  is_foreign_key: 1
  is_nullable: 0
  original: {data_type => "varchar"}

=head2 weight_notes

  data_type: 'text'
  is_nullable: 1
  original: {data_type => "varchar"}

=cut

__PACKAGE__->add_columns(
  "site_no",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "ts",
  { data_type => "date", is_nullable => 0 },
  "class_status",
  {
    data_type      => "text",
    is_foreign_key => 1,
    is_nullable    => 0,
    original       => { data_type => "varchar" },
  },
  "class_notes",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "weight_status",
  {
    data_type      => "text",
    is_foreign_key => 1,
    is_nullable    => 0,
    original       => { data_type => "varchar" },
  },
  "weight_notes",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "internal_class_notes",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "internal_weight_notes",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
  "parser_decisions_notes",
  {
    data_type   => "text",
    is_nullable => 1,
    original    => { data_type => "varchar" },
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</site_no>

=item * L</ts>

=back

=cut

__PACKAGE__->set_primary_key("site_no", "ts");

=head1 RELATIONS

=head2 class_status

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::WimStatusCode>

=cut

__PACKAGE__->belongs_to(
  "class_status",
  "Testbed::Spatial::VDS::Schema::Result::Public::WimStatusCode",
  { status => "class_status" },
  { is_deferrable => 0, on_delete => "RESTRICT", on_update => "NO ACTION" },
);

=head2 site_no

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::WimStation>

=cut

__PACKAGE__->belongs_to(
  "site_no",
  "Testbed::Spatial::VDS::Schema::Result::Public::WimStation",
  { site_no => "site_no" },
  { is_deferrable => 0, on_delete => "RESTRICT", on_update => "NO ACTION" },
);

=head2 weight_status

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::WimStatusCode>

=cut

__PACKAGE__->belongs_to(
  "weight_status",
  "Testbed::Spatial::VDS::Schema::Result::Public::WimStatusCode",
  { status => "weight_status" },
  { is_deferrable => 0, on_delete => "RESTRICT", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dBhDDdg0vuSRvHx1AK8glw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
