use 5.006;
use strict;
use warnings FATAL => 'all';
use inc::Module::Install;

name     'CreateConfig';
all_from 'lib/CreateConfig.pm';
author   q{Sholto Maud <sholto.maud@gmail.com>};
license  'artistic2';

perl_version 5.006;

tests_recursive('t');

resources (
   license    => 'http://www.perlfoundation.org/artistic_license_2_0',
   repository => 'git://github.com/Sholto Maud/CreateConfig.git',
   
);

configure_requires (
   'Module::Install' => 0,
);

build_requires (
   'Test::More' => 0,
   
);

requires (
   'Try::Tiny'        => 0.01,
   'Time::Local'      => 0.01,     
   'local::lib'       => 0.01,     
   'Env'              => 0.01,     
   'DateTime'         => 0.01,     
   'JSON'             => 0.01,     
   'FindBin'          => 0.01,
   'Scalar::Util'     => 0.01
);

install_as_cpan;
auto_install;
WriteAll;
