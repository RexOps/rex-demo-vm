print_header("Help creating new lessons");

h1("Every help is welcome :)");

p("If you want to help creating new lessons, feel free to fork the repository on https://github.com/RexOps/rex-demo-vm.");


my $prompt = Term::Menu->new;
my $answer = $prompt->menu(
  start => ["Main menu", 'm'],
);

next_screen($answer);
