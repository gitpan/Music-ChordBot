#! perl

use strict;
use warnings;
use Test::More tests => 2;
use utf8;

BEGIN { use_ok( 'Music::ChordBot::Song' ) }

song "I’m Yours";
tempo 75;

section "Section 1";
style "Hammered";

chord "C Maj 4";
chord "G Maj 4";
chord "A Min 4";
chord "F Maj 4";
chord "C Maj 4";
chord "G Maj 4";
chord "A Min 4";
chord "F Maj 4";
chord "D Maj 1";
chord "D Silence 7";

is( Music::ChordBot::Song::json()."\n", <<EOD, "resulting json" );
{"editMode":0,"tempo":75,"sections":[{"style":{"tracks":[{"volume":7,"id":95},{"volume":7,"id":201}],"chorus":4,"reverb":8},"name":"Section 1","chords":[{"duration":4,"type":"Maj","root":"C"},{"duration":4,"type":"Maj","root":"G"},{"duration":4,"type":"Min","root":"A"},{"duration":4,"type":"Maj","root":"F"},{"duration":4,"type":"Maj","root":"C"},{"duration":4,"type":"Maj","root":"G"},{"duration":4,"type":"Min","root":"A"},{"duration":4,"type":"Maj","root":"F"},{"duration":1,"type":"Maj","root":"D"},{"duration":7,"type":"Silence","root":"D"}]}],"fileType":"chordbot-song","songName":"I’m Yours"}
EOD
