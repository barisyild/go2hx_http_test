package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.norm.Norm.Properties_asInterface) class Properties_static_extension {
    @:keep
    @:tdfield
    static public function trailCCC( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):stdgo.GoUInt8 {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L181"
        return _internal.golangdotorg.x.text.unicode.norm.Norm__ccc._ccc[(_p._tccc : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function leadCCC( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):stdgo.GoUInt8 {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L175"
        return _internal.golangdotorg.x.text.unicode.norm.Norm__ccc._ccc[(_p._ccc : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function cCC( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):stdgo.GoUInt8 {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L166"
        if ((_p._index >= (19385 : stdgo.GoUInt16) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L167"
            return (0 : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L169"
        return _internal.golangdotorg.x.text.unicode.norm.Norm__ccc._ccc[(_p._ccc : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function size( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):stdgo.GoInt {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L161"
        return (_p._size : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function decomposition( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L150"
        if (_p._index == ((0 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L151"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _i = @:assignType (_p._index : stdgo.GoUInt16);
        var _n = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__decomps._decomps[(_i : stdgo.GoInt)] & (63 : stdgo.GoUInt8) : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L155"
        _i++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L156"
        return (_internal.golangdotorg.x.text.unicode.norm.Norm__decomps._decomps.__slice__(_i, (_i + (_n : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _nTrailingNonStarters( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):stdgo.GoUInt8 {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L143"
        return ((_p._flags & (3 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function _nLeadingNonStarters( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):stdgo.GoUInt8 {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L139"
        return _p._nLead;
    }
    @:keep
    @:tdfield
    static public function _multiSegment( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Bool {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L135"
        return ((_p._index >= (6554 : stdgo.GoUInt16) : Bool) && (_p._index < (12449 : stdgo.GoUInt16) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function _isInert( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Bool {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L131"
        return (((_p._flags & (63 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) == (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo)) && (_p._ccc == (0 : stdgo.GoUInt8)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _hasDecomposition( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Bool {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L128"
        return (_p._flags & (4 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) != ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo));
    }
    @:keep
    @:tdfield
    static public function _combinesBackward( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Bool {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L127"
        return (_p._flags & (8 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) != ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo));
    }
    @:keep
    @:tdfield
    static public function _combinesForward( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Bool {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L126"
        return (_p._flags & (32 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) != ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo));
    }
    @:keep
    @:tdfield
    static public function _isYesD( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Bool {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L124"
        return (_p._flags & (4 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) == ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo));
    }
    @:keep
    @:tdfield
    static public function _isYesC( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Bool {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L123"
        return (_p._flags & (16 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo) == ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo));
    }
    @:keep
    @:tdfield
    static public function boundaryAfter( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Bool {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L109"
        return _p._isInert();
    }
    @:keep
    @:tdfield
    static public function boundaryBefore( _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Bool {
        @:recv var _p:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L96"
        if (((_p._ccc == (0 : stdgo.GoUInt8)) && !_p._combinesBackward() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L97"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L102"
        return false;
    }
}
