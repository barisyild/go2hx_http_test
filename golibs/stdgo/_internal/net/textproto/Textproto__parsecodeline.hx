package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function _parseCodeLine(_line:stdgo.GoString, _expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } {
        var _code = (0 : stdgo.GoInt), _continued = false, _message = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L196"
        if ((((_line.length) < (4 : stdgo.GoInt) : Bool) || (_line[(3 : stdgo.GoInt)] != ((32 : stdgo.GoUInt8)) && _line[(3 : stdgo.GoInt)] != ((45 : stdgo.GoUInt8)) : Bool) : Bool)) {
            _err = stdgo.Go.asInterface(((("short response: " : stdgo.GoString) + _line?.__copy__() : stdgo.GoString) : stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_protocolerrordotprotocolerror.__type__stdgodot_internaldotnetdottextprotodotTextproto_protocolerrordotProtocolError);
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L198"
            return { _0 : _code, _1 : _continued, _2 : _message, _3 : _err };
        };
        _continued = _line[(3 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8));
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_line.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            _code = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L202"
        if (((_err != null) || (_code < (100 : stdgo.GoInt) : Bool) : Bool)) {
            _err = stdgo.Go.asInterface(((("invalid response code: " : stdgo.GoString) + _line?.__copy__() : stdgo.GoString) : stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_protocolerrordotprotocolerror.__type__stdgodot_internaldotnetdottextprotodotTextproto_protocolerrordotProtocolError);
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L204"
            return { _0 : _code, _1 : _continued, _2 : _message, _3 : _err };
        };
        _message = (_line.__slice__((4 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L207"
        if (((((((1 : stdgo.GoInt) <= _expectCode : Bool) && (_expectCode < (10 : stdgo.GoInt) : Bool) : Bool) && (_code / (100 : stdgo.GoInt) : stdgo.GoInt) != (_expectCode) : Bool) || ((((10 : stdgo.GoInt) <= _expectCode : Bool) && (_expectCode < (100 : stdgo.GoInt) : Bool) : Bool) && (_code / (10 : stdgo.GoInt) : stdgo.GoInt) != (_expectCode) : Bool) : Bool) || ((((100 : stdgo.GoInt) <= _expectCode : Bool) && (_expectCode < (1000 : stdgo.GoInt) : Bool) : Bool) && _code != (_expectCode) : Bool) : Bool)) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.textproto.Textproto_error.Error(_code, _message?.__copy__()) : stdgo._internal.net.textproto.Textproto_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_errordoterror.__type__stdgodot_internaldotnetdottextprotodotTextproto_errordotError })) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_errordoterror.__type__stdgodot_internaldotnetdottextprotodotTextproto_errordotError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L212"
        return { _0 : _code, _1 : _continued, _2 : _message, _3 : _err };
    }
