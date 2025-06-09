LoadPackage("smallantimagmas");

AntimagmaGenerateMultiplicationTable := function(order, id)
    return EnumeratorOfTuples(EnumeratorOfTuples([1 ..order ], order), order)[id];
end;

AntimagmaSerializeMultiplicationTable := function(magma)
    local order;
    order := Size(magma);
    return List(MultiplicationTable(magma), r -> Position(EnumeratorOfTuples([1 .. order], order), r));
end;

AntimagmaDeserializeMultiplicationTable := function(order, table)
    return List(table, row -> EnumeratorOfTuples([1 .. order], order)[row]);
end;

AntimagmaSerializeMagma := function(magma)
    local code;
    code := Concatenation("local result;", "result:=", String(AntimagmaSerializeMultiplicationTable(magma)), ";");
    return code;
end;

AntimagmaSaveToFile := function(order, id)
    local datafile, output, magma;

    magma := MagmaByMultiplicationTable(AntimagmaGenerateMultiplicationTable(order, id));

    if IsAntiassociative(magma) then
        datafile := Concatenation( 
                GAPInfo.PackagesInfo.("smallantimagmas")[1].InstallationPath,
                "classifier/data/all/",
                "small_", String(order), "_", String(id), ".g"
        );
        output := OutputTextFile( datafile, false );
        SetPrintFormattingStatus( output, false );
        PrintTo(  output, AntimagmaSerializeMagma(magma) );
        CloseStream(output);
        return output;
    fi;

    return fail;
end;

