use utf8;
package Testbed::Spatial::VDS::Schema::Result::Hsis::Case;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Hsis::Case

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<hsis.cases>

=cut

__PACKAGE__->table("hsis.cases");

=head1 ACCESSORS

=head2 caseno

  data_type: 'varchar'
  is_nullable: 0
  size: 36

=cut

__PACKAGE__->add_columns(
  "caseno",
  { data_type => "varchar", is_nullable => 0, size => 36 },
);

=head1 PRIMARY KEY

=over 4

=item * L</caseno>

=back

=cut

__PACKAGE__->set_primary_key("caseno");

=head1 RELATIONS

=head2 accs

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Acc>

=cut

__PACKAGE__->has_many(
  "accs",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Acc",
  { "foreign.caseno" => "self.caseno" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vehs

Type: has_many

Related object: L<Testbed::Spatial::VDS::Schema::Result::Hsis::Veh>

=cut

__PACKAGE__->has_many(
  "vehs",
  "Testbed::Spatial::VDS::Schema::Result::Hsis::Veh",
  { "foreign.caseno" => "self.caseno" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dZqZffpN201pV05+iWGrlg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
