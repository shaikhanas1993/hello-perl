package Product;
use strict;
use warnings;


sub new {
        my ($class,$args) = @_;
        my $self = bless { serial => $args->{serial}, name => $args->{name},price => $args->{price}},$class;
}

sub get_name{
    my $self = shift;
    return $self->{name};
}


sub set_name{
    my ($self,$new_name) = @_;
    $self->name = $new_name;
}

sub to_string{
    my $self = shift;
    print "name :: $self->{name}\n";
}

1;