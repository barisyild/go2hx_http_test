package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_machine_asInterface) class T_machine_static_extension {
    @:keep
    @:tdfield
    static public function _add( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>, _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt, _cap:stdgo.Slice<stdgo.GoInt>, _cond:stdgo.Pointer<stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag>, _t:stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>):stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread> {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> = _m;
        var _d_174:stdgo.Ref<stdgo._internal.regexp.Regexp_t_entry.T_entry> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
        var _j_166:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_165:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _opos_187:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_186:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 3848539i64;
                } else if (__value__ == (3848539i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L319"
                    if (_pc == ((0u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3848558i64;
                    } else {
                        _gotoNext = 3848575i64;
                    };
                } else if (__value__ == (3848558i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L320"
                    return _t;
                    _gotoNext = 3848575i64;
                } else if (__value__ == (3848575i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L322"
                    {
                        _j_165 = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sparse[(_pc : stdgo.GoInt)];
                        if (((_j_165 < ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense.length : stdgo.GoUInt32) : Bool) && ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense[(_j_165 : stdgo.GoInt)]._pc == _pc) : Bool)) {
                            _gotoNext = 3848645i64;
                        } else {
                            _gotoNext = 3848663i64;
                        };
                    };
                } else if (__value__ == (3848645i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L323"
                    return _t;
                    _gotoNext = 3848663i64;
                } else if (__value__ == (3848663i64)) {
                    _j_166 = ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense.length);
                    (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense = ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense.__slice__(0, (_j_166 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
                    _d_174 = (stdgo.Go.setRef((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense[(_j_166 : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_entrydott_entry.__type__stdgodot_internaldotregexpdotRegexp_t_entrydotT_entry })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
                    (@:checkr _d_174 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t = null;
                    (@:checkr _d_174 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pc = _pc;
                    (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sparse[(_pc : stdgo.GoInt)] = (_j_166 : stdgo.GoUInt32);
                    _i_186 = (stdgo.Go.setRef((@:checkr (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_pc : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_instdotinst.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_instdotInst })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
                    _gotoNext = 3848794i64;
                } else if (__value__ == (3848794i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L334"
                    {
                        final __value__ = (@:checkr _i_186 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op;
                        if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3848840i64;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3848876i64;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3848986i64;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3849088i64;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3849136i64;
                        } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3849337i64;
                        } else {
                            _gotoNext = 3848809i64;
                        };
                    };
                } else if (__value__ == (3848809i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L336"
                    throw new stdgo.AnyInterface(("unhandled" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    _gotoNext = 3849595i64;
                } else if (__value__ == (3848840i64)) {
                    _gotoNext = 3849595i64;
                } else if (__value__ == (3848876i64)) {
                    _t = _m._add(_q, (@:checkr _i_186 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out, _pos, _cap, _cond, _t);
                    _pc = (@:checkr _i_186 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg;
                    _gotoNext = 3848539i64;
                } else if (__value__ == (3848986i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L344"
                    if (_cond.value._match(((@:checkr _i_186 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                        _gotoNext = 3849053i64;
                    } else {
                        _gotoNext = 3849595i64;
                    };
                } else if (__value__ == (3849053i64)) {
                    _pc = (@:checkr _i_186 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
                    _gotoNext = 3848539i64;
                } else if (__value__ == (3849088i64)) {
                    _pc = (@:checkr _i_186 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
                    _gotoNext = 3848539i64;
                } else if (__value__ == (3849136i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L352"
                    if ((((@:checkr _i_186 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo.GoInt) < (_cap.length) : Bool)) {
                        _gotoNext = 3849188i64;
                    } else {
                        _gotoNext = 3849302i64;
                    };
                } else if (__value__ == (3849188i64)) {
                    _opos_187 = _cap[((@:checkr _i_186 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo.GoInt)];
                    _cap[((@:checkr _i_186 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo.GoInt)] = _pos;
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L355"
                    _m._add(_q, (@:checkr _i_186 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out, _pos, _cap, _cond, null);
                    _cap[((@:checkr _i_186 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo.GoInt)] = _opos_187;
                    _gotoNext = 3849595i64;
                } else if (__value__ == (3849302i64)) {
                    _gotoNext = 3849302i64;
                    _pc = (@:checkr _i_186 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
                    _gotoNext = 3848539i64;
                } else if (__value__ == (3849337i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L362"
                    if (({
                        final value = _t;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        _gotoNext = 3849454i64;
                    } else {
                        _gotoNext = 3849483i64;
                    };
                } else if (__value__ == (3849454i64)) {
                    _t = _m._alloc(_i_186);
                    _gotoNext = 3849505i64;
                } else if (__value__ == (3849483i64)) {
                    _gotoNext = 3849483i64;
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inst = _i_186;
                    0i64;
                    _gotoNext = 3849505i64;
                } else if (__value__ == (3849505i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L367"
                    if ((((_cap.length) > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.pointer((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap[(0 : stdgo.GoInt)]) != stdgo.Go.pointer(_cap[(0 : stdgo.GoInt)])) : Bool)) {
                        _gotoNext = 3849545i64;
                    } else {
                        _gotoNext = 3849573i64;
                    };
                } else if (__value__ == (3849545i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L368"
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap.__copyTo__(_cap);
                    _gotoNext = 3849573i64;
                } else if (__value__ == (3849573i64)) {
                    (@:checkr _d_174 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t = _t;
                    _t = null;
                    _gotoNext = 3849595i64;
                } else if (__value__ == (3849595i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L373"
                    return _t;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function _step( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>, _runq:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>, _nextq:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>, _pos:stdgo.GoInt, _nextPos:stdgo.GoInt, _c:stdgo.GoInt32, _nextCond:stdgo.Pointer<stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> = _m;
        var _longest = @:assignType ((@:checkr (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._longest : Bool);
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L262"
        {
            var _j = @:assignType (0 : stdgo.GoInt);
            while ((_j < ((@:checkr _runq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense.length) : Bool)) {
                var _d = (stdgo.Go.setRef((@:checkr _runq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense[(_j : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_entrydott_entry.__type__stdgodot_internaldotregexpdotRegexp_t_entrydotT_entry })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
var _t = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t;
//"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L265"
                if (({
                    final value = _t;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L266"
                    {
                        _j++;
                        continue;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L268"
                if ((((_longest && (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matched : Bool) && (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap.length) > (0 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap[(0 : stdgo.GoInt)] < (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap[(0 : stdgo.GoInt)] : Bool) : Bool)) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool.__append__(_t) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>>);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L270"
                    {
                        _j++;
                        continue;
                    };
                };
var _i = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inst;
var _add = @:assignType (false : Bool);
//"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L274"
                {
                    final __value__ = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op;
                    if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L279"
                        if (((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap.length) > (0 : stdgo.GoInt) : Bool) && (((!_longest || !(@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matched : Bool) || ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap[(1 : stdgo.GoInt)] < _pos : Bool) : Bool)) : Bool)) {
                            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap[(1 : stdgo.GoInt)] = _pos;
                            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L281"
                            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap.__copyTo__((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L283"
                        if (!_longest) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L285"
                            if (((@:checkr _runq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense.__slice__((_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>) != null) for (__0 => _d in ((@:checkr _runq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense.__slice__((_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>)) {
                                //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L286"
                                if (({
                                    final value = _d._t;
                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                })) {
                                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool.__append__(_d._t) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>>);
                                };
                            };
                            (@:checkr _runq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense = ((@:checkr _runq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
                        };
                        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matched = true;
                    } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        _add = _i.matchRune(_c);
                    } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        _add = _c == ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[((0 : stdgo.GoInt) : stdgo.GoInt)]);
                    } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        _add = true;
                    } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        _add = _c != ((10 : stdgo.GoInt32));
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L276"
                        throw new stdgo.AnyInterface(("bad inst" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L303"
                if (_add) {
                    _t = _m._add(_nextq, (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out, _nextPos, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap, _nextCond, _t);
                };
//"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L306"
                if (({
                    final value = _t;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool.__append__(_t) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>>);
                };
                _j++;
            };
        };
        (@:checkr _runq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense = ((@:checkr _runq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
    }
    @:keep
    @:tdfield
    static public function _clear( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>, _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> = _m;
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L247"
        if ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense != null) for (__0 => _d in (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L248"
            if (({
                final value = _d._t;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool.__append__(_d._t) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>>);
            };
        };
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense = ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_entry.T_entry>);
    }
    @:keep
    @:tdfield
    static public function _match( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>, _i:stdgo._internal.regexp.Regexp_t_input.T_input, _pos:stdgo.GoInt):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> = _m;
        var _startCond = @:assignType ((@:checkr (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L177"
        if (_startCond == ((255 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L178"
            return false;
        };
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matched = false;
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L181"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap != null) for (_i => _ in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap) {
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt);
        };
        var __0 = (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_queuedott_queue.__type__stdgodot_internaldotregexpdotRegexp_t_queuedotT_queue })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>), __1 = (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_queuedott_queue.__type__stdgodot_internaldotregexpdotRegexp_t_queuedotT_queue })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queue.T_queue>);
var _nextq = __1, _runq = __0;
        var __0 = @:assignType (-1 : stdgo.GoInt32), __1 = @:assignType (-1 : stdgo.GoInt32);
var _r1 = __1, _r = __0;
        var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (0 : stdgo.GoInt);
var _width1 = __1, _width = __0;
        {
            var __tmp__ = _i._step(_pos);
            _r = @:tmpset0 __tmp__._0;
            _width = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L188"
        if (_r != ((-1 : stdgo.GoInt32))) {
            {
                var __tmp__ = _i._step((_pos + _width : stdgo.GoInt));
                _r1 = @:tmpset0 __tmp__._0;
                _width1 = @:tmpset0 __tmp__._1;
            };
        };
        var _flag:stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag), _flag__pointer__ = stdgo.Go.pointer(_flag);
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L192"
        if (_pos == ((0 : stdgo.GoInt))) {
            _flag = stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag((-1 : stdgo.GoInt32), _r);
        } else {
            _flag = _i._context(_pos);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L197"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L198"
            if (((@:checkr _runq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L199"
                if ((((_startCond & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != (0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) && (_pos != (0 : stdgo.GoInt)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L201"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L203"
                if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matched) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L205"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L207"
                if ((((((@:checkr (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix.length) > (0 : stdgo.GoInt) : Bool) && _r1 != ((@:checkr (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefixRune) : Bool) && _i._canCheckPrefix() : Bool)) {
                    var _advance = @:assignType (_i._index((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._re, _pos) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L210"
                    if ((_advance < (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L211"
                        break;
                    };
                    _pos = (_pos + (_advance) : stdgo.GoInt);
                    {
                        var __tmp__ = _i._step(_pos);
                        _r = @:tmpset0 __tmp__._0;
                        _width = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = _i._step((_pos + _width : stdgo.GoInt));
                        _r1 = @:tmpset0 __tmp__._0;
                        _width1 = @:tmpset0 __tmp__._1;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L218"
            if (!(@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matched) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L219"
                if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap.length) > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap[(0 : stdgo.GoInt)] = _pos;
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L222"
                _m._add(_runq, ((@:checkr (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).start : stdgo.GoUInt32), _pos, (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap, _flag__pointer__, null);
            };
            _flag = stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag(_r, _r1);
            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L225"
            _m._step(_runq, _nextq, _pos, (_pos + _width : stdgo.GoInt), _r, _flag__pointer__);
            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L226"
            if (_width == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L227"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L229"
            if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap.length == (0 : stdgo.GoInt)) && (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matched : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L232"
                break;
            };
            _pos = (_pos + (_width) : stdgo.GoInt);
            {
                final __tmp__0 = _r1;
                final __tmp__1 = _width1;
                _r = @:binopAssign __tmp__0;
                _width = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L236"
            if (_r != ((-1 : stdgo.GoInt32))) {
                {
                    var __tmp__ = _i._step((_pos + _width : stdgo.GoInt));
                    _r1 = @:tmpset0 __tmp__._0;
                    _width1 = @:tmpset0 __tmp__._1;
                };
            };
            {
                final __tmp__0 = _nextq;
                final __tmp__1 = _runq;
                _runq = @:binopAssign __tmp__0;
                _nextq = @:binopAssign __tmp__1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L241"
        _m._clear(_nextq);
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L242"
        return (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matched;
    }
    @:keep
    @:tdfield
    static public function _alloc( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>, _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>):stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread> {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> = _m;
        var _t:stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L106"
        {
            var _n = @:assignType ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _t = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
                (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>>);
            } else {
                _t = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_t_thread.T_thread), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_threaddott_thread.__type__stdgodot_internaldotregexpdotRegexp_t_threaddotT_thread })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>);
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap.length : stdgo.GoInt).toBasic(), (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap.capacity).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            };
        };
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inst = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L114"
        return _t;
    }
    @:keep
    @:tdfield
    static public function _init( _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine>, _ncap:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.regexp.Regexp_t_machine.T_machine> = _m;
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L96"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool != null) for (__0 => _t in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pool) {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
        };
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
    }
}
