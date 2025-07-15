package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.bidi.Bidi.T_bidiTrie_asInterface) class T_bidiTrie_static_extension {
    @:keep
    @:tdfield
    static public function _lookupValue( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_biditrie.T_bidiTrie>, _n:stdgo.GoUInt32, _b:stdgo.GoUInt8):stdgo.GoUInt8 {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_biditrie.T_bidiTrie> = _t;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L196"
        {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L198"
            return (_internal.golangdotorg.x.text.unicode.bidi.Bidi__bidivalues._bidiValues[(((_n << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_b : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt8);
        };
    }
    @:keep
    @:tdfield
    static public function _lookupStringUnsafe( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_biditrie.T_bidiTrie>, _s:stdgo.GoString):stdgo.GoUInt8 {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_biditrie.T_bidiTrie> = _t;
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L169"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L170"
            return _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidivalues._bidiValues[(_c0 : stdgo.GoInt)];
        };
        var _i = @:assignType (_internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L173"
        if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L174"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(1 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L177"
        if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L178"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(2 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L181"
        if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L182"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(3 : stdgo.GoInt)]);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L184"
        return (0 : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function _lookupString( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_biditrie.T_bidiTrie>, _s:stdgo.GoString):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_biditrie.T_bidiTrie> = _t;
        var _v = (0 : stdgo.GoUInt8), _sz = (0 : stdgo.GoInt);
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L107"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L109"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidivalues._bidiValues[(_c0 : stdgo.GoInt)], _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (194 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L111"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L113"
            if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L114"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L118"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L119"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L121"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c1), _1 : (2 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L123"
            if (((_s.length) < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L124"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L128"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L129"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L134"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L135"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L137"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c2), _1 : (3 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L139"
            if (((_s.length) < (4 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L140"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L144"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L145"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L150"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L151"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c2 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_o : stdgo.GoInt)];
            var _c3 = @:assignType (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L156"
            if (((_c3 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c3 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L157"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (3 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L159"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c3), _1 : (4 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L162"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (1 : stdgo.GoInt) };
            _v = __tmp__._0;
            _sz = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _lookupUnsafe( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_biditrie.T_bidiTrie>, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt8 {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_biditrie.T_bidiTrie> = _t;
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L84"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L85"
            return _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidivalues._bidiValues[(_c0 : stdgo.GoInt)];
        };
        var _i = @:assignType (_internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L88"
        if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L89"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(1 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L92"
        if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L93"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(2 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L96"
        if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L97"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(3 : stdgo.GoInt)]);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L99"
        return (0 : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function _lookup( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_biditrie.T_bidiTrie>, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_biditrie.T_bidiTrie> = _t;
        var _v = (0 : stdgo.GoUInt8), _sz = (0 : stdgo.GoInt);
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L22"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L24"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidivalues._bidiValues[(_c0 : stdgo.GoInt)], _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (194 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L26"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L28"
            if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L29"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L33"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L34"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L36"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c1), _1 : (2 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L38"
            if (((_s.length) < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L39"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L43"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L44"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L49"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L50"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L52"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c2), _1 : (3 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L54"
            if (((_s.length) < (4 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L55"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L59"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L60"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L65"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L66"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c2 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.bidi.Bidi__bidiindex._bidiIndex[(_o : stdgo.GoInt)];
            var _c3 = @:assignType (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L71"
            if (((_c3 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c3 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L72"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (3 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L74"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c3), _1 : (4 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/tables15.0.0.go#L77"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt8), _1 : (1 : stdgo.GoInt) };
            _v = __tmp__._0;
            _sz = __tmp__._1;
            __tmp__;
        };
    }
}
