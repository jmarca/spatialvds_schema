use utf8;
package Testbed::Spatial::VDS::Schema::Result::Hsis::Dspd;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Hsis::Dspd

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<hsis.dspd>

=cut

__PACKAGE__->table("hsis.dspd");

=head1 ACCESSORS

=head2 spd

  data_type: 'integer'
  is_nullable: 0

=head2 label

  data_type: 'varchar'
  is_nullable: 0
  size: 256

=cut

__PACKAGE__->add_columns(
  "spd",
  { data_type => "integer", is_nullable => 0 },
  "label",
  { data_type => "varchar", is_nullable => 0, size => 256 },
);

=head1 PRIMARY KEY

=over 4

=item * L</spd>

=back

=cut

__PACKAGE__->set_primary_key("spd");

=head1 RELATIONS

=head2 roads

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Road>

=cut

__PACKAGE__->has_many(
  "roads",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Road",
  { "foreign.dspd" => "self.spd" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KDwZ9v1D17cxYjBAMzK1zg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
