package stdgo._internal.internal.testenv;
import stdgo._internal.os.Os;
import stdgo._internal.flag.Flag;
import stdgo._internal.testing.Testing;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.time.Time;
import stdgo._internal.context.Context;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.internal.platform.Platform;
import stdgo._internal.io.fs.Fs;
function _hasSymlink():{ var _0 : Bool; var _1 : stdgo.GoString; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _ok = false, _reason = ("" : stdgo.GoString);
        try {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv_notwin.go#L17"
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("plan9" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv_notwin.go#L19"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : false, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                        _ok = __tmp__._0;
                        _reason = __tmp__._1;
                        __tmp__;
                    };
                } else if (__value__ == (("android" : stdgo.GoString)) || __value__ == (("wasip1" : stdgo.GoString))) {
                    var __tmp__ = stdgo._internal.os.Os_mkdirtemp.mkdirTemp((stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv_notwin.go#L27"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv_notwin.go#L28"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : false, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                            _ok = __tmp__._0;
                            _reason = __tmp__._1;
                            __tmp__;
                        };
                    };
                    {
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function():Void {
                                stdgo._internal.os.Os_removeall.removeAll(_dir?.__copy__());
                            };
                            a();
                        }) });
                    };
                    var _fpath = @:assignType (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("testfile.txt" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv_notwin.go#L34"
                    {
                        var _err = @:assignType (stdgo._internal.os.Os_writefile.writeFile(_fpath?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv_notwin.go#L35"
                            {
                                final __ret__:{ var _0 : Bool; var _1 : stdgo.GoString; } = {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : false, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                                    _ok = __tmp__._0;
                                    _reason = __tmp__._1;
                                    __tmp__;
                                };
                                _ok = __ret__._0;
                                _reason = __ret__._1;
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv_notwin.go#L37"
                    {
                        var _err = @:assignType (stdgo._internal.os.Os_symlink.symlink(_fpath?.__copy__(), stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("testlink" : stdgo.GoString))?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv_notwin.go#L38"
                            if (stdgo._internal.internal.testenv.Testenv_syscallisnotsupported.syscallIsNotSupported(_err)) {
                                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv_notwin.go#L39"
                                {
                                    final __ret__:{ var _0 : Bool; var _1 : stdgo.GoString; } = {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : false, _1 : stdgo._internal.fmt.Fmt_sprintf.sprintf(("symlinks unsupported: %s" : stdgo.GoString), new stdgo.AnyInterface(_err.error(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__() };
                                        _ok = __tmp__._0;
                                        _reason = __tmp__._1;
                                        __tmp__;
                                    };
                                    _ok = __ret__._0;
                                    _reason = __ret__._1;
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv_notwin.go#L41"
                            {
                                final __ret__:{ var _0 : Bool; var _1 : stdgo.GoString; } = {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : false, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                                    _ok = __tmp__._0;
                                    _reason = __tmp__._1;
                                    __tmp__;
                                };
                                _ok = __ret__._0;
                                _reason = __ret__._1;
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv_notwin.go#L45"
            {
                final __ret__:{ var _0 : Bool; var _1 : stdgo.GoString; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : true, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                    _ok = __tmp__._0;
                    _reason = __tmp__._1;
                    __tmp__;
                };
                _ok = __ret__._0;
                _reason = __ret__._1;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return { _0 : _ok, _1 : _reason };
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
                return { _0 : _ok, _1 : _reason };
            };
        };
    }
