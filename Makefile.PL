use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    dist         => {TARFLAGS => '--create --verbose --mode=0700 --file '},
    NAME         => 'AI::PSO::OO',
    VERSION_FROM => 'lib/AI/PSO/OO.pm', # finds \$VERSION
    AUTHOR       => 'Peter Jaquiery (grandpa@cpan.org)',
    ABSTRACT     => 'OO Perl implementation of Particle Swarm Optimization',
    PREREQ_PM    => {
        'Math::Random::MT' => 0,
        'Test::Pod::Coverage' => 0,
        'Test::Pod' => 0,
    },
);
