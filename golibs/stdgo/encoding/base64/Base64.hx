package stdgo.encoding.base64;
var stdPadding : stdgo.GoInt32 = 61i64;
var noPadding : stdgo.GoInt32 = -1i64;
var stdEncoding(get, set) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>;
private function get_stdEncoding():stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> return stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding;
private function set_stdEncoding(v:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>):stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> {
    stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding = v;
    return v;
}
var uRLEncoding(get, set) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>;
private function get_uRLEncoding():stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> return stdgo._internal.encoding.base64.Base64_urlencoding.uRLEncoding;
private function set_uRLEncoding(v:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>):stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> {
    stdgo._internal.encoding.base64.Base64_urlencoding.uRLEncoding = v;
    return v;
}
var rawStdEncoding(get, set) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>;
private function get_rawStdEncoding():stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> return stdgo._internal.encoding.base64.Base64_rawstdencoding.rawStdEncoding;
private function set_rawStdEncoding(v:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>):stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> {
    stdgo._internal.encoding.base64.Base64_rawstdencoding.rawStdEncoding = v;
    return v;
}
var rawURLEncoding(get, set) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>;
private function get_rawURLEncoding():stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> return stdgo._internal.encoding.base64.Base64_rawurlencoding.rawURLEncoding;
private function set_rawURLEncoding(v:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>):stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> {
    stdgo._internal.encoding.base64.Base64_rawurlencoding.rawURLEncoding = v;
    return v;
}
typedef Encoding = stdgo._internal.encoding.base64.Base64_encoding.Encoding;
typedef CorruptInputError = stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError;
typedef EncodingPointer = stdgo._internal.encoding.base64.Base64_encodingpointer.EncodingPointer;
typedef CorruptInputErrorPointer = stdgo._internal.encoding.base64.Base64_corruptinputerrorpointer.CorruptInputErrorPointer;
typedef EncodingPointerPointer = stdgo._internal.encoding.base64.Base64_encodingpointerpointer.EncodingPointerPointer;
typedef CorruptInputErrorPointerPointer = stdgo._internal.encoding.base64.Base64_corruptinputerrorpointerpointer.CorruptInputErrorPointerPointer;
/**
    * Package base64 implements base64 encoding as specified by RFC 4648.
**/
class Base64 {
    /**
        * NewEncoding returns a new padded Encoding defined by the given alphabet,
        * which must be a 64-byte string that does not contain the padding character
        * or CR / LF ('\r', '\n'). The alphabet is treated as sequence of byte values
        * without any special treatment for multi-byte UTF-8.
        * The resulting Encoding uses the default padding character ('='),
        * which may be changed or disabled via WithPadding.
    **/
    static public inline function newEncoding(_encoder:stdgo.GoString):stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> return stdgo._internal.encoding.base64.Base64_newencoding.newEncoding(_encoder);
    /**
        * NewEncoder returns a new base64 stream encoder. Data written to
        * the returned writer will be encoded using enc and then written to w.
        * Base64 encodings operate in 4-byte blocks; when finished
        * writing, the caller must Close the returned encoder to flush any
        * partially written blocks.
    **/
    static public inline function newEncoder(_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser return stdgo._internal.encoding.base64.Base64_newencoder.newEncoder(_enc, _w);
    /**
        * NewDecoder constructs a new base64 stream decoder.
    **/
    static public inline function newDecoder(_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader return stdgo._internal.encoding.base64.Base64_newdecoder.newDecoder(_enc, _r);
}
