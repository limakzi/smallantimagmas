gap> START_TEST( "test_properties_magma_isderangment.tst" );

## all-3-antimagmas-are-either-left-or-right-derangment-inducted
gap> List(AllSmallAntimagmas(3), M -> IsLeftDerangementInducted(M) );
[ false, false, false, false, true, true, true, true, true, false ]
gap> List(AllSmallAntimagmas(3), M -> IsRightDerangementInducted(M) );
[ true, true, true, true, false, false, false, false, false, true ]

## all-left-derangement-antimagmas-after-transposition-become-right-derangment
gap> List(Filtered(AllSmallAntimagmas(3), M -> IsLeftDerangementInducted(M) ), M -> IsRightDerangementInducted( TransposedMagma(M) ) );
[ true, true, true, true, true ]

gap> STOP_TEST( "test_properties_magma_isderangment.tst" );