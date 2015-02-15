#!/usr/bin/env perl

use strict;
use warnings;

use Term::Menu;
use Term::ANSIColor;


sub print_header {
  system "clear";
  print color('bold');
  print "================================================================================\n";
  print color('blue');
  print " $_[0]\n";
  print color('reset');
  print color('bold');
  print "--------------------------------------------------------------------------------\n\n";
  print color('reset');
}

sub h1 {
  my ($h) = @_;
  print color('bold');
  print "= $h\n\n";
  print color('reset');
}

sub p {
  my ($p) = @_;
  print "$p\n\n";
}

sub code {
  my ($c) = @_;
  print color('bright_black');
  print "$c\n\n";
  print color('reset');
}

sub next_screen {
  my ($lesson) = @_;

  if($lesson eq "start") {
    do "lessons/start.pl";
  }

  if($lesson eq "shell") {
    print_header("To go back to the lessons, just type ,,exit'' and press ENTER.");
    system "bash";
    $lesson = $_[1];
  }

  if($lesson eq "quit") {
    exit 0;
  }

  do "lessons/$lesson.pl";
}

next_screen('start');

