package Tweet;

use strict;
use warnings;
use Class::Accessor::Lite (
    rw => [qw(message stamp owner)],
);

use DateTime;
use Time::HiRes;

sub new {
    my $class = shift;
    my %info = @_;
    my $stamp = Time::HiRes::time();
    my $self = {
        owner => $info{owner},
        stamp => DateTime->from_epoch(epoch => $stamp),
        message => $info{message},
    };
    return bless $self, $class;
}

sub timestamp {
    my $self = shift;
    return $self->{stamp};
}

1;

