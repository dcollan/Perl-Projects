open my $part1, "<", "part1.txt";
open my $part2, "<", "part2.txt";
open my $output, "+>", "recipe.txt";

while (<$part1>) {
    if ($_ ne "Filler\n") {
        print $output $_;
    }
}

while (<$part2>) {
    if ($_ ne "Filler\n") {
        print $output $_;
    }
}

seek $output, 0, 0;
print <$output>;