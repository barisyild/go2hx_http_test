package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
@:keep @:allow(_internal.golangdotorg.x.net.idna.Idna.T_idnaTrie_asInterface) class T_idnaTrie_static_extension {
    @:keep
    @:tdfield
    static public function _lookupValue( _t:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_idnatrie.T_idnaTrie>, _n:stdgo.GoUInt32, _b:stdgo.GoUInt8):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_idnatrie.T_idnaTrie> = _t;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L717"
        if ((_n < (133u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L719"
            return (_internal.golangdotorg.x.net.idna.Idna__idnavalues._idnaValues[(((_n << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_b : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt16);
        } else {
            _n = (_n - ((133u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L722"
            return (_internal.golangdotorg.x.net.idna.Idna__idnasparse._idnaSparse._lookup(_n, _b) : stdgo.GoUInt16);
        };
    }
    @:keep
    @:tdfield
    static public function _lookupStringUnsafe( _t:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_idnatrie.T_idnaTrie>, _s:stdgo.GoString):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_idnatrie.T_idnaTrie> = _t;
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L690"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L691"
            return _internal.golangdotorg.x.net.idna.Idna__idnavalues._idnaValues[(_c0 : stdgo.GoInt)];
        };
        var _i = @:assignType (_internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L694"
        if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L695"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(1 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L698"
        if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L699"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(2 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L702"
        if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L703"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(3 : stdgo.GoInt)]);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L705"
        return (0 : stdgo.GoUInt16);
    }
    @:keep
    @:tdfield
    static public function _lookupString( _t:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_idnatrie.T_idnaTrie>, _s:stdgo.GoString):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_idnatrie.T_idnaTrie> = _t;
        var _v = (0 : stdgo.GoUInt16), _sz = (0 : stdgo.GoInt);
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L628"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L630"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _internal.golangdotorg.x.net.idna.Idna__idnavalues._idnaValues[(_c0 : stdgo.GoInt)], _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (194 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L632"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L634"
            if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L635"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L639"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L640"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L642"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c1), _1 : (2 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L644"
            if (((_s.length) < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L645"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L649"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L650"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L655"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L656"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L658"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c2), _1 : (3 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L660"
            if (((_s.length) < (4 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L661"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L665"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L666"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L671"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L672"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c2 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[(_o : stdgo.GoInt)];
            var _c3 = @:assignType (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L677"
            if (((_c3 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c3 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L678"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (3 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L680"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c3), _1 : (4 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L683"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
            _v = __tmp__._0;
            _sz = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _lookupUnsafe( _t:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_idnatrie.T_idnaTrie>, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_idnatrie.T_idnaTrie> = _t;
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L605"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L606"
            return _internal.golangdotorg.x.net.idna.Idna__idnavalues._idnaValues[(_c0 : stdgo.GoInt)];
        };
        var _i = @:assignType (_internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L609"
        if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L610"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(1 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L613"
        if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L614"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(2 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L617"
        if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L618"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(3 : stdgo.GoInt)]);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L620"
        return (0 : stdgo.GoUInt16);
    }
    @:keep
    @:tdfield
    static public function _lookup( _t:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_idnatrie.T_idnaTrie>, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_idnatrie.T_idnaTrie> = _t;
        var _v = (0 : stdgo.GoUInt16), _sz = (0 : stdgo.GoInt);
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L543"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L545"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _internal.golangdotorg.x.net.idna.Idna__idnavalues._idnaValues[(_c0 : stdgo.GoInt)], _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (194 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L547"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L549"
            if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L550"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L554"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L555"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L557"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c1), _1 : (2 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L559"
            if (((_s.length) < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L560"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L564"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L565"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L570"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L571"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L573"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c2), _1 : (3 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L575"
            if (((_s.length) < (4 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L576"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L580"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L581"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L586"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L587"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c2 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.net.idna.Idna__idnaindex._idnaIndex[(_o : stdgo.GoInt)];
            var _c3 = @:assignType (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L592"
            if (((_c3 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c3 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L593"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (3 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L595"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c3), _1 : (4 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/tables15.0.0.go#L598"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
            _v = __tmp__._0;
            _sz = __tmp__._1;
            __tmp__;
        };
    }
}
