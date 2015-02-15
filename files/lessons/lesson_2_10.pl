print_header("Lesson 2 - Managing services");

h1("Events");

p("Many resources fire on_change events on which you can interact and run custom actions. For example if a package gets updated or a configuration file gets changed you want to restart the service.");

code(q~  pkg "ntp",
    ensure    => "latest",
    on_change => sub { service "ntp", "restart"; } ~);


my $prompt = Term::Menu->new;
my $answer = $prompt->menu(
  lesson_2_15 => ["Next (file resource on_change)", 'n'],
  lesson_2_5  => ["Back", 'b'],
);

next_screen($answer, 'lesson_2_15');
