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
}

sub turn
{
}


no Moose;
__PACKAGE__->meta->make_immutable;
1;
__END__
