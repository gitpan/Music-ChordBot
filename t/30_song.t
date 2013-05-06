#! perl

use strict;
use warnings;
use Test::More tests => 2;

BEGIN { use_ok( 'Music::ChordBot::Song' ) }

song "Perl Canon";
tempo 120;

section "Funky Section";
style "Kubiac";
chord "D Min7 4";
chord "A Min7 4";
chord "D Min7 4";
chord "D Min7 4";

is( Music::ChordBot::Song::json()."\n", <<EOD, "resulting json" );
{"editMode":0,"tempo":120,"sections":[{"style":{"tracks":[{"volume":7,"id":158},{"volume":7,"id":136},{"volume":7,"id":141}],"chorus":4,"reverb":8},"name":"Funky Section","chords":[{"duration":4,"type":"Min7","root":"D"},{"duration":4,"type":"Min7","root":"A"},{"duration":4,"type":"Min7","root":"D"},{"duration":4,"type":"Min7","root":"D"}]}],"fileType":"chordbot-song","songName":"Perl Canon"}
EOD
