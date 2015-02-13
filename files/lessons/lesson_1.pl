print_header("Lesson 1 - Basic Rexfile");

print "Every Rex projects starts with a Rexfile.\n";
print "So in this lessons i will show you how you can create your first Rexfile.\n";
print "\n";

print "= Basic structure\n\n";

print "A Rexfile consists of 2 basic parts. The global part, this is where you define username, password, server groups and some other things.";
print "\nThe task part, this is where you define which actions should run on your servers.\n\n";

print "= Example Rexfile\n\n";

print q~
  use Rex -feature => ['1.0'];

  user "root";
  password "box";

  group servers => "localhost";

  task "setup", group => "servers", sub {
    my $output = run "uptime";
    say $output;
  };
~;

print "\nYou'll find this example Rexfile in the directory 'examples'.\n";



