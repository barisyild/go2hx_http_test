package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.norm.Norm.T_nfcTrie_asInterface) class T_nfcTrie_static_extension {
    @:keep
    @:tdfield
    static public function _lookupValue( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfctrie.T_nfcTrie>, _n:stdgo.GoUInt32, _b:stdgo.GoUInt8):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfctrie.T_nfcTrie> = _t;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2958"
        if ((_n < (46u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2960"
            return (_internal.golangdotorg.x.text.unicode.norm.Norm__nfcvalues._nfcValues[(((_n << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_b : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt16);
        } else {
            _n = (_n - ((46u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2963"
            return (_internal.golangdotorg.x.text.unicode.norm.Norm__nfcsparse._nfcSparse._lookup(_n, _b) : stdgo.GoUInt16);
        };
    }
    @:keep
    @:tdfield
    static public function _lookupStringUnsafe( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfctrie.T_nfcTrie>, _s:stdgo.GoString):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfctrie.T_nfcTrie> = _t;
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2931"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2932"
            return _internal.golangdotorg.x.text.unicode.norm.Norm__nfcvalues._nfcValues[(_c0 : stdgo.GoInt)];
        };
        var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2935"
        if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2936"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(1 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2939"
        if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2940"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(2 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2943"
        if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2944"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(3 : stdgo.GoInt)]);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2946"
        return (0 : stdgo.GoUInt16);
    }
    @:keep
    @:tdfield
    static public function _lookupString( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfctrie.T_nfcTrie>, _s:stdgo.GoString):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfctrie.T_nfcTrie> = _t;
        var _v = (0 : stdgo.GoUInt16), _sz = (0 : stdgo.GoInt);
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2869"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2871"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _internal.golangdotorg.x.text.unicode.norm.Norm__nfcvalues._nfcValues[(_c0 : stdgo.GoInt)], _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (194 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2873"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2875"
            if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2876"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2880"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2881"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2883"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c1), _1 : (2 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2885"
            if (((_s.length) < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2886"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2890"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2891"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2896"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2897"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2899"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c2), _1 : (3 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2901"
            if (((_s.length) < (4 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2902"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2906"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2907"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2912"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2913"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c2 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[(_o : stdgo.GoInt)];
            var _c3 = @:assignType (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2918"
            if (((_c3 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c3 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2919"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (3 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2921"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c3), _1 : (4 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2924"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
            _v = __tmp__._0;
            _sz = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _lookupUnsafe( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfctrie.T_nfcTrie>, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfctrie.T_nfcTrie> = _t;
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2846"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2847"
            return _internal.golangdotorg.x.text.unicode.norm.Norm__nfcvalues._nfcValues[(_c0 : stdgo.GoInt)];
        };
        var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2850"
        if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2851"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(1 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2854"
        if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2855"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(2 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2858"
        if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2859"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(3 : stdgo.GoInt)]);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2861"
        return (0 : stdgo.GoUInt16);
    }
    @:keep
    @:tdfield
    static public function _lookup( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfctrie.T_nfcTrie>, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfctrie.T_nfcTrie> = _t;
        var _v = (0 : stdgo.GoUInt16), _sz = (0 : stdgo.GoInt);
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2784"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2786"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _internal.golangdotorg.x.text.unicode.norm.Norm__nfcvalues._nfcValues[(_c0 : stdgo.GoInt)], _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (194 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2788"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2790"
            if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2791"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2795"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2796"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2798"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c1), _1 : (2 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2800"
            if (((_s.length) < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2801"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2805"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2806"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2811"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2812"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2814"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c2), _1 : (3 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2816"
            if (((_s.length) < (4 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2817"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2821"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2822"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2827"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2828"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c2 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfcindex._nfcIndex[(_o : stdgo.GoInt)];
            var _c3 = @:assignType (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2833"
            if (((_c3 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c3 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2834"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (3 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2836"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c3), _1 : (4 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L2839"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
            _v = __tmp__._0;
            _sz = __tmp__._1;
            __tmp__;
        };
    }
}
