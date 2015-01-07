use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::Trial;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::Trial

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<public.trials>

=cut

__PACKAGE__->table("public.trials");

=head1 ACCESSORS

=head2 trial_id

  data_type: 'integer'
  is_nullable: 1

=head2 avg_total_axle_spacing

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "trial_id",
  { data_type => "integer", is_nullable => 1 },
  "avg_total_axle_spacing",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:28dSManz8gzUip0EK+/qdA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
