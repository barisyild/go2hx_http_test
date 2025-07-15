package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _cleanupOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg>, _original:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):Void {
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L209"
        if ((@:checkr _original ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst != null) for (_ix => _instOriginal in (@:checkr _original ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L210"
            {
                final __value__ = _instOriginal.op;
                if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {} else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                    (@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_ix : stdgo.GoInt)].next = (null : stdgo.Slice<stdgo.GoUInt32>);
                } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                    (@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_ix : stdgo.GoInt)].next = (null : stdgo.Slice<stdgo.GoUInt32>);
                    (@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_ix : stdgo.GoInt)] = ({ inst : _instOriginal?.__copy__() } : stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst);
                };
            };
        };
    }
