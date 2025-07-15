package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function bytes(_t:_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _result = (null : stdgo.Slice<stdgo.GoUInt8>), _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L678"
        return _internal.golangdotorg.x.text.transform.Transform__doappend._doAppend(_t, (0 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>((_b.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _b);
    }
