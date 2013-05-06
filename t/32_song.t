#! perl

use strict;
use warnings;
use Test::More tests => 2;
use utf8;

BEGIN { use_ok( 'Music::ChordBot::Song' ) }

song "All Of Me";
tempo 105;

section "All Of Me 1";
style "Chicago";

C 4; C; E7; E7; A7; A7; Dm7; Dm7; E7; E7; Am7; Am7; D7; D7; Dm7; G7;

section "All Of Me 2";
style "Swingatron";

C 4; C; E7; E7; A7; A7; Dm7; Dm7; Dm7; Ebdim7; Em7; A9; Dm7b5; G13;
C 2; Ebdim7; Dm7; G7;

is( Music::ChordBot::Song::json()."\n", <<EOD, "resulting json" );
{"editMode":1,"tempo":105,"sections":[{"style":{"tracks":[{"volume":7,"id":271},{"volume":7,"id":269},{"volume":7,"id":272}],"chorus":4,"reverb":8},"name":"All Of Me 1","chords":[{"duration":4,"type":"Maj","root":"C"},{"duration":4,"type":"Maj","root":"C"},{"duration":4,"type":"7","root":"E"},{"duration":4,"type":"7","root":"E"},{"duration":4,"type":"7","root":"A"},{"duration":4,"type":"7","root":"A"},{"duration":4,"type":"Min7","root":"D"},{"duration":4,"type":"Min7","root":"D"},{"duration":4,"type":"7","root":"E"},{"duration":4,"type":"7","root":"E"},{"duration":4,"type":"Min7","root":"A"},{"duration":4,"type":"Min7","root":"A"},{"duration":4,"type":"7","root":"D"},{"duration":4,"type":"7","root":"D"},{"duration":4,"type":"Min7","root":"D"},{"duration":4,"type":"7","root":"G"}]},{"style":{"tracks":[{"volume":7,"id":130},{"volume":7,"id":91},{"volume":7,"id":364}],"chorus":3,"reverb":6},"name":"All Of Me 2","chords":[{"duration":4,"type":"Maj","root":"C"},{"duration":4,"type":"Maj","root":"C"},{"duration":4,"type":"7","root":"E"},{"duration":4,"type":"7","root":"E"},{"duration":4,"type":"7","root":"A"},{"duration":4,"type":"7","root":"A"},{"duration":4,"type":"Min7","root":"D"},{"duration":4,"type":"Min7","root":"D"},{"duration":4,"type":"Min7","root":"D"},{"duration":4,"type":"Dim7","root":"Eb"},{"duration":4,"type":"Min7","root":"E"},{"duration":4,"type":"9","root":"A"},{"duration":4,"type":"Min7(b5)","root":"D"},{"duration":4,"type":"13","root":"G"},{"duration":2,"type":"Maj","root":"C"},{"duration":2,"type":"Dim7","root":"Eb"},{"duration":2,"type":"Min7","root":"D"},{"duration":2,"type":"7","root":"G"}]}],"fileType":"chordbot-song","songName":"All Of Me"}
EOD
