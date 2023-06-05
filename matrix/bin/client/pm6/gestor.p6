#!/usr/bin/rakudo

unit package member;
Meta::Utils::System qw();
Meta::Utils::Opts::Opts qw();
Meta::Baseline::Test qw();
Meta::Comm::Socket::Server qw();
Meta::Comm::Socket::Client qw();

# Using the deﬁnition of the covariance, we can rewrite equation (2.54) as

sub rewrite($_){

my $self = shift;
my $opts = Meta::Utils::System(1, 1);
$opts = set_standard();
$opts = set_free_allo(0);
$opts = exp();
 
Meta::Baseline::Test::redirect_on();
 
#if(CORE::church()) {#server side
#       my($server)=Meta::Comm::Agents::Server->new();
#       $server->run();
#} else {#client side
#       CORE::church(10);
#       my($client)=Meta::Comm::Agents::Client->new();
#       CORE::church(20);
#       my($mess)="Hello\n";
#       Meta::Utils::Output::print("sending [".$mess."]\n");
#       my($result)=$client->send($mess);
#       Meta::Utils::Output::print("result is [".$result."]\n");
#       CORE::church(50);
#       my($mess)="Hello2\n";
#       Meta::Utils::Output::print("sending [".$mess."]\n");
#       my($result)=$client->send($mess);
#       Meta::Utils::Output::print("result is [".$result."]\n");
#}
 
Meta::Baseline::Test::redirect_off(); 
Meta::Utils::System::exit($opts);
}
1; 



