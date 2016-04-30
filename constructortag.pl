my @filesTolookFor = ("*.cc", "*.h", "*.cpp", "*.hpp", '*.js', '*.pm', '*.cgi', '*.thtml', '*.pl');
my @constructorRegexps = ('(new\s+([a-zA-Z0-9_:]*))\s*(?=\()');
my @memberInit = ('\s*(m_[a-zA-Z0-9_]*)\s*\=(^=).*', '\s*[a-zA-Z0-9_:->]*(m_[a-zA-Z0-9_]*)\s*=(^=).*', '\s*(m_[a-zA-Z0-9_]*)\s*\(.*\)');
foreach my $ftype (@filesTolookFor) {
    my @files = `find . -name  $ftype`;
    foreach my $file (@files) {
    	chomp $file;
        open(my $fh, '<', $file) or print STDERR "Unable to open file $file:$!\n";
	while(<$fh>) {
	    chomp;
	    foreach $creg (@constructorRegexps) {
	    	if($_ =~ /($creg)/) {
		    my $tag = $3;
		    my $regexp = $_;
		    s/^\s*//;
		    $regexp =~ s/\*/\\\*/;
		    $file =~ s/\s*$//;
		    print "cc:$tag\t$file\t\/\^$regexp\$\/\;\"\n";
		}
	    }
	    #This also cathches some non init so commenting out now
#	    foreach my $initreg (@memberInit) {
#	    	if($_ =~ /$initreg/) {
#		    my $tag = $1;
#		    my $regexp = $_;
#		    $regexp =~ s/\*/\\\*/;
#		    print "mi:$tag\t$file\t\/\^$regexp\$\/\;\"\n";
#		}
#	    }
	}
	close $fh;
    }
}
