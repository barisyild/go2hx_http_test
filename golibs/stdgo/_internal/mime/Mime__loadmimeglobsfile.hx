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
function _loadMimeGlobsFile(_filename:stdgo.GoString):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(_filename?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L36"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L37"
                return _err;
            };
            {
                final __f__ = _f.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _scanner = stdgo._internal.bufio.Bufio_newscanner.newScanner(stdgo.Go.asInterface(_f, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile })));
            //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L42"
            while (_scanner.scan()) {
                var _fields = stdgo._internal.strings.Strings_split.split(_scanner.text()?.__copy__(), (":" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L45"
                if (((((_fields.length) < (3 : stdgo.GoInt) : Bool) || ((_fields[(0 : stdgo.GoInt)].length) < (1 : stdgo.GoInt) : Bool) : Bool) || ((_fields[(2 : stdgo.GoInt)].length) < (3 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L46"
                    continue;
                } else if (((_fields[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)] == ((35 : stdgo.GoUInt8)) || _fields[(2 : stdgo.GoInt)][(0 : stdgo.GoInt)] != ((42 : stdgo.GoUInt8)) : Bool) || (_fields[(2 : stdgo.GoInt)][(1 : stdgo.GoInt)] != (46 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L48"
                    continue;
                };
                var _extension = @:assignType ((_fields[(2 : stdgo.GoInt)].__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L52"
                if (stdgo._internal.strings.Strings_containsany.containsAny(_extension?.__copy__(), ("?*[" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L62"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L64"
                {
                    var __tmp__ = stdgo._internal.mime.Mime__mimetypes._mimeTypes.load(new stdgo.AnyInterface(_extension, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), __0:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L68"
                        continue;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L71"
                stdgo._internal.mime.Mime__setextensiontype._setExtensionType(_extension?.__copy__(), _fields[(1 : stdgo.GoInt)]?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L73"
            {
                var _err = @:assignType (_scanner.err() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L74"
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
            //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L76"
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
