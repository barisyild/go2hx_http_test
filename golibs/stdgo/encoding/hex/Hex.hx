package stdgo.encoding.hex;
var errLength(get, set) : stdgo.Error;
private function get_errLength():stdgo.Error return stdgo._internal.encoding.hex.Hex_errlength.errLength;
private function set_errLength(v:stdgo.Error):stdgo.Error {
    stdgo._internal.encoding.hex.Hex_errlength.errLength = v;
    return v;
}
typedef InvalidByteError = stdgo._internal.encoding.hex.Hex_invalidbyteerror.InvalidByteError;
typedef InvalidByteErrorPointer = stdgo._internal.encoding.hex.Hex_invalidbyteerrorpointer.InvalidByteErrorPointer;
typedef InvalidByteErrorPointerPointer = stdgo._internal.encoding.hex.Hex_invalidbyteerrorpointerpointer.InvalidByteErrorPointerPointer;
/**
    * Package hex implements hexadecimal encoding and decoding.
**/
class Hex {
    /**
        * EncodedLen returns the length of an encoding of n source bytes.
        * Specifically, it returns n * 2.
    **/
    static public inline function encodedLen(_n:stdgo.GoInt):stdgo.GoInt return stdgo._internal.encoding.hex.Hex_encodedlen.encodedLen(_n);
    /**
        * Encode encodes src into EncodedLen(len(src))
        * bytes of dst. As a convenience, it returns the number
        * of bytes written to dst, but this value is always EncodedLen(len(src)).
        * Encode implements hexadecimal encoding.
    **/
    static public inline function encode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return stdgo._internal.encoding.hex.Hex_encode.encode(_dst, _src);
    /**
        * DecodedLen returns the length of a decoding of x source bytes.
        * Specifically, it returns x / 2.
    **/
    static public inline function decodedLen(_x:stdgo.GoInt):stdgo.GoInt return stdgo._internal.encoding.hex.Hex_decodedlen.decodedLen(_x);
    /**
        * Decode decodes src into DecodedLen(len(src)) bytes,
        * returning the actual number of bytes written to dst.
        * 
        * Decode expects that src contains only hexadecimal
        * characters and that src has even length.
        * If the input is malformed, Decode returns the number
        * of bytes decoded before the error.
    **/
    static public inline function decode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.encoding.hex.Hex_decode.decode(_dst, _src);
    /**
        * EncodeToString returns the hexadecimal encoding of src.
    **/
    static public inline function encodeToString(_src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString return stdgo._internal.encoding.hex.Hex_encodetostring.encodeToString(_src);
    /**
        * DecodeString returns the bytes represented by the hexadecimal string s.
        * 
        * DecodeString expects that src contains only hexadecimal
        * characters and that src has even length.
        * If the input is malformed, DecodeString returns
        * the bytes decoded before the error.
    **/
    static public inline function decodeString(_s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.encoding.hex.Hex_decodestring.decodeString(_s);
    /**
        * Dump returns a string that contains a hex dump of the given data. The format
        * of the hex dump matches the output of `hexdump -C` on the command line.
    **/
    static public inline function dump(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString return stdgo._internal.encoding.hex.Hex_dump.dump(_data);
    /**
        * NewEncoder returns an io.Writer that writes lowercase hexadecimal characters to w.
    **/
    static public inline function newEncoder(_w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer return stdgo._internal.encoding.hex.Hex_newencoder.newEncoder(_w);
    /**
        * NewDecoder returns an io.Reader that decodes hexadecimal characters from r.
        * NewDecoder expects that r contain only an even number of hexadecimal characters.
    **/
    static public inline function newDecoder(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader return stdgo._internal.encoding.hex.Hex_newdecoder.newDecoder(_r);
    /**
        * Dumper returns a WriteCloser that writes a hex dump of all written data to
        * w. The format of the dump matches the output of `hexdump -C` on the command
        * line.
    **/
    static public inline function dumper(_w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser return stdgo._internal.encoding.hex.Hex_dumper.dumper(_w);
}
