print_header("Lesson 2 - Managing services");

h1("The task to manage ntp");

code(q~ task "setup", group => "servers", sub {
    pkg "ntp", ensure => "present";

    file "/etc/ntp.conf",
      source => "files/etc/ntp.conf",
      owner  => "root",
      group  => "root",
      mode   => 644;

    service "ntp", ensure => "started";
  };
  ~);

my $prompt = Term::Menu->new;
my $answer = $prompt->menu(
  shell       => ["Drop to shell", 's'],
  lesson_2    => ["Back", 'b'],
);

next_screen($answer, 'lesson_2_10');
