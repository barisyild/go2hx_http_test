package _internal.reflect_test;
function _join(_b:haxe.Rest<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        var _b = new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(_b.length, 0, ..._b);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7214"
        return stdgo._internal.bytes.Bytes_join.join(_b, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
