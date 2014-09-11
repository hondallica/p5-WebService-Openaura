use strict;
use Test::More 0.98;

use_ok $_ for qw(
    WebService::Openaura
);

my $openaura = new WebService::Openaura;

isa_ok $openaura, 'WebService::Openaura';
isa_ok $openaura->{http}, 'Furl::HTTP';

done_testing;

