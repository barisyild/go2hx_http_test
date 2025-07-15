package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
function _addrMarshalerEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        var _va = @:assignType (_v.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L456"
        if (_va.isNil()) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L457"
            _e.writeString(("null" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L458"
            return;
        };
        var _m = @:assignType (stdgo.Go.typeAssert(_va.interface_(), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_marshalerdotmarshaler.__type__stdgodot_internaldotencodingdotjsondotJson_marshalerdotMarshaler) : stdgo._internal.encoding.json.Json_marshaler.Marshaler);
        var __tmp__ = _m.marshalJSON(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L462"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L463"
            _e.grow((_b.length));
            var _out = _e.availableBuffer();
            {
                var __tmp__ = stdgo._internal.encoding.json.Json__appendcompact._appendCompact(_out, _b, _opts._escapeHTML);
                _out = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L466"
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).buffer.write(_out);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L468"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L469"
            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_marshalererror.MarshalerError(_v.type(), _err, ("MarshalJSON" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_marshalererror.MarshalerError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_marshalererrordotmarshalererror.__type__stdgodot_internaldotencodingdotjsondotJson_marshalererrordotMarshalerError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_marshalererrordotmarshalererror.__type__stdgodot_internaldotencodingdotjsondotJson_marshalererrordotMarshalerError })));
        };
    }
