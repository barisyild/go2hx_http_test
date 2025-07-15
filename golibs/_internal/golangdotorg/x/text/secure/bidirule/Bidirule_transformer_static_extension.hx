package _internal.golangdotorg.x.text.secure.bidirule;
import stdgo._internal.errors.Errors;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
import _internal.golangdotorg.x.text.transform.Transform;
@:keep @:allow(_internal.golangdotorg.x.text.secure.bidirule.Bidirule.Transformer_asInterface) class Transformer_static_extension {
    @:keep
    @:tdfield
    static public function _isFinal( _t:stdgo.Ref<_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer>):Bool {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer> = _t;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule10.0.0.go#L11"
        return (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state == ((2 : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_rulestate.T_ruleState)) || (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state == ((4 : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_rulestate.T_ruleState)) : Bool) || ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state == (0 : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_rulestate.T_ruleState)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _advanceString( _t:stdgo.Ref<_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer> = _t;
        var _n = (0 : stdgo.GoInt), _ok = false;
        var _e:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties = ({} : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties);
        var _sz:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L302"
        while ((_n < (_s.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L303"
            if ((_s[(_n : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                {
                    final __tmp__0 = _internal.golangdotorg.x.text.secure.bidirule.Bidirule__asciitable._asciiTable[(_s[(_n : stdgo.GoInt)] : stdgo.GoInt)];
                    final __tmp__1 = (1 : stdgo.GoInt);
                    _e = @:binopAssign __tmp__0;
                    _sz = @:binopAssign __tmp__1;
                };
            } else {
                {
                    var __tmp__ = _internal.golangdotorg.x.text.unicode.bidi.Bidi_lookupstring.lookupString((_s.__slice__(_n) : stdgo.GoString)?.__copy__());
                    _e = @:tmpset0 __tmp__._0?.__copy__();
                    _sz = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L307"
                if ((_sz <= (1 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L308"
                    if (_sz == ((1 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L309"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _n, _1 : false };
                            _n = __tmp__._0;
                            _ok = __tmp__._1;
                            __tmp__;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L311"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _n, _1 : true };
                        _n = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _c = @:assignType (((1 : stdgo.GoUInt16) << _e.class_() : stdgo.GoUInt16) : stdgo.GoUInt16);
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seen = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seen | (_c) : stdgo.GoUInt16);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L318"
            if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seen & (36 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((36 : stdgo.GoUInt16))) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (5 : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_rulestate.T_ruleState);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L320"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _n, _1 : false };
                    _n = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L322"
            {
                var _tr = _internal.golangdotorg.x.text.secure.bidirule.Bidirule__transitions._transitions[((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state : stdgo.GoInt)]?.__copy__();
                if ((_tr[(0 : stdgo.GoInt)]._mask & _c : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16))) {
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = _tr[(0 : stdgo.GoInt)]._next;
                } else if ((_tr[(1 : stdgo.GoInt)]._mask & _c : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16))) {
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = _tr[(1 : stdgo.GoInt)]._next;
                } else {
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (5 : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_rulestate.T_ruleState);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L329"
                    if (_t._isRTL()) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L330"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _n, _1 : false };
                            _n = __tmp__._0;
                            _ok = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
            _n = (_n + (_sz) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L335"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _n, _1 : true };
            _n = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _advance( _t:stdgo.Ref<_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer>, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer> = _t;
        var _n = (0 : stdgo.GoInt), _ok = false;
        var _e:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties = ({} : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties);
        var _sz:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L260"
        while ((_n < (_s.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L261"
            if ((_s[(_n : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                {
                    final __tmp__0 = _internal.golangdotorg.x.text.secure.bidirule.Bidirule__asciitable._asciiTable[(_s[(_n : stdgo.GoInt)] : stdgo.GoInt)];
                    final __tmp__1 = (1 : stdgo.GoInt);
                    _e = @:binopAssign __tmp__0;
                    _sz = @:binopAssign __tmp__1;
                };
            } else {
                {
                    var __tmp__ = _internal.golangdotorg.x.text.unicode.bidi.Bidi_lookup.lookup((_s.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>));
                    _e = @:tmpset0 __tmp__._0?.__copy__();
                    _sz = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L265"
                if ((_sz <= (1 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L266"
                    if (_sz == ((1 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L270"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _n, _1 : false };
                            _n = __tmp__._0;
                            _ok = __tmp__._1;
                            __tmp__;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L272"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _n, _1 : true };
                        _n = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _c = @:assignType (((1 : stdgo.GoUInt16) << _e.class_() : stdgo.GoUInt16) : stdgo.GoUInt16);
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seen = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seen | (_c) : stdgo.GoUInt16);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L279"
            if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seen & (36 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((36 : stdgo.GoUInt16))) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (5 : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_rulestate.T_ruleState);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L281"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _n, _1 : false };
                    _n = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L283"
            {
                var _tr = _internal.golangdotorg.x.text.secure.bidirule.Bidirule__transitions._transitions[((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state : stdgo.GoInt)]?.__copy__();
                if ((_tr[(0 : stdgo.GoInt)]._mask & _c : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16))) {
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = _tr[(0 : stdgo.GoInt)]._next;
                } else if ((_tr[(1 : stdgo.GoInt)]._mask & _c : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16))) {
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = _tr[(1 : stdgo.GoInt)]._next;
                } else {
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (5 : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_rulestate.T_ruleState);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L290"
                    if (_t._isRTL()) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L291"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _n, _1 : false };
                            _n = __tmp__._0;
                            _ok = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
            _n = (_n + (_sz) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L296"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _n, _1 : true };
            _n = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function span( _t:stdgo.Ref<_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer> = _t;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L227"
        if ((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state == (5 : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_rulestate.T_ruleState)) && _t._isRTL() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L228"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_errinvalid.errInvalid };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = _t._advance(_src), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L231"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (!_ok) {
                    _err = _internal.golangdotorg.x.text.secure.bidirule.Bidirule_errinvalid.errInvalid;
                    break;
                } else if ((_n < (_src.length) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L235"
                    if (!_atEOF) {
                        _err = _internal.golangdotorg.x.text.transform.Transform_errshortsrc.errShortSrc;
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L237"
                        break;
                    };
                    _err = _internal.golangdotorg.x.text.secure.bidirule.Bidirule_errinvalid.errInvalid;
                    break;
                } else if (!_t._isFinal()) {
                    _err = _internal.golangdotorg.x.text.secure.bidirule.Bidirule_errinvalid.errInvalid;
                    break;
                };
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L243"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function transform( _t:stdgo.Ref<_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer> = _t;
        var _nDst = (0 : stdgo.GoInt), _nSrc = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L212"
        if (((_dst.length) < (_src.length) : Bool)) {
            _src = (_src.__slice__(0, (_dst.length)) : stdgo.Slice<stdgo.GoUInt8>);
            _atEOF = false;
            _err = _internal.golangdotorg.x.text.transform.Transform_errshortdst.errShortDst;
        };
        var __tmp__ = _t.span(_src, _atEOF), _n:stdgo.GoInt = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L218"
        _dst.__copyTo__((_src.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L219"
        if (((_err == null) || (_err1 != null && ({
            final __t__ = _err1;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) != (({
            final __t__ = _internal.golangdotorg.x.text.transform.Transform_errshortsrc.errShortSrc;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })) : Bool) : Bool)) {
            _err = _err1;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L222"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _n, _1 : _n, _2 : _err };
            _nDst = __tmp__._0;
            _nSrc = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function reset( _t:stdgo.Ref<_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer>):Void {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer> = _t;
        {
            var __tmp__ = (new _internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer() : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer);
            var x = (_t : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer);
            x._state = __tmp__?._state;
            x._hasRTL = __tmp__?._hasRTL;
            x._seen = __tmp__?._seen;
        };
    }
    @:keep
    @:tdfield
    static public function _isRTL( _t:stdgo.Ref<_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer>):Bool {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer> = _t;
        {};
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L203"
        return ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seen & (8226 : stdgo.GoUInt16) : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16));
    }
}
