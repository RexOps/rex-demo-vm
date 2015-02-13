#!/usr/bin/env perl

use Term::Menu;

print_header("Rex interactive VM");

my $prompt = Term::Menu->new;
my $answer = $prompt->menu(
  lesson_1 => ["Lesson 1 (Basic Rexfile)", '1'],
  lesson_2 => ["Lesson 2 (Managing Services)", '2'],
  quit     => ["Drop to a shell", 's'],
);

sub print_header {
  system "clear";
  print "================================================================================\n";
  print " $_[0]\n";
  print "--------------------------------------------------------------------------------\n\n";
}

if($answer eq "quit") {
  exit;
}

do "lessons/$answer.pl";

