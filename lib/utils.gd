#! @Arguments M
#! @Description
#!  identifies whether magma <A>M</A> is antiassociative magma.
#! @BeginExampleSession
#! gap> IsAntiassociative(OneSmallGroup(16));
#! false
#! gap> IsAntiassociative(OneSmallAntimagma(2));
#! true
#! gap> IsAntiassociative(OneSmallAntimagma(3));
#! true
#! @EndExampleSession
DeclareGlobalFunction( "IsAntiassociative" );

#! @Arguments M, N
#! @Description
#!  computes an isomoprhism between magmas <A>M</A>, <A>N</A>.
#! @BeginExampleSession
#! gap> M := SmallAntimagma(2, 1);
#! <magma with 2 generators>
#! gap> N := MagmaByMultiplicationTable([ [2, 1], [2, 1] ]);
#! <magma with 2 generators>
#! gap> MagmaIsomorphism(M, N);
#! <mapping: Domain([ m1, m2 ]) -> Domain([ m1, m2 ]) >
#! @EndExampleSession
DeclareGlobalFunction( "MagmaIsomorphism" );

#! @Arguments M, N
#! @Description
#!  creates an antiisomoprhism between magmas <A>M</A>, <A>N</A>.
#! @BeginExampleSession
#! gap> M := SmallAntimagma(2, 1);
#! <magma with 2 generators>
#! gap> N := SmallAntimagma(2, 2);
#! <magma with 2 generators>
#! gap> MagmaAntiisomorphism(M, N);
#! <mapping: Domain([ m1, m2 ]) -> Domain([ m1, m2 ]) >
#! @EndExampleSession
DeclareGlobalFunction( "MagmaAntiisomorphism" );

#! @Arguments M, N
#! @Description
#!  identifies whether magmas <A>M</A>, <A>N</A> are isomorphic.
#! @BeginExampleSession
#! gap> M := SmallAntimagma(2, 1);
#! <magma with 2 generators>
#! gap> N := SmallAntimagma(2, 2);
#! <magma with 2 generators>
#! gap> T := MagmaByMultiplicationTable([ [2, 1], [2, 1] ]);
#! <magma with 2 generators>
#! gap> IsMagmaIsomorphic(M, M);
#! true
#! gap> IsMagmaIsomorphic(M, T);
#! true
#! gap> IsMagmaIsomorphic(M, N);
#! false
#! @EndExampleSession
DeclareGlobalFunction( "IsMagmaIsomorphic" );

#! @Arguments [M, N]
#! @Description
#!  identifies whether magmas <A>M</A>, <A>N</A> are anti-isomorphic.
#! @BeginExampleSession
#! gap> N := SmallAntimagma(2, 1);
#! <magma with 2 generators>
#! gap> M:= SmallAntimagma(2, 1);
#! <magma with 2 generators>
#! gap> N := SmallAntimagma(2, 2);
#! <magma with 2 generators>
#! gap> IsMagmaAntiisomorphic(M, M);
#! false
#! gap> IsMagmaAntiisomorphic(M, N);
#! true
#! gap> IsMagmaAntiisomorphic(M, TransposedMagma(M));
#! true
#! @EndExampleSession
DeclareGlobalFunction( "IsMagmaAntiisomorphic" );

#! @Arguments [M]
#! @Description
#!  generates transposed magma <A>M</A>.
DeclareGlobalFunction( "TransposedMagma" );

#! @Arguments [m, k]
#! @Description
#!  returns a left $k$-power of element <A>m</A>.
DeclareGlobalFunction( "LeftPower" );

#! @Arguments [m, k]
#! @Description
#!  returns a right $k$-power of element <A>m</A>.
DeclareGlobalFunction( "RightPower" );

#! @Arguments [m, k]
#! @Description
#!  returns a left order of element <A>m</A>.
DeclareGlobalFunction( "LeftOrder" );

#! @Arguments [m, k]
#! @Description
#!  returns a right order of element <A>m</A>.
DeclareGlobalFunction( "RightOrder" );

#! @Arguments [M]
#! @Description
#!  if magma is left cyclic <A>m</A>.
DeclareGlobalFunction( "IsLeftCyclic" );

#! @Arguments [M]
#! @Description
#!  if magma is left cyclic <A>m</A>.
DeclareGlobalFunction( "IsRightCyclic" );

#! @Arguments [M]
#! @Description
#!  if magma is right cancellative <A>m</A>.
DeclareGlobalFunction( "IsRightCancellative" );

#! @Arguments [M]
#! @Description
#!  if magma is left cancellative <A>m</A>.
DeclareGlobalFunction( "IsLeftCancellative" );

#! @Arguments [m, k]
#! @Description
#!  if magma is cancellative <A>m</A>.
DeclareGlobalFunction( "IsCancellative" );

#! @Arguments [M]
#! @Description
#!  identifies whether magma <A>M</A> (a string) 
#!  has property A3.
DeclareGlobalFunction( "HasPropertyA3" );
