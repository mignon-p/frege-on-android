#!/usr/bin/perl -w

# change-package-name.pl - rename package and activity in Android example
#
# Written in 2016 by Patrick Pelletier <code@funwithsoftware.org>
#
# To the extent possible under law, the author(s) have dedicated all
# copyright and related and neighboring rights to this software to the
# public domain worldwide. This software is distributed without any
# warranty.
#
# You should have received a copy of the CC0 Public Domain Dedication
# along with this software. If not, see
# <http://creativecommons.org/publicdomain/zero/1.0/>.

if ($#ARGV != 1) {
    print STDERR "Usage: $0 <package name> <activity name>\n";
    print STDERR "example: $0 com.example.whatever WhateverActivity\n";
    exit 1;
}

my ($newPkg, $newActivity) = @ARGV;

my $oldPkg = "org.funwithsoftware.frege_example";
my $oldActivity = "FregeActivity";

sub slashify {
    my $arg = $_[0];
    $arg =~ s%\.%/%g;
    return $arg;
}

sub sourceFiles {
    my ($pkg, $activity) = @_;
    my $path = slashify($pkg);
    return ("src/main/java/$path/$activity.java",
            "src/androidTest/java/$path/${activity}Test.java");
}

sub dirname {
    my $arg = $_[0];
    $arg =~ s%[^/]*$%%;
    return $arg;
}

sub cmd {
    my @args = @_;
    print STDERR join(" ", @args), "\n";
    if (system(@args) != 0) {
        die "$args[0] failed\n";
    }
}

sub replaceFile {
    my $file = $_[0];
    print STDERR "Modifying $file\n";

    open (F, "<", $file) or die "Can't open $file for reading: $!\n";
    my @results = ();
    while (<F>) {
        my $x = $_;
        $x =~ s/\Q$oldPkg\E/$newPkg/g;
        $x =~ s/$oldActivity/$newActivity/g;
        push @results, $x;
    }
    close F or die "Can't close $file: $!\n";

    open (F, ">", $file) or die "Can't open $file for writing: $!\n";
    print F join("", @results);
    close F or die "Can't close $file: $!\n";
}

my ($oldActivityFile, $oldTestFile) = sourceFiles($oldPkg, $oldActivity);
my ($newActivityFile, $newTestFile) = sourceFiles($newPkg, $newActivity);
my $newActivityDir = dirname($newActivityFile);
my $newTestDir = dirname($newTestFile);
my @filesToModify = ($newActivityFile,
                     $newTestFile,
                     "src/main/AndroidManifest.xml",
                     "src/main/res/layout/main.xml",
                     "src/main/res/values/strings.xml");

cmd("mkdir", "-p", $newActivityDir);
cmd("mkdir", "-p", $newTestDir);
cmd("git", "mv", $oldActivityFile, $newActivityFile);
cmd("git", "mv", $oldTestFile, $newTestFile);

foreach my $f (@filesToModify) {
    replaceFile ($f);
    cmd("git", "add", $f);
}
