package _internal.githubdotcom.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax.Code_asInterface) class Code_static_extension {
    @:keep
    @:tdfield
    static public function dump( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code> = _c;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L245"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rightToLeft) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L246"
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), new stdgo.AnyInterface(("Direction:  right-to-left" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L248"
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), new stdgo.AnyInterface(("Direction:  left-to-right" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L250"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fcPrefix;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L251"
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), new stdgo.AnyInterface(("Firstchars: n/a" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L253"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("Firstchars: %v\n" : stdgo.GoString), new stdgo.AnyInterface(((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fcPrefix ?? throw stdgo.Error._nullPointerDereference.__underlying__()).prefixSet.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L256"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bmPrefix;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L257"
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), new stdgo.AnyInterface(("Prefix:     n/a" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L259"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("Prefix:     %v\n" : stdgo.GoString), new stdgo.AnyInterface(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_escape.escape(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bmPrefix.string() : stdgo.GoString)?.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L262"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("Anchors:    %v\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).anchors, _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_anchorlocdotanchorloc.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_anchorlocdotAnchorLoc), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_anchorlocdotanchorloc.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_anchorlocdotAnchorLoc)));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L263"
        stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L265"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bmPrefix;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L266"
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), new stdgo.AnyInterface(("BoyerMoore:" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L267"
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bmPrefix.dump(("    " : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L269"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes.length) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L270"
                stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), new stdgo.AnyInterface(_c.opcodeDescription(_i), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                _i = (_i + (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__opcodesize._opcodeSize(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_i : stdgo.GoInt)] : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L273"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function opcodeDescription( _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code>, _offset:stdgo.GoInt):stdgo.GoString {
        @:recv var _c:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code> = _c;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _op = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_offset : stdgo.GoInt)] : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L179"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("%06d " : stdgo.GoString), new stdgo.AnyInterface(_offset, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L181"
        if (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__opcodebacktracks._opcodeBacktracks((_op & (63 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L182"
            _buf.writeString(("*" : stdgo.GoString));
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L184"
            _buf.writeString((" " : stdgo.GoString));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L186"
        _buf.writeString(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__operatordescription._operatorDescription(_op)?.__copy__());
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L187"
        _buf.writeString(("(" : stdgo.GoString));
        _op = (_op & ((63 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L190"
        {
            final __value__ = _op;
            if (__value__ == ((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((10 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((3 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((4 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((6 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((7 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L192"
                _buf.writeString(("Ch = " : stdgo.GoString));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L193"
                _buf.writeString(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_chardescription.charDescription(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32))?.__copy__());
            } else if (__value__ == ((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((2 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((5 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((8 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L196"
                _buf.writeString(("Set = " : stdgo.GoString));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L197"
                _buf.writeString(((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sets[((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).string() : stdgo.GoString)?.__copy__());
            } else if (__value__ == ((12 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L200"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("String = %s" : stdgo.GoString), new stdgo.AnyInterface(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).strings[((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            } else if (__value__ == ((13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((37 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L203"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("Index = %d" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            } else if (__value__ == ((32 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L206"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("Index = %d" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L207"
                if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_offset + (2 : stdgo.GoInt) : stdgo.GoInt)] != ((-1 : stdgo.GoInt))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L208"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), (", Unindex = %d" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_offset + (2 : stdgo.GoInt) : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            } else if (__value__ == ((26 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((27 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L212"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("Value = %d" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            } else if (__value__ == ((38 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((24 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((25 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((28 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((29 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L215"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("Addr = %d" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L218"
        {
            final __value__ = _op;
            if (__value__ == ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((3 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((4 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((6 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((7 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((2 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((5 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((8 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L220"
                _buf.writeString((", Rep = " : stdgo.GoString));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L221"
                if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_offset + (2 : stdgo.GoInt) : stdgo.GoInt)] == ((2147483647 : stdgo.GoInt))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L222"
                    _buf.writeString(("inf" : stdgo.GoString));
                } else {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L224"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("%d" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_offset + (2 : stdgo.GoInt) : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            } else if (__value__ == ((28 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((29 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L228"
                _buf.writeString((", Limit = " : stdgo.GoString));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L229"
                if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_offset + (2 : stdgo.GoInt) : stdgo.GoInt)] == ((2147483647 : stdgo.GoInt))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L230"
                    _buf.writeString(("inf" : stdgo.GoString));
                } else {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L232"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("%d" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).codes[(_offset + (2 : stdgo.GoInt) : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L237"
        _buf.writeString((")" : stdgo.GoString));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L239"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
}
