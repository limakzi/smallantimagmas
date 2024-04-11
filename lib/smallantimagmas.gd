#! @Arguments [n]
#! @Description
#!  count number of antiassociative magmas of specified size <A>n</A> (a number) 
#! @BeginExampleSession
#! gap> NrSmallAntimagmas(2);
#! 2
#! gap> NrSmallAntimagmas(3);
#! 10
#! gap> NrSmallAntimagmas(4);
#! 17780
#! @EndExampleSession
DeclareGlobalFunction( "NrSmallAntimagmas" );

#! @Arguments [n]
#! @Description
#!  returns all antiassociative magmas of specified size <A>n</A> (a number) 
DeclareGlobalFunction( "AllSmallAntimagmas" );

#! @Arguments [n, i]
#! @Description
#!  returns antiassociative magma of id <A>[n, i]</A> (a number) 
DeclareGlobalFunction( "SmallAntimagma" );

#! @Arguments [n, i]
#! @Description
#!  returns random antiassociative magma of size <A>n</A> (a number) 
DeclareGlobalFunction( "OneSmallAntimagma" );
