package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _fixedHuffmanDecoderInit():Void {
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L767"
        stdgo._internal.compress.flate.Flate__fixedonce._fixedOnce.do_(function():Void {
            var _bits:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(288, 288).__setNumber32__();
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L770"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (144 : stdgo.GoInt) : Bool)) {
                    _bits[(_i : stdgo.GoInt)] = (8 : stdgo.GoInt);
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L773"
            {
                var _i = @:assignType (144 : stdgo.GoInt);
                while ((_i < (256 : stdgo.GoInt) : Bool)) {
                    _bits[(_i : stdgo.GoInt)] = (9 : stdgo.GoInt);
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L776"
            {
                var _i = @:assignType (256 : stdgo.GoInt);
                while ((_i < (280 : stdgo.GoInt) : Bool)) {
                    _bits[(_i : stdgo.GoInt)] = (7 : stdgo.GoInt);
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L779"
            {
                var _i = @:assignType (280 : stdgo.GoInt);
                while ((_i < (288 : stdgo.GoInt) : Bool)) {
                    _bits[(_i : stdgo.GoInt)] = (8 : stdgo.GoInt);
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L782"
            stdgo._internal.compress.flate.Flate__fixedhuffmandecoder._fixedHuffmanDecoder._init((_bits.__slice__(0) : stdgo.Slice<stdgo.GoInt>));
        });
    }
