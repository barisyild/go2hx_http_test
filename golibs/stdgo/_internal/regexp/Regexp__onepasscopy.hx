package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _onePassCopy(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg> {
        var _p = (stdgo.Go.setRef(({ start : (@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).start, numCap : (@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).numCap, inst : (new stdgo.Slice<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>(((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>) } : stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_onepassprogdott_onepassprog.__type__stdgodot_internaldotregexpdotRegexp_t_onepassprogdotT_onePassProg })) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L228"
        if ((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst != null) for (_i => _inst in (@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_i : stdgo.GoInt)] = ({ inst : _inst?.__copy__() } : stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L237"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst != null) for (_pc => _ in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L238"
            {
                final __value__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_pc : stdgo.GoInt)].inst.op;
                if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                    var _p_A_Other = stdgo.Go.pointer((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_pc : stdgo.GoInt)].inst.out);
                    var _p_A_Alt = stdgo.Go.pointer((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_pc : stdgo.GoInt)].inst.arg);
                    var _instAlt = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_p_A_Alt.value : stdgo.GoInt)] : stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L247"
                    if (!(((_instAlt.inst.op == (0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || (_instAlt.inst.op == (1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) : Bool))) {
                        {
                            final __tmp__0 = _p_A_Other;
                            final __tmp__1 = _p_A_Alt;
                            _p_A_Alt = @:binopAssign __tmp__0;
                            _p_A_Other = @:binopAssign __tmp__1;
                        };
                        _instAlt = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_p_A_Alt.value : stdgo.GoInt)];
                        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L250"
                        if (!(((_instAlt.inst.op == (0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || (_instAlt.inst.op == (1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) : Bool))) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L251"
                            continue;
                        };
                    };
                    var _instOther = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_p_A_Other.value : stdgo.GoInt)] : stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L256"
                    if (((_instOther.inst.op == (0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || (_instOther.inst.op == (1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L258"
                        continue;
                    };
                    var _p_B_Alt = stdgo.Go.pointer((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_p_A_Alt.value : stdgo.GoInt)].inst.out);
                    var _p_B_Other = stdgo.Go.pointer((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_p_A_Alt.value : stdgo.GoInt)].inst.arg);
                    var _patch = @:assignType (false : Bool);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L265"
                    if (_instAlt.inst.out == ((_pc : stdgo.GoUInt32))) {
                        _patch = true;
                    } else if (_instAlt.inst.arg == ((_pc : stdgo.GoUInt32))) {
                        _patch = true;
                        {
                            final __tmp__0 = _p_B_Other;
                            final __tmp__1 = _p_B_Alt;
                            _p_B_Alt = @:binopAssign __tmp__0;
                            _p_B_Other = @:binopAssign __tmp__1;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L271"
                    if (_patch) {
                        _p_B_Alt.value = _p_A_Other.value;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L277"
                    if (_p_A_Other.value == (_p_B_Alt.value)) {
                        _p_A_Alt.value = _p_B_Other.value;
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L240"
                    continue;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L282"
        return _p;
    }
