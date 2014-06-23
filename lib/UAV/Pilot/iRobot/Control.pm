package UAV::Pilot::iRobot::Control;
use v5.14;
use Moose;
use namespace::autoclean;
use IO::Socket::INET;
use UAV::Pilot::iRobot::Driver;

with 'UAV::Pilot::ControlRover';
with 'UAV::Pilot::Logger';


sub throttle
{
    my ($self, $rate) = @_;
    $self->driver->forward( $rate );
    return 1;
}

sub turn
{
    my ($self, $rate) = @_;
    my $abs_rate = abs $rate;

    if( $rate > 0 ) {
        $self->driver->rotateRight( $abs_rate );
    }
    else {
        $self->driver->rotateLeft( $abs_rate );
    }

    return 1;
}


no Moose;
__PACKAGE__->meta->make_immutable;
1;
__END__
