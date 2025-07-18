package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function indexRune(_s:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L161"
        if ((((0 : stdgo.GoInt32) <= _r : Bool) && (_r < (128 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L163"
            return stdgo._internal.bytes.Bytes_indexbyte.indexByte(_s, (_r : stdgo.GoUInt8));
        } else if (_r == ((65533 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L165"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (_s.length) : Bool)) {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _r1:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L167"
                    if (_r1 == ((65533 : stdgo.GoInt32))) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L168"
                        return _i;
                    };
                    _i = (_i + (_n) : stdgo.GoInt);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L172"
            return (-1 : stdgo.GoInt);
        } else if (!stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_r)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L174"
            return (-1 : stdgo.GoInt);
        } else {
            var _b:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
            var _n = @:assignType (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_b.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _r) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L178"
            return stdgo._internal.bytes.Bytes_index.index(_s, (_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        };
    }
