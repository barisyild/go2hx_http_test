package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _dumpInst(_b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>):Void {
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L317"
        {
            final __value__ = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op;
            if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L319"
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("alt -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out)?.__copy__(), (", " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg)?.__copy__());
            } else if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L321"
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("altmatch -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out)?.__copy__(), (", " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg)?.__copy__());
            } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L323"
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("cap " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg)?.__copy__(), (" -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out)?.__copy__());
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L325"
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("empty " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg)?.__copy__(), (" -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out)?.__copy__());
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L327"
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("match" : stdgo.GoString));
            } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L329"
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("fail" : stdgo.GoString));
            } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L331"
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("nop -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out)?.__copy__());
            } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L333"
                if ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune == null) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L335"
                    stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("rune <nil>" : stdgo.GoString));
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L337"
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("rune " : stdgo.GoString), stdgo._internal.strconv.Strconv_quotetoascii.quoteToASCII(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune : stdgo.GoString)?.__copy__())?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L338"
                if ((((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo._internal.regexp.syntax.Syntax_flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L339"
                    stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("/i" : stdgo.GoString));
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L341"
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, (" -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out)?.__copy__());
            } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L343"
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("rune1 " : stdgo.GoString), stdgo._internal.strconv.Strconv_quotetoascii.quoteToASCII(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune : stdgo.GoString)?.__copy__())?.__copy__(), (" -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out)?.__copy__());
            } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L345"
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("any -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out)?.__copy__());
            } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L347"
                stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("anynotnl -> " : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax__u32._u32((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out)?.__copy__());
            };
        };
    }
