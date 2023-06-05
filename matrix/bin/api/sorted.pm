#!/usr/bin/perl

package matrix::bin;
package bin::api;
package api::ordinary;

use v5.30;
use strict;
use warnings;
use feature qw(say);

=head1 Name
# Ordinal Relations among Vectors
# There are several possible ways to form a rank ordering of vectors of the same
# order, but no complete ordering is entirely satisfactory. (Note the unfortunate
# overloading of the word “order” or “ordering” here.) If x and y are vectors of
# the same order and for corresponding elements x i > y i , we say x is greater
# than y and write
# x > y.
=cut

sub Ordinal(@){
    my $self     = shift;
    my $vectors  = $self->{"x","y"};
    my $elements = $self->{"x","y"} if say "$self x[i] > y[i]";
    my $write    = $self->{"x > y"} if say "$self x[i] > y[i]";

    if ($self eq $vectors gt $elements){
        $self.output("vectors: ", $self, $vectors, $elements) if $write;
    } else {
      return $self.exist(@!, [1,2,3], $vectors, $elements) if $write;  
    }
}
=head2 Synopisis
# This relationship is a partial ordering (see Exercise 8.1a). The expression x ≥ 0
# means that all of the elements of x are nonnegative.
=cut

sub x(@){
    my $self = shift;
    my $exp  = $self.exp({"all", "x"});
    my $all  = $self.output({"x"});

    if ($self eq $exp gt $all) {
        return 0;
    }
} 
=head3 Description
# Set Operations on Vector Spaces
# Although a vector space is a set together with operations, we often speak of a
# vector space as if it were just the set, and we use some of the same notation to
# refer to vector spaces as we use to refer to sets. For example, if V is a vector
# space, the notation W ⊆ V indicates that W is a vector space (that is, it has
# the properties listed above), that the set of vectors in the vector space W is
# a subset of the vectors in V, and that the operations in the two objects are
# the same. A subset of a vector space V that is itself a vector space is called a
# subspace of V.
=cut

sub V(@){
    my $self   = shift;
    my $vector = $self.v(5, 10, 6, 20, 8, 30, 9);
    my $listed = $self->{"w", "v"};
    my $set    = s/{(5, 10, 6, 20, 8, 30, 9)}/^/pm;

    if ($self eq $vector gt $listed) {
        $self => "called(v)"
    } else {
      say s/{(5, 10, 6, 20, 30, 9)}/^/pm;
    }
}
=head4 Method<say>
# The intersection of two vector spaces of the same order is a vector space.
# The union of two such vector spaces, however, is not necessarily a vector space
# (because for v 1 ∈ V 1 and v 2 ∈ V 2 , v 1 + v 2 may not be in V 1 ∪ V 2 ). We 
# refer to a
# set of vectors of the same order together with the addition operator (whether
# or not the set is closed with respect to the operator) as a “space of vectors”.
# If V 1 and V 2 are spaces of vectors, the space of vectors
# V = {v, s.t. v = v 1 + v 2 , v 1 ∈ V 1 , v 2 ∈ V 2 }
=cut

sub V1(@) {
    my $self  = shift;
    my $refer = $self->{"v, s.t. v = v 1 + v 2 , v 1 ∈ V 1 , v 2 ∈ V 2 "};
    my $space = $self->{$refer} if $self.exist(0, 10, 5, 20, 6, 30, 8);
    my $add   = $self->{$refer} if $self.set(0, 1, 2, 3);

    if ($self eq $refer gt $space) {
        return $add.output(0, 1, 2, 3); # testing running current
    } else {
        say "$self, $refer, $space, $add" if shift;
    }
}
=item called<sum>
# is called the sum of the spaces V 1 and V 2 and is denoted by V = V 1 + V 2 . If
# the spaces V 1 and V 2 are vector spaces, then V 1 + V 2 is a vector space, as is
# easily veriﬁed.
# If V 1 and V 2 are essentially disjoint vector spaces (not just spaces of vec-
# tors), the sum is called the direct sum. This relation is denoted by
# V = V 1 ⊕ V 2 .
=cut

sub V2(@) {
    my $self     = shift;
    my $sum      = $self.sum.vec(1, 2, 3);
    my $vector   = $self.vec(10, 5, 30);
    my $relation = $self.vec(10, 5, 30);

    if ($self eq $sum gt $vector){
        $self.just($sum, $vector);
    } else {
        return $sum.v2 if $vector;
    }
    
}
