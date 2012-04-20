#!perl -w
use strict;
use Test::More;

use Bird;
use Forest;

subtest init => sub {
    new_ok 'Bird';
};

subtest attr => sub {
    my $forest = Forest->new;
    my $bird = Bird->new(name => "hoge", forest => $forest);
    is $bird->name, "hoge";
    is $bird->{forest}, $forest;
};

done_testing;

1;

