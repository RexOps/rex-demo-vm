print_header("Lesson 2 - Managing services");

h1("Events");

p("Many resources fire on_change events on which you can interact and run custom actions. For example, if a package gets updated or a configuration file gets changed, you would want to restart the service.");

code(q~  file "/etc/ntp.conf",
    source    => "files/etc/ntp.conf",
    owner     => "root",
    group     => "root",
    mode      => 644,
    on_change => sub { service "ntp", "restart"; }~);

p("You can find a complete example in ,,examples/lesson_2/events''.");


my $prompt = Term::Menu->new;
my $answer = $prompt->menu(
  shell       => ["Drop to shell", 's'],
  lesson_2_10  => ["Back", 'b'],
);

next_screen($answer, 'lesson_2_20');
