package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function trim(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L946"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L948"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L950"
        if (_cutset == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L951"
            return _s;
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L953"
        if (((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L954"
            return stdgo._internal.bytes.Bytes__trimleftbyte._trimLeftByte(stdgo._internal.bytes.Bytes__trimrightbyte._trimRightByte(_s, _cutset[(0 : stdgo.GoInt)]), _cutset[(0 : stdgo.GoInt)]);
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L956"
        {
            var __tmp__ = stdgo._internal.bytes.Bytes__makeasciiset._makeASCIISet(_cutset?.__copy__()), _as:stdgo._internal.bytes.Bytes_t_asciiset.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L957"
                return stdgo._internal.bytes.Bytes__trimleftascii._trimLeftASCII(stdgo._internal.bytes.Bytes__trimrightascii._trimRightASCII(_s, (stdgo.Go.setRef(_as, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_t_asciisetdott_asciiset.__type__stdgodot_internaldotbytesdotBytes_t_asciisetdotT_asciiSet })) : stdgo.Ref<stdgo._internal.bytes.Bytes_t_asciiset.T_asciiSet>)), (stdgo.Go.setRef(_as, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_t_asciisetdott_asciiset.__type__stdgodot_internaldotbytesdotBytes_t_asciisetdotT_asciiSet })) : stdgo.Ref<stdgo._internal.bytes.Bytes_t_asciiset.T_asciiSet>));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L959"
        return stdgo._internal.bytes.Bytes__trimleftunicode._trimLeftUnicode(stdgo._internal.bytes.Bytes__trimrightunicode._trimRightUnicode(_s, _cutset?.__copy__()), _cutset?.__copy__());
    }
