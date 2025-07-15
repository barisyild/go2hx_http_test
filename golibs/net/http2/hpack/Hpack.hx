package net.http2.hpack;
var errStringLength(get, set) : stdgo.Error;
private function get_errStringLength():stdgo.Error return _internal.golangdotorg.x.net.http2.hpack.Hpack_errstringlength.errStringLength;
private function set_errStringLength(v:stdgo.Error):stdgo.Error {
    _internal.golangdotorg.x.net.http2.hpack.Hpack_errstringlength.errStringLength = v;
    return v;
}
var errInvalidHuffman(get, set) : stdgo.Error;
private function get_errInvalidHuffman():stdgo.Error return _internal.golangdotorg.x.net.http2.hpack.Hpack_errinvalidhuffman.errInvalidHuffman;
private function set_errInvalidHuffman(v:stdgo.Error):stdgo.Error {
    _internal.golangdotorg.x.net.http2.hpack.Hpack_errinvalidhuffman.errInvalidHuffman = v;
    return v;
}
typedef Encoder = _internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder;
typedef DecodingError = _internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerror.DecodingError;
typedef HeaderField = _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField;
typedef Decoder = _internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder;
typedef InvalidIndexError = _internal.golangdotorg.x.net.http2.hpack.Hpack_invalidindexerror.InvalidIndexError;
typedef EncoderPointer = _internal.golangdotorg.x.net.http2.hpack.Hpack_encoderpointer.EncoderPointer;
typedef DecodingErrorPointer = _internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerrorpointer.DecodingErrorPointer;
typedef HeaderFieldPointer = _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfieldpointer.HeaderFieldPointer;
typedef DecoderPointer = _internal.golangdotorg.x.net.http2.hpack.Hpack_decoderpointer.DecoderPointer;
typedef InvalidIndexErrorPointer = _internal.golangdotorg.x.net.http2.hpack.Hpack_invalidindexerrorpointer.InvalidIndexErrorPointer;
typedef EncoderPointerPointer = _internal.golangdotorg.x.net.http2.hpack.Hpack_encoderpointerpointer.EncoderPointerPointer;
typedef DecodingErrorPointerPointer = _internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerrorpointerpointer.DecodingErrorPointerPointer;
typedef HeaderFieldPointerPointer = _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfieldpointerpointer.HeaderFieldPointerPointer;
typedef DecoderPointerPointer = _internal.golangdotorg.x.net.http2.hpack.Hpack_decoderpointerpointer.DecoderPointerPointer;
typedef InvalidIndexErrorPointerPointer = _internal.golangdotorg.x.net.http2.hpack.Hpack_invalidindexerrorpointerpointer.InvalidIndexErrorPointerPointer;
/**
    * Package hpack implements HPACK, a compression format for
    * efficiently representing HTTP header fields in the context of HTTP/2.
    * 
    * See http://tools.ietf.org/html/draft-ietf-httpbis-header-compression-09
**/
class Hpack {
    /**
        * NewEncoder returns a new Encoder which performs HPACK encoding. An
        * encoded data is written to w.
    **/
    static public inline function newEncoder(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder> return _internal.golangdotorg.x.net.http2.hpack.Hpack_newencoder.newEncoder(_w);
    /**
        * NewDecoder returns a new decoder with the provided maximum dynamic
        * table size. The emitFunc will be called for each valid field
        * parsed, in the same goroutine as calls to Write, before Write returns.
    **/
    static public inline function newDecoder(_maxDynamicTableSize:stdgo.GoUInt32, _emitFunc:HeaderField -> Void):stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> return _internal.golangdotorg.x.net.http2.hpack.Hpack_newdecoder.newDecoder(_maxDynamicTableSize, _emitFunc);
    /**
        * HuffmanDecode decodes the string in v and writes the expanded
        * result to w, returning the number of bytes written to w and the
        * Write call's return value. At most one Write call is made.
    **/
    static public inline function huffmanDecode(_w:stdgo._internal.io.Io_writer.Writer, _v:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return _internal.golangdotorg.x.net.http2.hpack.Hpack_huffmandecode.huffmanDecode(_w, _v);
    /**
        * HuffmanDecodeToString decodes the string in v.
    **/
    static public inline function huffmanDecodeToString(_v:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return _internal.golangdotorg.x.net.http2.hpack.Hpack_huffmandecodetostring.huffmanDecodeToString(_v);
    /**
        * AppendHuffmanString appends s, as encoded in Huffman codes, to dst
        * and returns the extended buffer.
    **/
    static public inline function appendHuffmanString(_dst:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return _internal.golangdotorg.x.net.http2.hpack.Hpack_appendhuffmanstring.appendHuffmanString(_dst, _s);
    /**
        * HuffmanEncodeLength returns the number of bytes required to encode
        * s in Huffman codes. The result is round up to byte boundary.
    **/
    static public inline function huffmanEncodeLength(_s:stdgo.GoString):stdgo.GoUInt64 return _internal.golangdotorg.x.net.http2.hpack.Hpack_huffmanencodelength.huffmanEncodeLength(_s);
}
