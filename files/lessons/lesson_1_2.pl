print_header("Lesson 1 - Basic Rexfile");

h1("Example Rexfile");

code(q~  use Rex -feature => ['1.0'];

  user "root";
  password "box";

  group servers => "localhost";

  task "setup", group => "servers", sub {
    my $output = run "uptime";
    say $output;
  };~);

my $prompt = Term::Menu->new;
my $answer = $prompt->menu(
  lesson_1_4 => ["Lesson 1 (Run task)", 'n'],
  start      => ["Back", 'b'],
);

next_screen($answer);


