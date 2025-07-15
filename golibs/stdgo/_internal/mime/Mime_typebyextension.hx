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
function typeByExtension(_ext:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L112"
        stdgo._internal.mime.Mime__once._once.do_(stdgo._internal.mime.Mime__initmime._initMime);
        //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L115"
        {
            var __tmp__ = stdgo._internal.mime.Mime__mimetypes._mimeTypes.load(new stdgo.AnyInterface(_ext, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L116"
                return (stdgo.Go.typeAssert(_v, stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString)?.__copy__();
            };
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10).__setNumber32__();
        var _lower = (_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        {};
        //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L125"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_ext.length) : Bool)) {
                var _c = @:assignType (_ext[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/mime/type.go#L127"
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    var __tmp__ = stdgo._internal.mime.Mime__mimetypeslower._mimeTypesLower.load(new stdgo.AnyInterface(stdgo._internal.strings.Strings_tolower.toLower(_ext.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), _si:stdgo.AnyInterface = __tmp__._0, __0:Bool = __tmp__._1;
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(_si, stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString), _1 : true };
                    } catch(__exception__) {
                        { _0 : ("" : stdgo.GoString), _1 : false };
                    }, _s = __tmp__._0, __1 = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L131"
                    return _s.__copy__();
                };
//"file:///Users/o/.go/go1.21.3/src/mime/type.go#L133"
                if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _lower = (_lower.__append__((_c + (32 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                } else {
                    _lower = (_lower.__append__(_c) : stdgo.Slice<stdgo.GoUInt8>);
                };
                _i++;
            };
        };
        var __tmp__ = stdgo._internal.mime.Mime__mimetypeslower._mimeTypesLower.load(new stdgo.AnyInterface((_lower : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), _si:stdgo.AnyInterface = __tmp__._0, __0:Bool = __tmp__._1;
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_si, stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString), _1 : true };
        } catch(__exception__) {
            { _0 : ("" : stdgo.GoString), _1 : false };
        }, _s = __tmp__._0, __1 = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L141"
        return _s?.__copy__();
    }
