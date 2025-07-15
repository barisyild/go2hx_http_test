package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _lastRuneStart(_fd:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties; var _1 : stdgo.GoInt; } {
        var _p = @:assignType ((_buf.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L558"
        while (((_p >= (0 : stdgo.GoInt) : Bool) && !stdgo._internal.unicode.utf8.Utf8_runestart.runeStart(_buf[(_p : stdgo.GoInt)]) : Bool)) {
            {};
            _p--;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L560"
        if ((_p < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L561"
            return { _0 : (new _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties() : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties), _1 : (-1 : stdgo.GoInt) };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L563"
        return { _0 : (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info(_internal.golangdotorg.x.text.unicode.norm.Norm__inputbytes._inputBytes(_buf)?.__copy__(), _p)?.__copy__(), _1 : _p };
    }
