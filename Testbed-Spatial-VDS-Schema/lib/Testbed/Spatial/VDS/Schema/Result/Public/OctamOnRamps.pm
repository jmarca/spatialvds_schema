use utf8;
package Testbed::Spatial::VDS::Schema::Result::Public::OctamOnRamps;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Testbed::Spatial::VDS::Schema::Result::Public::OctamOnRamps

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<public.octam_on_ramps>

=cut

__PACKAGE__->table("public.octam_on_ramps");

=head1 ACCESSORS

=head2 gid

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns("gid", { data_type => "integer", is_nullable => 1 });


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2015-01-06 13:01:07
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gaooI6OoqWCjTeiJg80yGw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
