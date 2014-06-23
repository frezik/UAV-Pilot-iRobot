package UAV::Pilot::iRobot::Driver;
use v5.14;
use Moose;
use namespace::autoclean;
use MooseX::NonMoose;


with 'UAV::Pilot::Driver';
extends 'Robotics::IRobot';


no Moose;
__PACKAGE__->meta->make_immutable;
1;
__END__
