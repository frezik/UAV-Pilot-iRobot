use v5.14;
use UAV::Pilot::Exceptions;


sub uav_module_init
{
    my ($class, $cmd, $args) = @_;
    return 1;
}


no Moose;
__PACKAGE__->meta->make_immutable;
1;
__END__

