print_header("Lesson 2 - Managing services");

h1("NTP service finished");

p("Congratulations, you have now finished your first service.");

p("If you have more questions, feel free to join us on irc (irc.freenode.net / #rex) or on our google user group at https://groups.google.com/forum/#!forum/rex-users.");


my $prompt = Term::Menu->new;
my $answer = $prompt->menu(
  start => ["Main menu", 'm'],
);

next_screen($answer);
