use threads ('yield',
             'stack_size' => 64*4096,
             'exit' => 'threads_only',
             'stringify');

sub thread_entry {
    my ($cmd,$times) = @_;
    for( my $i =0; $i < $times; $i++)
    {
        my $p = `$cmd`;
        print $p;
    }
}


sub main {
    my ($threads, $times, $command) = @_;

    my @thrds;

    for(my $i = 0; $i < $threads; $i++)
    {
        $thrds[$i] =threads->create('thread_entry',($command,$times));
    }
    
    foreach my $t (@thrds)
    {
        $t->join();
    }
    
    print "Waiting for threads to complete";
}

main @ARGV;
