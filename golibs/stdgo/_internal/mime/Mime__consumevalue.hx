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
function _consumeValue(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _value = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L283"
        if (_v == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L284"
            return { _0 : _value, _1 : _rest };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L286"
        if (_v[(0 : stdgo.GoInt)] != ((34 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L287"
            return stdgo._internal.mime.Mime__consumetoken._consumeToken(_v?.__copy__());
        };
        var _buffer = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L292"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (_v.length) : Bool)) {
                var _r = @:assignType (_v[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L294"
                if (_r == ((34 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L295"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (_buffer.string() : stdgo.GoString).__copy__(), _1 : (_v.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                        _value = __tmp__._0;
                        _rest = __tmp__._1;
                        __tmp__;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L307"
                if (((_r == ((92 : stdgo.GoUInt8)) && ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_v.length) : Bool) : Bool) && stdgo._internal.mime.Mime__istspecial._isTSpecial((_v[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L308"
                    _buffer.writeByte(_v[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                    //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L309"
                    _i++;
                    //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L310"
                    {
                        _i++;
                        continue;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L312"
                if (((_r == (13 : stdgo.GoUInt8)) || (_r == (10 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L313"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : _v.__copy__() };
                        _value = __tmp__._0;
                        _rest = __tmp__._1;
                        __tmp__;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L315"
                _buffer.writeByte(_v[(_i : stdgo.GoInt)]);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L318"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _v?.__copy__() };
            _value = __tmp__._0;
            _rest = __tmp__._1;
            __tmp__;
        };
    }
