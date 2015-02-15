
print_header("Lesson 1 - Basic Rexfile");

print "Every Rex project starts with a "; print color('bold green'); print "Rexfile"; print color('reset'); print ".\n";
print "So, in this lesson I will show you how to create your first Rexfile.\n";
print "\n";

h1("Basic structure");

print "A Rexfile consists of 2 basic parts.\nThe global part: this is where you define username, password, server groups and some other things.";
print "\nThe task part: this is where you define which actions should run on your servers.\n\n";



my $prompt = Term::Menu->new;
my $answer = $prompt->menu(
  lesson_1_2 => ["Lesson 1 (The Rexfile)", 'n'],
  start      => ["Back", 'b'],
);

next_screen($answer);


