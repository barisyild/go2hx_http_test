package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function append(_t:_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _result = (null : stdgo.Slice<stdgo.GoUInt8>), _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L684"
        if ((_dst.length) == (_dst.capacity)) {
            var _n = @:assignType ((_src.length) + (_dst.length) : stdgo.GoInt);
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _dst = (_b.__slice__(0, _b.__copyTo__(_dst)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L689"
        return _internal.golangdotorg.x.text.transform.Transform__doappend._doAppend(_t, (_dst.length), (_dst.__slice__(0, _dst.capacity) : stdgo.Slice<stdgo.GoUInt8>), _src);
    }
