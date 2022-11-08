use strict;
use warnings;
use Test::More;
use Test::Fatal;
{ package Local::Dummy1; use Test::Requires 'Moo' };

{
	package TestRole1;
	use Moo::Role;
}

{
	package TestRole2;
	use Moo::Role;
	use Types::Standard qw(ArrayRef);
	use Sub::HandlesVia;

	has test => (
		is          => 'ro',
		isa         => ArrayRef,
		default     => sub { [] },
		handles_via => 'Array',
		handles     => { all_test => 'all' },
	);
}

{
	package TestClass;
	use Moo;
	with qw(
		TestRole1
		TestRole2
	);
}

my $obj = TestClass->new( test => [ 1, 2 ] );
is_deeply( [ $obj->all_test ], [ 1, 2 ] );

done_testing;
