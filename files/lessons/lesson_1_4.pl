print_header("Lesson 1 - Executing Task");

h1("Execute a task");

p("To execute a task you have to append the taskname to the rex command.");

code(q~  rex setup~);

p("To run the previous example, just go to a shell, change into the directory ,,examples/lesson_1'' and run the above command.");


my $prompt = Term::Menu->new;
my $answer = $prompt->menu(
  shell  => ["Drop to shell.", 's'],
  start  => ["Main menu", 'm'],
);

next_screen($answer, 'lesson_1_5');
