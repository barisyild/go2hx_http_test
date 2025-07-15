package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _compileOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg> {
        var _p = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L467"
        if ((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).start == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L468"
            return _p = null;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L471"
        if ((((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).start : stdgo.GoInt)].op != (3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || ((((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).start : stdgo.GoInt)].arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L473"
            return _p = null;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L476"
        if ((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst != null) for (__0 => _inst in (@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst) {
            var _opOut = @:assignType ((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_inst.out : stdgo.GoInt)].op : stdgo._internal.regexp.syntax.Syntax_instop.InstOp);
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L478"
            {
                final __value__ = _inst.op;
                if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L484"
                    if (((_opOut == (4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || ((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_inst.arg : stdgo.GoInt)].op == (4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L485"
                        return _p = null;
                    };
                } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L488"
                    if (_opOut == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L489"
                        if (((_inst.arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) & (8 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) == ((8 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L490"
                            continue;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L492"
                        return _p = null;
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L480"
                    if (_opOut == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L481"
                        return _p = null;
                    };
                };
            };
        };
        _p = stdgo._internal.regexp.Regexp__onepasscopy._onePassCopy(_prog);
        _p = stdgo._internal.regexp.Regexp__makeonepass._makeOnePass(_p);
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L503"
        if (({
            final value = _p;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L504"
            stdgo._internal.regexp.Regexp__cleanuponepass._cleanupOnePass(_p, _prog);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L506"
        return _p;
    }
