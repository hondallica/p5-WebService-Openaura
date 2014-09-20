use strict;
use Test::More 0.98;
use Data::Dumper;

use_ok $_ for qw(
    WebService::Openaura
);

my $mbid = '65f4f0c5-ef9e-490c-aee3-909e7ae6b2ab',

my $openaura = new WebService::Openaura;

my $data = $openaura->classic_artists(
    $mbid,
    { id_type => 'musicbrainz:gid', },
);

sleep 2; ok $data;

my $data = $openaura->classic_version();
is $data->{environment}, 'prod';
is $data->{service}, 'classic';

my $data = $openaura->info_artists(
    $mbid,
    { id_type => 'musicbrainz:gid', },
);

sleep 2; ok $data;

my $data = $openaura->info_artists_bio(
    $mbid,
    { id_type => 'musicbrainz:gid', }
);

sleep 2; ok $data;

my $data = $openaura->info_artists_cover_photo(
    { id_type => 'oa:artist_id', }
);

sleep 2; ok $data;

my $data = $openaura->info_artists_fact_card(
    $mbid,
    { id_type => 'musicbrainz:gid', }
);
sleep 2; ok $data;

my $data = $openaura->info_artists_profile_photo(
    $mbid,
    { id_type => 'musicbrainz:gid', }
);
sleep 2; ok $data;

my $data = $openaura->info_artists_release_art(
    $mbid,
    { id_type => 'musicbrainz:gid', }
);
sleep 2; ok $data;

my $data = $openaura->info_artists_tags(
    $mbid,
    { id_type => 'musicbrainz:gid', }
);
sleep 2; ok $data;

my $data = $openaura->info_version();
sleep 2; ok $data;

my $data = $openaura->particles_artists(
    $mbid, { id_type => 'musicbrainz:gid', }
);
sleep 2; ok $data;

my $data = $openaura->particles_particle("5395c76f83ba4d4fb3d5a8e9");
sleep 2; ok $data;

my $data = $openaura->particles_sources("3881600");
sleep 2; ok $data;

my $data = $openaura->particles_version;
sleep 2; ok $data;

my $data = $openaura->search_artists({
    q => 'Metallica'
});
sleep 2; ok $data;

my $data = $openaura->search_artists_all({
    q => 'Megadeth'
});
sleep 2; ok $data;

my $data = $openaura->search_version;
sleep 2; ok $data;

my $data = $openaura->source_artists(
    $mbid, { 
    id_type => 'musicbrainz:gid', 
});
sleep 2; ok $data;

my $data = $openaura->source_sources("470397");
sleep 2; ok $data;

my $data = $openaura->source_version;
sleep 2; ok $data;


done_testing;
