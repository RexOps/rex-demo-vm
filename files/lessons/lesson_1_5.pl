print_header("Lesson 1 - Executing Task");

p("Congratulations, you just executed your first Rex task.");

my $prompt = Term::Menu->new;
my $answer = $prompt->menu(
  lesson_1_4  => ["Back", 'b'],
  start  => ["Main menu", 'm'],
);

next_screen($answer);
