package stdgo._internal.mime;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function _loadMimeFile(_filename:stdgo.GoString):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(_filename?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L81"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L82"
                return;
            };
            {
                final __f__ = _f.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _scanner = stdgo._internal.bufio.Bufio_newscanner.newScanner(stdgo.Go.asInterface(_f, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile })));
            //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L87"
            while (_scanner.scan()) {
                var _fields = stdgo._internal.strings.Strings_fields.fields(_scanner.text()?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L89"
                if ((((_fields.length) <= (1 : stdgo.GoInt) : Bool) || (_fields[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L90"
                    continue;
                };
                var _mimeType = @:assignType (_fields[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L93"
                if ((_fields.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>) != null) for (__0 => _ext in (_fields.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L94"
                    if (_ext[(0 : stdgo.GoInt)] == ((35 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L95"
                        break;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L97"
                    stdgo._internal.mime.Mime__setextensiontype._setExtensionType((("." : stdgo.GoString) + _ext?.__copy__() : stdgo.GoString)?.__copy__(), _mimeType?.__copy__());
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L100"
            {
                var _err = @:assignType (_scanner.err() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L101"
                    throw ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    });
                };
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
                return;
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
                return;
            };
        };
    }
