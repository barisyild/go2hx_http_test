package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _fprint(_w:stdgo._internal.io.Io_writer.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _x:stdgo.AnyInterface, _f:stdgo._internal.go.ast.Ast_fieldfilter.FieldFilter):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _p = @:assignType ({ _output : _w, _fset : _fset, _filter : _f, _ptrmap : ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>), _last : (10 : stdgo.GoUInt8) } : stdgo._internal.go.ast.Ast_t_printer.T_printer);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L55"
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
                                _err = (stdgo.Go.typeAssert(_e, _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_t_localerrordott_localerror.__type__stdgodot_internaldotgodotastdotAst_t_localerrordotT_localError) : stdgo._internal.go.ast.Ast_t_localerror.T_localError)._err;
                            };
                        };
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L61"
            if (({
                final value = _x;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L62"
                _p._printf(("nil\n" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L63"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L65"
            _p._print(stdgo._internal.reflect.Reflect_valueof.valueOf(_x)?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L66"
            _p._printf(("\n" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L68"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
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
                return _err;
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
                return _err;
            };
        };
    }
