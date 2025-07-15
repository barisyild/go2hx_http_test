package _internal.bytes_test;
function exampleCompare_search():Void {
        var _needle:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _haystack:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        var _i = @:assignType (stdgo._internal.sort.Sort_search.search((_haystack.length), function(_i:stdgo.GoInt):Bool {
            //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L170"
            return (stdgo._internal.bytes.Bytes_compare.compare(_haystack[(_i : stdgo.GoInt)], _needle) >= (0 : stdgo.GoInt) : Bool);
        }) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L172"
        if (((_i < (_haystack.length) : Bool) && stdgo._internal.bytes.Bytes_equal.equal(_haystack[(_i : stdgo.GoInt)], _needle) : Bool)) {};
    }
