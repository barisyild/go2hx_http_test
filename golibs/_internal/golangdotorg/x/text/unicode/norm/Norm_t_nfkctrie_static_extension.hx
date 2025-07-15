package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.norm.Norm.T_nfkcTrie_asInterface) class T_nfkcTrie_static_extension {
    @:keep
    @:tdfield
    static public function _lookupValue( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfkctrie.T_nfkcTrie>, _n:stdgo.GoUInt32, _b:stdgo.GoUInt8):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfkctrie.T_nfkcTrie> = _t;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4673"
        if ((_n < (95u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4675"
            return (_internal.golangdotorg.x.text.unicode.norm.Norm__nfkcvalues._nfkcValues[(((_n << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_b : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt16);
        } else {
            _n = (_n - ((95u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4678"
            return (_internal.golangdotorg.x.text.unicode.norm.Norm__nfkcsparse._nfkcSparse._lookup(_n, _b) : stdgo.GoUInt16);
        };
    }
    @:keep
    @:tdfield
    static public function _lookupStringUnsafe( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfkctrie.T_nfkcTrie>, _s:stdgo.GoString):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfkctrie.T_nfkcTrie> = _t;
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4646"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4647"
            return _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcvalues._nfkcValues[(_c0 : stdgo.GoInt)];
        };
        var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4650"
        if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4651"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(1 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4654"
        if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4655"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(2 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4658"
        if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4659"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(3 : stdgo.GoInt)]);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4661"
        return (0 : stdgo.GoUInt16);
    }
    @:keep
    @:tdfield
    static public function _lookupString( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfkctrie.T_nfkcTrie>, _s:stdgo.GoString):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfkctrie.T_nfkcTrie> = _t;
        var _v = (0 : stdgo.GoUInt16), _sz = (0 : stdgo.GoInt);
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4584"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4586"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcvalues._nfkcValues[(_c0 : stdgo.GoInt)], _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (194 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4588"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4590"
            if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4591"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4595"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4596"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4598"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c1), _1 : (2 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4600"
            if (((_s.length) < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4601"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4605"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4606"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4611"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4612"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4614"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c2), _1 : (3 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4616"
            if (((_s.length) < (4 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4617"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4621"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4622"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4627"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4628"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c2 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[(_o : stdgo.GoInt)];
            var _c3 = @:assignType (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4633"
            if (((_c3 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c3 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4634"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (3 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4636"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c3), _1 : (4 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4639"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
            _v = __tmp__._0;
            _sz = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _lookupUnsafe( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfkctrie.T_nfkcTrie>, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfkctrie.T_nfkcTrie> = _t;
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4561"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4562"
            return _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcvalues._nfkcValues[(_c0 : stdgo.GoInt)];
        };
        var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4565"
        if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4566"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(1 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4569"
        if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4570"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(2 : stdgo.GoInt)]);
        };
        _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4573"
        if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4574"
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(3 : stdgo.GoInt)]);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4576"
        return (0 : stdgo.GoUInt16);
    }
    @:keep
    @:tdfield
    static public function _lookup( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfkctrie.T_nfkcTrie>, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_nfkctrie.T_nfkcTrie> = _t;
        var _v = (0 : stdgo.GoUInt16), _sz = (0 : stdgo.GoInt);
        var _c0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4499"
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4501"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcvalues._nfkcValues[(_c0 : stdgo.GoInt)], _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (194 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4503"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4505"
            if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4506"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4510"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4511"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4513"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c1), _1 : (2 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4515"
            if (((_s.length) < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4516"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4520"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4521"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4526"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4527"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4529"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c2), _1 : (3 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        } else if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4531"
            if (((_s.length) < (4 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4532"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4536"
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4537"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            var _o = @:assignType (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[(_o : stdgo.GoInt)];
            var _c2 = @:assignType (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4542"
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4543"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c2 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcindex._nfkcIndex[(_o : stdgo.GoInt)];
            var _c3 = @:assignType (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4548"
            if (((_c3 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c3 : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4549"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (3 : stdgo.GoInt) };
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4551"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c3), _1 : (4 : stdgo.GoInt) };
                _v = __tmp__._0;
                _sz = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/tables15.0.0.go#L4554"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } = { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
            _v = __tmp__._0;
            _sz = __tmp__._1;
            __tmp__;
        };
    }
}
