package stdgo._internal.go.parser;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.go.ast.Ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.go.token.Token;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.go.build.constraint.Constraint;
import stdgo._internal.go.internal.typeparams.Typeparams;
function parseExprFrom(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _filename:stdgo.GoString, _src:stdgo.AnyInterface, _mode:stdgo._internal.go.parser.Parser_mode.Mode):{ var _0 : stdgo._internal.go.ast.Ast_expr.Expr; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _expr = (null : stdgo._internal.go.ast.Ast_expr.Expr), _err = (null : stdgo.Error);
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L190"
            if (({
                final value = _fset;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L191"
                throw new stdgo.AnyInterface(("parser.ParseExprFrom: no token.FileSet provided (fset == nil)" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            var __tmp__ = stdgo._internal.go.parser.Parser__readsource._readSource(_filename?.__copy__(), _src), _text:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L196"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L197"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.ast.Ast_expr.Expr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.go.ast.Ast_expr.Expr), _1 : _err };
                    _expr = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var _p:stdgo._internal.go.parser.Parser_t_parser.T_parser = ({} : stdgo._internal.go.parser.Parser_t_parser.T_parser);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L202"
                        {
                            var _e = @:assignType ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (({
                                final value = _e;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                var __tmp__ = @:castTranslate try {
                                    { _0 : (stdgo.Go.typeAssert(_e, _internal.gotype.Gotype___type__stdgodot_internaldotgodotparserdotparser_t_bailoutdott_bailout.__type__stdgodot_internaldotgodotparserdotParser_t_bailoutdotT_bailout) : stdgo._internal.go.parser.Parser_t_bailout.T_bailout), _1 : true };
                                } catch(__exception__) {
                                    { _0 : ({} : stdgo._internal.go.parser.Parser_t_bailout.T_bailout), _1 : false };
                                }, _bail = __tmp__._0, _ok = __tmp__._1;
                                //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L205"
                                if (!_ok) {
                                    //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L206"
                                    throw ({
                                        final __t__ = _e;
                                        if (__t__ == null) {
                                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                                        } else {
                                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                        };
                                    });
                                } else if (_bail._msg != ((stdgo.Go.str() : stdgo.GoString))) {
                                    //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L208"
                                    _p._errors.add(_p._file.position(_bail._pos)?.__copy__(), _bail._msg?.__copy__());
                                };
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L211"
                        _p._errors.sort();
                        _err = _p._errors.err();
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L216"
            _p._init(_fset, _filename?.__copy__(), _text, _mode);
            _expr = _p._parseRhs();
            //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L221"
            if (((_p._tok == (57 : stdgo._internal.go.token.Token_token.Token)) && (_p._lit == ("\n" : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L222"
                _p._next();
            };
            //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L224"
            _p._expect((1 : stdgo._internal.go.token.Token_token.Token));
            //"file:///Users/o/.go/go1.21.3/src/go/parser/interface.go#L226"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _expr, _1 : _err };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : _expr, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : _expr, _1 : _err };
            };
        };
    }
