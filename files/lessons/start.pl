
print_header("Rex interactive VM");

my $prompt = Term::Menu->new;
my $answer = $prompt->menu(
  lesson_1 => ["Lesson 1 (Basic Rexfile)", '1'],
  lesson_2 => ["Lesson 2 (Managing Services)", '2'],
  shell    => ["Drop to a shell", 's'],
  quit     => ["Quit", 'q'],
);

next_screen($answer);
