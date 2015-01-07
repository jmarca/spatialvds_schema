use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Testbed::Spatial::VDS::Schema::Result::Public::AccidentRiskResult',
    AUTHOR              => 'James Marca <jmarca@translab.its.uci.edu>',
    VERSION_FROM        => 'lib/Testbed/Spatial/VDS/Schema/Result/Public/AccidentRiskResult.pm',
    ABSTRACT_FROM       => 'lib/Testbed/Spatial/VDS/Schema/Result/Public/AccidentRiskResult.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Testbed-Spatial-VDS-Schema-Result-Public-AccidentRiskResult-*' },
);
