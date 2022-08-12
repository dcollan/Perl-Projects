open my $source, "<", "source.mml" or die "*ERROR* Could not open source file.";
open my $output, "+>", "output.txt" or die "*ERROR* Could not create output file.";

@macros = ("#date#", "#recipient#", "#sender#");
@values = ("8/11/22", "Danny Collan", "Mister Anderson");

# print <$source>;

$linecount = 1;

while (<$source>) {

    print "$linecount: $_";

    $line = $_;

    foreach (0..$#macros) {
        $line =~ s/$macros[$_]/$values[$_]/;
    }

    print "-> $line";
    print $output $line;

    $linecount++;

}

print "--------------------------------\n";
seek $output, 0, 0;
print <$output>;

# close $source;

