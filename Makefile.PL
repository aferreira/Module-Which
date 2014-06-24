
use 5.005;
use ExtUtils::MakeMaker;

my $EUMM_VERSION = eval $ExtUtils::MakeMaker::VERSION;

WriteMakefile(
    NAME              => 'Module::Which',
    VERSION_FROM      => 'lib/Module/Which.pm', # finds $VERSION
    PREREQ_PM         => {
        'Getopt::Long'            => 0,
        'Pod::Usage'              => 0,
        'File::Find'              => 0,
        'File::Spec::Unix'        => 0,
        'File::Spec'              => 0.8,
        'File::Glob'              => 0,
        'String::Truncate'        => 0,

        'Test::More'              => 0,
    },
    EXE_FILES          => [ 'bin/which_pm' ],
    ( $] >= 5.005 ? (
      ABSTRACT_FROM  => 'lib/Module/Which.pm', # retrieve abstract from module
      AUTHOR         => 'A. R. Ferreira <ferreira@cpan.org>',
    ) : () ),
    ( $EUMM_VERSION > 6.31 ? (
      LICENSE        => 'perl',
      EXTRA_META     => <<YAML,

recommends:
    Test::Pod:                     1.18
    Term::Size::Any:               0
YAML
    ) : () ),
);
