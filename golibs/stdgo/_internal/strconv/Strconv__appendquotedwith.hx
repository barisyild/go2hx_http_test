package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _appendQuotedWith(_buf:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString, _quote:stdgo.GoUInt8, aSCIIonly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L34"
        if (((_buf.capacity - (_buf.length) : stdgo.GoInt) < (_s.length) : Bool)) {
            var _nBuf = (new stdgo.Slice<stdgo.GoUInt8>((_buf.length : stdgo.GoInt).toBasic(), ((((_buf.length) + (1 : stdgo.GoInt) : stdgo.GoInt) + (_s.length) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L36"
            _nBuf.__copyTo__(_buf);
            _buf = _nBuf;
        };
        _buf = (_buf.__append__(_quote) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L40"
        {
            var _width = @:assignType (0 : stdgo.GoInt);
            while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
                var _r = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
_width = (1 : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L43"
                if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s.__copy__());
                        _r = @:tmpset0 __tmp__._0;
                        _width = @:tmpset0 __tmp__._1;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L46"
                if (((_width == (1 : stdgo.GoInt)) && (_r == (65533 : stdgo.GoInt32)) : Bool)) {
                    _buf = (_buf.__append__(...((("\\x" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[((_s[(0 : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                    _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[((_s[(0 : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L50"
                    {
                        _s = (_s.__slice__(_width) : stdgo.GoString)?.__copy__();
                        continue;
                    };
                };
_buf = stdgo._internal.strconv.Strconv__appendescapedrune._appendEscapedRune(_buf, _r, _quote, aSCIIonly, _graphicOnly);
                _s = (_s.__slice__(_width) : stdgo.GoString)?.__copy__();
            };
        };
        _buf = (_buf.__append__(_quote) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L55"
        return _buf;
    }
