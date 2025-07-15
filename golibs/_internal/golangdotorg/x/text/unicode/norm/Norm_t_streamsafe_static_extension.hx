package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.norm.Norm.T_streamSafe_asInterface) class T_streamSafe_static_extension {
    @:keep
    @:tdfield
    static public function _isMax( _ss:_internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe):Bool {
        @:recv var _ss:_internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe = _ss;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L87"
        return _ss == ((30 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function _backwards( _ss:stdgo.Pointer<_internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe>, _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):_internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L72"
        if ((_ss.value > (30 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L73"
            throw new stdgo.AnyInterface(("streamSafe was not reset" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _c = @:assignType (_ss.value + (_p._nTrailingNonStarters() : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L76"
        if ((_c > (30 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L77"
            return (2 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
        };
        _ss.value = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L80"
        if (_p._nLeadingNonStarters() == ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L81"
            return (1 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L83"
        return (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
    }
    @:keep
    @:pointer
    @:tdfield
    static public function _next( _ss:stdgo.Pointer<_internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe>, _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):_internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L45"
        if ((_ss.value > (30 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L46"
            throw new stdgo.AnyInterface(("streamSafe was not reset" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _n = @:assignType (_p._nLeadingNonStarters() : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L49"
        {
            _ss.value = (_ss.value + ((_n : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe)) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
            if ((_ss.value > (30 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe) : Bool)) {
                _ss.value = (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L51"
                return (2 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L60"
        if (_n == ((0 : stdgo.GoUInt8))) {
            _ss.value = (_p._nTrailingNonStarters() : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L62"
            return (1 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L64"
        return (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
    }
    @:keep
    @:pointer
    @:tdfield
    static public function _first( _ss:stdgo.Pointer<_internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe>, _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Void {
        _ss.value = (_p._nTrailingNonStarters() : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
    }
}
