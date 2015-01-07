use utf8;
package Testbed::Spatial::VDS::Schema::Result::Hsis::CasenoVd;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Hsis::CasenoVd

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<hsis.caseno_vds>

=cut

__PACKAGE__->table("hsis.caseno_vds");

=head1 ACCESSORS

=head2 caseno

  data_type: 'varchar'
  is_nullable: 1
  size: 36

=head2 vds_id

  data_type: 'integer'
  is_nullable: 1

=head2 diff

  data_type: 'numeric'
  is_nullable: 1

=head2 keep

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "caseno",
  { data_type => "varchar", is_nullable => 1, size => 36 },
  "vds_id",
  { data_type => "integer", is_nullable => 1 },
  "diff",
  { data_type => "numeric", is_nullable => 1 },
  "keep",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6ovHUO8YxAuo/28YtqxJCQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
