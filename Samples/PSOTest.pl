use strict;
use warnings;
use lib '..\lib'; # For development testing
use AI::PSO::OO;

++$|;
my $pso = AI::PSO::OO->new ();

$pso->setParams (
    -fitFunc    => \&calcFit,
    -dimensions => 3,
    -iterations => 100,
    );

for (0 .. 9) {
    $pso->init () unless $_ % 5;

    my $fitValue      = $pso->optimize ();
    my ($best)        = $pso->getBestParticles (1);
    my ($fit, @values) = $pso->getParticleBestPos ($best);

    printf "Fit %.4f at (%s)\n",
        $fit, join ', ', map {sprintf '%.4f', $_} @values;
}


sub calcFit {
    my @values = @_;
    my $offset = int (-@values / 2);
    my $sum;

    $sum += ($_ - $offset++) ** 2 for @values;
    return $sum;
}
