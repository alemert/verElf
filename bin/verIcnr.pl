#!/usr/bin/perl

use strict ;

while( defined $ARGV[0] )
{
  if( $ARGV[0] =~ s/^-// ) 
  {
    $majorFlag = $ARGV[0] ;
    shift @ARGV ;
    next ;
  }

  if( $majorFlag eq 'v' )
  {
    my $verFile = $ARGV[0] ;
    shift @ARGV ;
    next ;
  }

  die "not known attribute" ;
}


die "can not open file $verFile" unless( open VER, $verFile ) ;

foreach (<VER>)
{
  print $_ ;
}


