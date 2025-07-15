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
function _setExtensionType(_extension:stdgo.GoString, _mimeType:stdgo.GoString):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.mime.Mime_parsemediatype.parseMediaType(_mimeType?.__copy__()), _justType:stdgo.GoString = __tmp__._0, _param:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L177"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L178"
                return _err;
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L180"
            if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_mimeType?.__copy__(), ("text/" : stdgo.GoString)) && ((_param[("charset" : stdgo.GoString)] ?? ("" : stdgo.GoString)) == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                _param[("charset" : stdgo.GoString)] = ("utf-8" : stdgo.GoString);
                _mimeType = stdgo._internal.mime.Mime_formatmediatype.formatMediaType(_mimeType?.__copy__(), _param)?.__copy__();
            };
            var _extLower = @:assignType (stdgo._internal.strings.Strings_tolower.toLower(_extension?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L186"
            stdgo._internal.mime.Mime__mimetypes._mimeTypes.store(new stdgo.AnyInterface(_extension, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_mimeType, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L187"
            stdgo._internal.mime.Mime__mimetypeslower._mimeTypesLower.store(new stdgo.AnyInterface(_extLower, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_mimeType, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L189"
            stdgo._internal.mime.Mime__extensionsmu._extensionsMu.lock();
            {
                final __f__ = stdgo._internal.mime.Mime__extensionsmu._extensionsMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _exts:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L192"
            {
                var __tmp__ = stdgo._internal.mime.Mime__extensions._extensions.load(new stdgo.AnyInterface(_justType, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), _ei:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _exts = (stdgo.Go.typeAssert(_ei, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })) : stdgo.Slice<stdgo.GoString>);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L195"
            if (_exts != null) for (__0 => _v in _exts) {
                //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L196"
                if (_v == (_extLower)) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L197"
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L200"
            stdgo._internal.mime.Mime__extensions._extensions.store(new stdgo.AnyInterface(_justType, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_exts.__append__(_extLower?.__copy__()) : stdgo.Slice<stdgo.GoString>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))));
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L201"
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
