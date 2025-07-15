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
function _setMimeTypes(_lowerExt:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _mixExt:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L34"
            stdgo._internal.mime.Mime__clearsyncmap._clearSyncMap((stdgo.Go.setRef(stdgo._internal.mime.Mime__mimetypes._mimeTypes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_map_dotmap_.__type__stdgodot_internaldotsyncdotSync_map_dotMap_ })) : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>));
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L35"
            stdgo._internal.mime.Mime__clearsyncmap._clearSyncMap((stdgo.Go.setRef(stdgo._internal.mime.Mime__mimetypeslower._mimeTypesLower, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_map_dotmap_.__type__stdgodot_internaldotsyncdotSync_map_dotMap_ })) : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>));
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L36"
            stdgo._internal.mime.Mime__clearsyncmap._clearSyncMap((stdgo.Go.setRef(stdgo._internal.mime.Mime__extensions._extensions, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_map_dotmap_.__type__stdgodot_internaldotsyncdotSync_map_dotMap_ })) : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>));
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L38"
            if (_lowerExt != null) for (_k => _v in _lowerExt) {
                //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L39"
                stdgo._internal.mime.Mime__mimetypeslower._mimeTypesLower.store(new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L41"
            if (_mixExt != null) for (_k => _v in _mixExt) {
                //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L42"
                stdgo._internal.mime.Mime__mimetypes._mimeTypes.store(new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L45"
            stdgo._internal.mime.Mime__extensionsmu._extensionsMu.lock();
            {
                final __f__ = stdgo._internal.mime.Mime__extensionsmu._extensionsMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L47"
            if (_lowerExt != null) for (_k => _v in _lowerExt) {
                var __tmp__ = stdgo._internal.mime.Mime_parsemediatype.parseMediaType(_v?.__copy__()), _justType:stdgo.GoString = __tmp__._0, __0:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L49"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L50"
                    throw ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    });
                };
                var _exts:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L53"
                {
                    var __tmp__ = stdgo._internal.mime.Mime__extensions._extensions.load(new stdgo.AnyInterface(_justType, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), _ei:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _exts = (stdgo.Go.typeAssert(_ei, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })) : stdgo.Slice<stdgo.GoString>);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L56"
                stdgo._internal.mime.Mime__extensions._extensions.store(new stdgo.AnyInterface(_justType, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_exts.__append__(_k?.__copy__()) : stdgo.Slice<stdgo.GoString>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))));
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
