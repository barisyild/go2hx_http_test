package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.bidi.Bidi.T_isolatingRunSequence_asInterface) class T_isolatingRunSequence_static_extension {
    @:keep
    @:tdfield
    static public function _assertOnly( _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence>, _codes:haxe.Rest<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>):Void {
        var _codes = new stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>(_codes.length, 0, ..._codes);
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence> = _s;
        var _iterator_5528480_155:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_154:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ = ((0 : stdgo.GoUInt) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
        var _i_108:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_158:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ = ((0 : stdgo.GoUInt) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 5528431i64;
                } else if (__value__ == (5528431i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L733"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types.length)) {
                        _gotoNext = 5528627i64;
                    } else {
                        _gotoNext = 5528630i64;
                    };
                } else if (__value__ == (5528464i64)) {
                    _t_154 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_i_108 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L734"
                    if ((0i64 : stdgo.GoInt) < (_codes.length)) {
                        _gotoNext = 5528533i64;
                    } else {
                        _gotoNext = 5528538i64;
                    };
                } else if (__value__ == (5528472i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L734"
                    _iterator_5528480_155++;
                    _gotoNext = 5528534i64;
                } else if (__value__ == (5528492i64)) {
                    _c_158 = _codes[(_iterator_5528480_155 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L735"
                    if (_t_154 == (_c_158)) {
                        _gotoNext = 5528507i64;
                    } else {
                        _gotoNext = 5528472i64;
                    };
                } else if (__value__ == (5528507i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L733"
                    _i_108++;
                    _gotoNext = 5528628i64;
                } else if (__value__ == (5528533i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _codes[(0i64 : stdgo.GoInt)];
                        _iterator_5528480_155 = @:binopAssign __tmp__0;
                        _c_158 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5528534i64;
                } else if (__value__ == (5528534i64)) {
                    //"file://#L0"
                    if (_iterator_5528480_155 < (_codes.length)) {
                        _gotoNext = 5528492i64;
                    } else {
                        _gotoNext = 5528538i64;
                    };
                } else if (__value__ == (5528538i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L739"
                    stdgo._internal.log.Log_panicf.panicf(("invalid bidi code %v present in assertOnly at position %d" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_t_154, _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_class_dotclass_.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_class_dotClass_), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_class_dotclass_.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_class_dotClass_)), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indexes[(_i_108 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L733"
                    _i_108++;
                    _gotoNext = 5528628i64;
                } else if (__value__ == (5528627i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(0i64 : stdgo.GoInt)];
                        _i_108 = @:binopAssign __tmp__0;
                        _t_154 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5528628i64;
                } else if (__value__ == (5528628i64)) {
                    //"file://#L0"
                    if (_i_108 < ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types.length)) {
                        _gotoNext = 5528464i64;
                    } else {
                        _gotoNext = 5528630i64;
                    };
                } else if (__value__ == (5528630i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _findRunLimit( _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence>, _index:stdgo.GoInt, _validSet:haxe.Rest<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>):stdgo.GoInt {
        var _validSet = new stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>(_validSet.length, 0, ..._validSet);
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence> = _s;
        var _loopBreak = false;
        var _valid_107:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ = ((0 : stdgo.GoUInt) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
        var _iterator_5528146_75:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_74:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ = ((0 : stdgo.GoUInt) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 5528061i64;
                } else if (__value__ == (5528061i64)) {
                    0i64;
                    _loopBreak = false;
                    _gotoNext = 5528068i64;
                } else if (__value__ == (5528068i64)) {
                    //"file://#L0"
                    if (!_loopBreak && ((_index < ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types.length) : Bool))) {
                        _gotoNext = 5528104i64;
                    } else {
                        _gotoNext = 5528263i64;
                    };
                } else if (__value__ == (5528104i64)) {
                    _t_74 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_index : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L719"
                    if ((0i64 : stdgo.GoInt) < (_validSet.length)) {
                        _gotoNext = 5528206i64;
                    } else {
                        _gotoNext = 5528211i64;
                    };
                } else if (__value__ == (5528134i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L719"
                    _iterator_5528146_75++;
                    _gotoNext = 5528207i64;
                } else if (__value__ == (5528161i64)) {
                    _valid_107 = _validSet[(_iterator_5528146_75 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L720"
                    if (_t_74 == (_valid_107)) {
                        _gotoNext = 5528180i64;
                    } else {
                        _gotoNext = 5528134i64;
                    };
                } else if (__value__ == (5528180i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L717"
                    _index++;
                    _gotoNext = 5528068i64;
                } else if (__value__ == (5528206i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _validSet[(0i64 : stdgo.GoInt)];
                        _iterator_5528146_75 = @:binopAssign __tmp__0;
                        _valid_107 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5528207i64;
                } else if (__value__ == (5528207i64)) {
                    //"file://#L0"
                    if (_iterator_5528146_75 < (_validSet.length)) {
                        _gotoNext = 5528161i64;
                    } else {
                        _gotoNext = 5528211i64;
                    };
                } else if (__value__ == (5528211i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L724"
                    return _index;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L717"
                    _index++;
                    _gotoNext = 5528068i64;
                } else if (__value__ == (5528263i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L726"
                    return ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types.length);
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function _applyLevelsAndTypes( _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence>):Void {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L706"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indexes != null) for (_i => _x in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indexes) {
            (@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultTypes[(_x : stdgo.GoInt)] = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_i : stdgo.GoInt)];
            (@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultLevels[(_x : stdgo.GoInt)] = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resolvedLevels[(_i : stdgo.GoInt)];
        };
    }
    @:keep
    @:tdfield
    static public function _resolveImplicitLevels( _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence>):Void {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L675"
        _s._assertOnly((0u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (2u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (5u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_));
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resolvedLevels = (new stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>(((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L678"
        _internal.golangdotorg.x.text.unicode.bidi.Bidi__setlevels._setLevels((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resolvedLevels, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._level);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L680"
        if ((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._level & (1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level)) == ((0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L681"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types != null) for (_i => _t in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L683"
                if (_t == ((0u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {} else if (_t == ((1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resolvedLevels[(_i : stdgo.GoInt)] = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resolvedLevels[(_i : stdgo.GoInt)] + ((1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level)) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
                } else {
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resolvedLevels[(_i : stdgo.GoInt)] = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resolvedLevels[(_i : stdgo.GoInt)] + ((2 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level)) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
                };
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L692"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types != null) for (_i => _t in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L694"
                if (_t == ((1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {} else {
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resolvedLevels[(_i : stdgo.GoInt)] = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resolvedLevels[(_i : stdgo.GoInt)] + ((1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level)) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _resolveNeutralTypes( _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence>):Void {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L609"
        _s._assertOnly((0u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(2u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(5u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(7u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(8u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(9u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(22u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(21u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(23u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(24u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L611"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types != null) for (_i => _t in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L612"
            {
                final __value__ = _t;
                if (__value__ == ((9u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((7u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((8u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((22u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((21u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((23u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((24u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                    var _runStart = @:assignType (_i : stdgo.GoInt);
                    var _runEnd = @:assignType (_s._findRunLimit(_runStart, (7u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (8u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (9u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (22u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (21u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (23u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (24u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) : stdgo.GoInt);
                    var _leadType:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ = ((0 : stdgo.GoUInt) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), _trailType:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ = ((0 : stdgo.GoUInt) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L623"
                    if (_runStart == ((0 : stdgo.GoInt))) {
                        _leadType = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sos;
                    } else {
                        _leadType = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_runStart - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L627"
                        if (_leadType._in((5u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (2u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                            _leadType = (1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L631"
                    if (_runEnd == (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types.length))) {
                        _trailType = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._eos;
                    } else {
                        _trailType = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_runEnd : stdgo.GoInt)];
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L635"
                        if (_trailType._in((5u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (2u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                            _trailType = (1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                        };
                    };
                    var _resolvedType:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ = ((0 : stdgo.GoUInt) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L641"
                    if (_leadType == (_trailType)) {
                        _resolvedType = _leadType;
                    } else {
                        _resolvedType = _internal.golangdotorg.x.text.unicode.bidi.Bidi__typeforlevel._typeForLevel((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._level);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L651"
                    _internal.golangdotorg.x.text.unicode.bidi.Bidi__settypes._setTypes(((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types.__slice__(_runStart, _runEnd) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>), _resolvedType);
                    _i = _runEnd;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _resolveWeakTypes( _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence>):Void {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L489"
        _s._assertOnly((0u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(13u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(2u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(3u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(4u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(5u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(6u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(7u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(8u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(9u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(12u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(21u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(22u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(23u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_),
(24u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_));
        var _precedingCharacterType = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sos : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L494"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types != null) for (_i => _t in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L495"
            if (_t == ((12u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_i : stdgo.GoInt)] = _precedingCharacterType;
            } else {
                _precedingCharacterType = _t;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L507"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types != null) for (_i => _t in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L508"
            if (_t == ((2u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L509"
                {
                    var _j = @:assignType (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                    while ((_j >= (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L510"
                        {
                            var _t = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_j : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                            if (_t._in((0u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (13u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L511"
                                if (_t == ((13u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_i : stdgo.GoInt)] = (5u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                                };
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L514"
                                break;
                            };
                        };
                        _j--;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L521"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types != null) for (_i => _t in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L522"
            if (_t == ((13u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_i : stdgo.GoInt)] = (1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L540"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (_s.len() - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                var _t = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_i : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L542"
                if (((_t == (3u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || (_t == (6u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) : Bool)) {
                    var _prevSepType = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                    var _succSepType = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L545"
                    if (((_prevSepType == (2u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) && (_succSepType == (2u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) : Bool)) {
                        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_i : stdgo.GoInt)] = (2u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                    } else if ((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_i : stdgo.GoInt)] == ((6u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) && _prevSepType == ((5u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) : Bool) && (_succSepType == (5u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) : Bool)) {
                        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_i : stdgo.GoInt)] = (5u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L554"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types != null) for (_i => _t in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L555"
            if (_t == ((4u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                var _runStart = @:assignType (_i : stdgo.GoInt);
                var _runEnd = @:assignType (_s._findRunLimit(_runStart, (4u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) : stdgo.GoInt);
                var _t = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sos : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L562"
                if ((_runStart > (0 : stdgo.GoInt) : Bool)) {
                    _t = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_runStart - (1 : stdgo.GoInt) : stdgo.GoInt)];
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L565"
                if (_t != ((2u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                    _t = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._eos;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L567"
                    if ((_runEnd < ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types.length) : Bool)) {
                        _t = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_runEnd : stdgo.GoInt)];
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L571"
                if (_t == ((2u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L572"
                    _internal.golangdotorg.x.text.unicode.bidi.Bidi__settypes._setTypes(((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types.__slice__(_runStart, _runEnd) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>), (2u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_));
                };
                _i = _runEnd;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L580"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types != null) for (_i => _t in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L581"
            if (_t._in((3u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (4u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_), (6u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_i : stdgo.GoInt)] = (10u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L587"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types != null) for (_i => _t in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L588"
            if (_t == ((2u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                var _prevStrongType = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sos : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L591"
                {
                    var _j = @:assignType (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                    while ((_j >= (0 : stdgo.GoInt) : Bool)) {
                        _t = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_j : stdgo.GoInt)];
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L593"
                        if (((_t == (0u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || (_t == (1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) : Bool)) {
                            _prevStrongType = _t;
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L595"
                            break;
                        };
                        _j--;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L598"
                if (_prevStrongType == ((0u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types[(_i : stdgo.GoInt)] = (0u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function len( _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence>):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence> = _i;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L428"
        return ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indexes.length);
    }
}
