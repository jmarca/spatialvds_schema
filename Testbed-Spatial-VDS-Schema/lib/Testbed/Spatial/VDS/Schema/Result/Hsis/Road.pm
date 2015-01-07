use utf8;
package Testbed::Spatial::VDS::Schema::Result::Hsis::Road;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Hsis::Road

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<hsis.road>

=cut

__PACKAGE__->table("hsis.road");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'hsis.road_id_seq'

=head2 yr

  data_type: 'integer'
  is_nullable: 1

=head2 access

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 begmp

  data_type: 'numeric'
  is_nullable: 1

=head2 endmp

  data_type: 'numeric'
  is_nullable: 1

=head2 city

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 cntyrte

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 district

  data_type: 'integer'
  is_nullable: 1

=head2 rte_nbr

  data_type: 'integer'
  is_nullable: 1

=head2 rte_suf

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 county

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 2

=head2 psmilprf

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 hwy_grp

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=head2 dspd

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 divided

  data_type: 'boolean'
  is_nullable: 1

=head2 num_lane1

  data_type: 'integer'
  is_nullable: 1

=head2 num_lane2

  data_type: 'integer'
  is_nullable: 1

=head2 num_lanes

  data_type: 'integer'
  is_nullable: 1

=head2 rd_desc

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 ro_seq

  data_type: 'numeric'
  is_nullable: 1

=head2 rodwycls

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "hsis.road_id_seq",
  },
  "yr",
  { data_type => "integer", is_nullable => 1 },
  "access",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "begmp",
  { data_type => "numeric", is_nullable => 1 },
  "endmp",
  { data_type => "numeric", is_nullable => 1 },
  "city",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "cntyrte",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "district",
  { data_type => "integer", is_nullable => 1 },
  "rte_nbr",
  { data_type => "integer", is_nullable => 1 },
  "rte_suf",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "county",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 2 },
  "psmilprf",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "hwy_grp",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
  "dspd",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "divided",
  { data_type => "boolean", is_nullable => 1 },
  "num_lane1",
  { data_type => "integer", is_nullable => 1 },
  "num_lane2",
  { data_type => "integer", is_nullable => 1 },
  "num_lanes",
  { data_type => "integer", is_nullable => 1 },
  "rd_desc",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "ro_seq",
  { data_type => "numeric", is_nullable => 1 },
  "rodwycls",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 access

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Access>

=cut

__PACKAGE__->belongs_to(
  "access",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Access",
  { id => "access" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 county

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::County>

=cut

__PACKAGE__->belongs_to(
  "county",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::County",
  { id => "county" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 dspd

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Dspd>

=cut

__PACKAGE__->belongs_to(
  "dspd",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Dspd",
  { spd => "dspd" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 hwy_grp

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Hwygrp>

=cut

__PACKAGE__->belongs_to(
  "hwy_grp",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Hwygrp",
  { id => "hwy_grp" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 psmilprf

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Psmilprf>

=cut

__PACKAGE__->belongs_to(
  "psmilprf",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Psmilprf",
  { id => "psmilprf" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 rodwycl

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Rodwycl>

=cut

__PACKAGE__->belongs_to(
  "rodwycl",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Rodwycl",
  { id => "rodwycls" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);

=head2 rte_suf

Type: belongs_to

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::RteSuf>

=cut

__PACKAGE__->belongs_to(
  "rte_suf",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::RteSuf",
  { id => "rte_suf" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:06kqZoyfRNHcYltS+zT5gg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
