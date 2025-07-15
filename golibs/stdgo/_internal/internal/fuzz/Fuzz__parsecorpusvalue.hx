package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
function _parseCorpusValue(_line:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        var _fs = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser_parseexprfrom.parseExprFrom(_fs, ("(test)" : stdgo.GoString), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), (0u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _expr:stdgo._internal.go.ast.Ast_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L132"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L133"
            return { _0 : (null : stdgo.AnyInterface), _1 : _err };
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _expr;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_callexprdotcallexpr.__type__stdgodot_internaldotgodotastdotAst_callexprdotCallExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>), _1 : false };
        }, _call = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L136"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L137"
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected call expression" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L139"
        if (((@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__()).args.length) != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L140"
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected call expression with 1 argument; got %d" : stdgo.GoString), new stdgo.AnyInterface(((@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__()).args.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) };
        };
        var _arg = @:assignType ((@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__()).args[(0 : stdgo.GoInt)] : stdgo._internal.go.ast.Ast_expr.Expr);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L144"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fun;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_arraytypedotarraytype.__type__stdgodot_internaldotgodotastdotAst_arraytypedotArrayType })) : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>), _1 : false };
            }, _arrayType = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L145"
                if ((@:checkr _arrayType ?? throw stdgo.Error._nullPointerDereference.__underlying__()).len != null) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L146"
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected []byte or primitive type" : stdgo.GoString)) };
                };
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = (@:checkr _arrayType ?? throw stdgo.Error._nullPointerDereference.__underlying__()).elt;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, _elt = __tmp__._0, _ok = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L149"
                if ((!_ok || ((@:checkr _elt ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name != ("byte" : stdgo.GoString)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L150"
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected []byte" : stdgo.GoString)) };
                };
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _arg;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_basiclitdotbasiclit.__type__stdgodot_internaldotgodotastdotAst_basiclitdotBasicLit })) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>), _1 : false };
                }, _lit = __tmp__._0, _ok = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L153"
                if ((!_ok || ((@:checkr _lit ?? throw stdgo.Error._nullPointerDereference.__underlying__()).kind != (9 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L154"
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("string literal required for type []byte" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((@:checkr _lit ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L157"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L158"
                    return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L160"
                return { _0 : new stdgo.AnyInterface((_s : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), _1 : (null : stdgo.Error) };
            };
        };
        var _idType:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L164"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fun;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_selectorexprdotselectorexpr.__type__stdgodot_internaldotgodotastdotAst_selectorexprdotSelectorExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>), _1 : false };
            }, _selector = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = (@:checkr _selector ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, _xIdent = __tmp__._0, _ok = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L166"
                if ((!_ok || ((@:checkr _xIdent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name != ("math" : stdgo.GoString)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L167"
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid selector type" : stdgo.GoString)) };
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L169"
                {
                    final __value__ = (@:checkr (@:checkr _selector ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sel ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name;
                    if (__value__ == (("Float64frombits" : stdgo.GoString))) {
                        _idType = (stdgo.Go.setRef(({ name : ("float64-bits" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_ident.Ident), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
                    } else if (__value__ == (("Float32frombits" : stdgo.GoString))) {
                        _idType = (stdgo.Go.setRef(({ name : ("float32-bits" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_ident.Ident), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L175"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid selector type" : stdgo.GoString)) };
                    };
                };
            } else {
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = (@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fun;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                    };
                    _idType = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L179"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L180"
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected []byte or primitive type" : stdgo.GoString)) };
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L182"
                if ((@:checkr _idType ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name == (("bool" : stdgo.GoString))) {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = _arg;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                    }, _id = __tmp__._0, _ok = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L184"
                    if (!_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L185"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed bool" : stdgo.GoString)) };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L187"
                    if ((@:checkr _id ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name == (("true" : stdgo.GoString))) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L188"
                        return { _0 : new stdgo.AnyInterface(true, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), _1 : (null : stdgo.Error) };
                    } else if ((@:checkr _id ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name == (("false" : stdgo.GoString))) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L190"
                        return { _0 : new stdgo.AnyInterface(false, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), _1 : (null : stdgo.Error) };
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L192"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("true or false required for type bool" : stdgo.GoString)) };
                    };
                };
            };
        };
        var _val:stdgo.GoString = ("" : stdgo.GoString), _kind:stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L201"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _arg;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_unaryexprdotunaryexpr.__type__stdgodot_internaldotgodotastdotAst_unaryexprdotUnaryExpr })) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>), _1 : false };
            }, _op = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L202"
                {
                    final __type__ = (@:checkr _op ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x;
                    if (stdgo.Go.typeEquals(({
                        final __t__ = __type__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_basiclitdotbasiclit.__type__stdgodot_internaldotgodotastdotAst_basiclitdotBasicLit }))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L204"
                        if ((@:checkr _op ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op != ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L205"
                            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported operation on int/float: %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _op ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op, _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_tokendottoken.__type__stdgodot_internaldotgodottokendotToken_tokendotToken), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_tokendottoken.__type__stdgodot_internaldotgodottokendotToken_tokendotToken))) };
                        };
                        _val = (((@:checkr _op ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op.string() : stdgo.GoString) + (@:checkr _lit ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value?.__copy__() : stdgo.GoString)?.__copy__();
                        _kind = (@:checkr _lit ?? throw stdgo.Error._nullPointerDereference.__underlying__()).kind;
                    } else if (stdgo.Go.typeEquals(({
                        final __t__ = __type__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent }))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L211"
                        if ((@:checkr _lit ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name != (("Inf" : stdgo.GoString))) {
                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L212"
                            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected operation on int or float type" : stdgo.GoString)) };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L214"
                        if ((@:checkr _op ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _val = ("-Inf" : stdgo.GoString);
                        } else {
                            _val = ("+Inf" : stdgo.GoString);
                        };
                        _kind = (6 : stdgo._internal.go.token.Token_token.Token);
                    } else {
                        var _lit:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L221"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected operation on int or float type" : stdgo.GoString)) };
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L224"
                {
                    final __type__ = _arg;
                    if (stdgo.Go.typeEquals(({
                        final __t__ = __type__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_basiclitdotbasiclit.__type__stdgodot_internaldotgodotastdotAst_basiclitdotBasicLit }))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__().value);
                        {
                            final __tmp__0 = (@:checkr _lit ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value?.__copy__();
                            final __tmp__1 = (@:checkr _lit ?? throw stdgo.Error._nullPointerDereference.__underlying__()).kind;
                            _val = @:binopAssign __tmp__0;
                            _kind = @:binopAssign __tmp__1;
                        };
                    } else if (stdgo.Go.typeEquals(({
                        final __t__ = __type__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_exprdotexpr.__type__stdgodot_internaldotgodotastdotAst_exprdotExpr)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent }))) {
                        var _lit:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L228"
                        if ((@:checkr _lit ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name != (("NaN" : stdgo.GoString))) {
                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L229"
                            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("literal value required for primitive type" : stdgo.GoString)) };
                        };
                        {
                            final __tmp__0 = ("NaN" : stdgo.GoString);
                            final __tmp__1 = (6 : stdgo._internal.go.token.Token_token.Token);
                            _val = @:binopAssign __tmp__0;
                            _kind = @:binopAssign __tmp__1;
                        };
                    } else {
                        var _lit:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L233"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("literal value required for primitive type" : stdgo.GoString)) };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L237"
        {
            var _typ = @:assignType ((@:checkr _idType ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__() : stdgo.GoString);
            {
                final __value__ = _typ;
                if (__value__ == (("string" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L239"
                    if (_kind != ((9 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L240"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("string literal value required for type string" : stdgo.GoString)) };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L242"
                    return ({
                        @:explicitConversion final __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_val?.__copy__());
                        { _0 : new stdgo.AnyInterface(__tmp__._0, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _1 : __tmp__._1 };
                    });
                } else if (__value__ == (("byte" : stdgo.GoString)) || __value__ == (("rune" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L244"
                    if (_kind == ((5 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L245"
                        {
                            final __value__ = _typ;
                            if (__value__ == (("rune" : stdgo.GoString))) {
                                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L247"
                                return stdgo._internal.internal.fuzz.Fuzz__parseint._parseInt(_val?.__copy__(), _typ?.__copy__());
                            } else if (__value__ == (("byte" : stdgo.GoString))) {
                                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L249"
                                return stdgo._internal.internal.fuzz.Fuzz__parseuint._parseUint(_val?.__copy__(), _typ?.__copy__());
                            };
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L252"
                    if (_kind != ((8 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L253"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("character literal required for byte/rune types" : stdgo.GoString)) };
                    };
                    var _n = @:assignType (_val.length : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L256"
                    if ((_n < (2 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L257"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed character literal, missing single quotes" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.strconv.Strconv_unquotechar.unquoteChar((_val.__slice__((1 : stdgo.GoInt), (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (39 : stdgo.GoUInt8)), _code:stdgo.GoInt32 = __tmp__._0, __0:Bool = __tmp__._1, __1:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L260"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L261"
                        return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L263"
                    if (_typ == (("rune" : stdgo.GoString))) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L264"
                        return { _0 : new stdgo.AnyInterface(_code, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), _1 : (null : stdgo.Error) };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L266"
                    if ((_code >= (256 : stdgo.GoInt32) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L267"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("can only encode single byte to a byte type" : stdgo.GoString)) };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L269"
                    return { _0 : new stdgo.AnyInterface((_code : stdgo.GoUInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), _1 : (null : stdgo.Error) };
                } else if (__value__ == (("int" : stdgo.GoString)) || __value__ == (("int8" : stdgo.GoString)) || __value__ == (("int16" : stdgo.GoString)) || __value__ == (("int32" : stdgo.GoString)) || __value__ == (("int64" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L271"
                    if (_kind != ((5 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L272"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for int types" : stdgo.GoString)) };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L274"
                    return stdgo._internal.internal.fuzz.Fuzz__parseint._parseInt(_val?.__copy__(), _typ?.__copy__());
                } else if (__value__ == (("uint" : stdgo.GoString)) || __value__ == (("uint8" : stdgo.GoString)) || __value__ == (("uint16" : stdgo.GoString)) || __value__ == (("uint32" : stdgo.GoString)) || __value__ == (("uint64" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L276"
                    if (_kind != ((5 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L277"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for uint types" : stdgo.GoString)) };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L279"
                    return stdgo._internal.internal.fuzz.Fuzz__parseuint._parseUint(_val?.__copy__(), _typ?.__copy__());
                } else if (__value__ == (("float32" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L281"
                    if (((_kind != (6 : stdgo._internal.go.token.Token_token.Token)) && (_kind != (5 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L282"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("float or integer literal required for float32 type" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_val?.__copy__(), (32 : stdgo.GoInt)), _v:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L285"
                    return { _0 : new stdgo.AnyInterface((_v : stdgo.GoFloat32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float32_kind))), _1 : _err };
                } else if (__value__ == (("float64" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L287"
                    if (((_kind != (6 : stdgo._internal.go.token.Token_token.Token)) && (_kind != (5 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L288"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("float or integer literal required for float64 type" : stdgo.GoString)) };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L290"
                    return ({
                        @:explicitConversion final __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_val?.__copy__(), (64 : stdgo.GoInt));
                        { _0 : new stdgo.AnyInterface(__tmp__._0, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))), _1 : __tmp__._1 };
                    });
                } else if (__value__ == (("float32-bits" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L292"
                    if (_kind != ((5 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L293"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for math.Float32frombits type" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__parseuint._parseUint(_val?.__copy__(), ("uint32" : stdgo.GoString)), _bits:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L296"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L297"
                        return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L299"
                    return { _0 : new stdgo.AnyInterface(stdgo._internal.math.Math_float32frombits.float32frombits((stdgo.Go.typeAssert(_bits, stdgo._internal.internal.reflect.GoType.basic(uint32_kind)) : stdgo.GoUInt32)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float32_kind))), _1 : (null : stdgo.Error) };
                } else if (__value__ == (("float64-bits" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L301"
                    if (((_kind != (6 : stdgo._internal.go.token.Token_token.Token)) && (_kind != (5 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L302"
                        return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("integer literal required for math.Float64frombits type" : stdgo.GoString)) };
                    };
                    var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__parseuint._parseUint(_val?.__copy__(), ("uint64" : stdgo.GoString)), _bits:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L305"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L306"
                        return { _0 : (null : stdgo.AnyInterface), _1 : _err };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L308"
                    return { _0 : new stdgo.AnyInterface(stdgo._internal.math.Math_float64frombits.float64frombits((stdgo.Go.typeAssert(_bits, stdgo._internal.internal.reflect.GoType.basic(uint64_kind)) : stdgo.GoUInt64)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))), _1 : (null : stdgo.Error) };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L310"
                    return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("expected []byte or primitive type" : stdgo.GoString)) };
                };
            };
        };
    }
