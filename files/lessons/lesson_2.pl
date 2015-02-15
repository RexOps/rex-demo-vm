print_header("Lesson 2 - Managing services");

p("With Rex you can install, configure and ensure the state of services. To manage services you typically follow the pattern of ,,Package, File, Service''. This means that you first install the package, then configure the service and at last ensure that the service is running.");

p("In this lesson we will configure the ntp services and ensure that it is running.");

p("In the next screen we will show you the task to setup the service. You'll find complete example in ,,examples/lesson_2''.");


my $prompt = Term::Menu->new;
my $answer = $prompt->menu(
  lesson_2_5 => ["Lesson 2 (The task)", 'n'],
  start      => ["Back", 'b'],
);

next_screen($answer);


