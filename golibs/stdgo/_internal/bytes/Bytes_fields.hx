package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function fields(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        var _n = @:assignType (0 : stdgo.GoInt);
        var _wasSpace = @:assignType (1 : stdgo.GoInt);
        var _setBits = @:assignType ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L429"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _r = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
_setBits = (_setBits | (_r) : stdgo.GoUInt8);
var _isSpace = @:assignType (stdgo._internal.bytes.Bytes__asciispace._asciiSpace[(_r : stdgo.GoInt)] : stdgo.GoInt);
_n = (_n + ((_wasSpace & (-1 ^ _isSpace) : stdgo.GoInt)) : stdgo.GoInt);
_wasSpace = _isSpace;
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L437"
        if ((_setBits >= (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L439"
            return stdgo._internal.bytes.Bytes_fieldsfunc.fieldsFunc(_s, stdgo._internal.unicode.Unicode_isspace.isSpace);
        };
        var _a = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        var _na = @:assignType (0 : stdgo.GoInt);
        var _fieldStart = @:assignType (0 : stdgo.GoInt);
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L448"
        while (((_i < (_s.length) : Bool) && (stdgo._internal.bytes.Bytes__asciispace._asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L449"
            _i++;
        };
        _fieldStart = _i;
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L452"
        while ((_i < (_s.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L453"
            if (stdgo._internal.bytes.Bytes__asciispace._asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L454"
                _i++;
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L455"
                continue;
            };
            _a[(_na : stdgo.GoInt)] = (_s.__slice__(_fieldStart, _i, _i) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L458"
            _na++;
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L459"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L461"
            while (((_i < (_s.length) : Bool) && (stdgo._internal.bytes.Bytes__asciispace._asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L462"
                _i++;
            };
            _fieldStart = _i;
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L466"
        if ((_fieldStart < (_s.length) : Bool)) {
            _a[(_na : stdgo.GoInt)] = (_s.__slice__(_fieldStart, (_s.length), (_s.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L469"
        return _a;
    }
