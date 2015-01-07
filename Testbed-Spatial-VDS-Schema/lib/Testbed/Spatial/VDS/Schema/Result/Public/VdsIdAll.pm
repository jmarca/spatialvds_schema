use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::VdsIdAll;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::VdsIdAll

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.vds_id_all>

=cut

__PACKAGE__->table("public.vds_id_all");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 cal_pm

  data_type: 'varchar'
  is_nullable: 0
  size: 12

=head2 abs_pm

  data_type: 'double precision'
  is_nullable: 0

=head2 latitude

  data_type: 'numeric'
  is_nullable: 1

=head2 longitude

  data_type: 'numeric'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "cal_pm",
  { data_type => "varchar", is_nullable => 0, size => 12 },
  "abs_pm",
  { data_type => "double precision", is_nullable => 0 },
  "latitude",
  { data_type => "numeric", is_nullable => 1 },
  "longitude",
  { data_type => "numeric", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 vds_freeway

Type: might_have

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsFreeway>

=cut

__PACKAGE__->might_have(
  "vds_freeway",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsFreeway",
  { "foreign.vds_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds_points_4269

Type: might_have

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsPoints4269>

=cut

__PACKAGE__->might_have(
  "vds_points_4269",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsPoints4269",
  { "foreign.vds_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds_points_4326

Type: might_have

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsPoints4326>

=cut

__PACKAGE__->might_have(
  "vds_points_4326",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsPoints4326",
  { "foreign.vds_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vds_versioneds

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Public::VdsVersioned>

=cut

__PACKAGE__->has_many(
  "vds_versioneds",
  "Testbed::Spatial::VDS::Schema::Result::Public::VdsVersioned",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zcpm7pSIfWSR9oNnJ+R2CA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
