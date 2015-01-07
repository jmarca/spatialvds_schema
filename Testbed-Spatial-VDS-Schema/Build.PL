use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Testbed::Spatial::VDS::Schema::Result::Public::AccidentRiskResult',
    license             => 'artistic2',
    dist_author         => 'James Marca <jmarca@translab.its.uci.edu>',
    dist_version_from   => 'lib/Testbed/Spatial/VDS/Schema/Result/Public/AccidentRiskResult.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'Testbed-Spatial-VDS-Schema-Result-Public-AccidentRiskResult-*' ],
);

$builder->create_build_script();
