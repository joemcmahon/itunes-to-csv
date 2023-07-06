#!/usr/bin/env perl
use strict;
use warnings;

use Text::CSV qw(csv);

my @playlist = ([qw(Artist Song Album Label Minutes Seconds)]);

while(defined(my $line = <STDIN>)) {
  my($title, $time, $artist, $release, $plays) = split /\t/, $line;
  my($h, $m) = split /:/, $time;
  my @fields = ($artist, $title, $release, "", $h, $m);
  push @playlist, \@fields;
}
csv(in => \@playlist, out => "/tmp/playlist.csv");
open my $fh, "<", "/tmp/playlist.csv" or die "Can't open tempfile: $!\n";
my @lines = <$fh>;
print for @lines;


