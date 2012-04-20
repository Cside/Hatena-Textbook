#!perl -w
use strict;
use Test::More;

use Bird;
use Tweet;
use Forest;

subtest init => sub {
    new_ok 'Tweet';
};

subtest attr => sub {
    my $owner = Bird->new(name => "hoge");
    my $msg = Tweet->new(owner => $owner, message => "foobar");
    is $msg->message, "foobar";
    is $msg->owner, $owner;
};

done_testing;
