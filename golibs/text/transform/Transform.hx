package text.transform;
var errShortDst(get, set) : stdgo.Error;
private function get_errShortDst():stdgo.Error return _internal.golangdotorg.x.text.transform.Transform_errshortdst.errShortDst;
private function set_errShortDst(v:stdgo.Error):stdgo.Error {
    _internal.golangdotorg.x.text.transform.Transform_errshortdst.errShortDst = v;
    return v;
}
var errShortSrc(get, set) : stdgo.Error;
private function get_errShortSrc():stdgo.Error return _internal.golangdotorg.x.text.transform.Transform_errshortsrc.errShortSrc;
private function set_errShortSrc(v:stdgo.Error):stdgo.Error {
    _internal.golangdotorg.x.text.transform.Transform_errshortsrc.errShortSrc = v;
    return v;
}
var errEndOfSpan(get, set) : stdgo.Error;
private function get_errEndOfSpan():stdgo.Error return _internal.golangdotorg.x.text.transform.Transform_errendofspan.errEndOfSpan;
private function set_errEndOfSpan(v:stdgo.Error):stdgo.Error {
    _internal.golangdotorg.x.text.transform.Transform_errendofspan.errEndOfSpan = v;
    return v;
}
var discard(get, set) : Transformer;
private function get_discard():Transformer return _internal.golangdotorg.x.text.transform.Transform_discard.discard;
private function set_discard(v:Transformer):_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer {
    _internal.golangdotorg.x.text.transform.Transform_discard.discard = v;
    return v;
}
var nop(get, set) : SpanningTransformer;
private function get_nop():SpanningTransformer return _internal.golangdotorg.x.text.transform.Transform_nop.nop;
private function set_nop(v:SpanningTransformer):_internal.golangdotorg.x.text.transform.Transform_spanningtransformer.SpanningTransformer {
    _internal.golangdotorg.x.text.transform.Transform_nop.nop = v;
    return v;
}
typedef Transformer = _internal.golangdotorg.x.text.transform.Transform_transformer.Transformer;
typedef SpanningTransformer = _internal.golangdotorg.x.text.transform.Transform_spanningtransformer.SpanningTransformer;
typedef NopResetter = _internal.golangdotorg.x.text.transform.Transform_nopresetter.NopResetter;
typedef Reader = _internal.golangdotorg.x.text.transform.Transform_reader.Reader;
typedef Writer = _internal.golangdotorg.x.text.transform.Transform_writer.Writer;
typedef NopResetterPointer = _internal.golangdotorg.x.text.transform.Transform_nopresetterpointer.NopResetterPointer;
typedef ReaderPointer = _internal.golangdotorg.x.text.transform.Transform_readerpointer.ReaderPointer;
typedef WriterPointer = _internal.golangdotorg.x.text.transform.Transform_writerpointer.WriterPointer;
typedef NopResetterPointerPointer = _internal.golangdotorg.x.text.transform.Transform_nopresetterpointerpointer.NopResetterPointerPointer;
typedef ReaderPointerPointer = _internal.golangdotorg.x.text.transform.Transform_readerpointerpointer.ReaderPointerPointer;
typedef WriterPointerPointer = _internal.golangdotorg.x.text.transform.Transform_writerpointerpointer.WriterPointerPointer;
/**
    * Package transform provides reader and writer wrappers that transform the
    * bytes passing through as well as various transformations. Example
    * transformations provided by other packages include normalization and
    * conversion between character sets.
**/
class Transform {
    /**
        * NewReader returns a new Reader that wraps r by transforming the bytes read
        * via t. It calls Reset on t.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_reader.Reader, _t:Transformer):stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_reader.Reader> return _internal.golangdotorg.x.text.transform.Transform_newreader.newReader(_r, _t);
    /**
        * NewWriter returns a new Writer that wraps w by transforming the bytes written
        * via t. It calls Reset on t.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer, _t:Transformer):stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_writer.Writer> return _internal.golangdotorg.x.text.transform.Transform_newwriter.newWriter(_w, _t);
    /**
        * Chain returns a Transformer that applies t in sequence.
    **/
    static public inline function chain(_t:haxe.Rest<Transformer>):_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer return _internal.golangdotorg.x.text.transform.Transform_chain.chain(...[for (i in _t) i]);
    /**
        * Deprecated: Use runes.Remove instead.
    **/
    static public inline function removeFunc(_f:stdgo.GoInt32 -> Bool):_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer return _internal.golangdotorg.x.text.transform.Transform_removefunc.removeFunc(_f);
    /**
        * String returns a string with the result of converting s[:n] using t, where
        * n <= len(s). If err == nil, n will be len(s). It calls Reset on t.
    **/
    static public inline function string(_t:Transformer, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return _internal.golangdotorg.x.text.transform.Transform_string.string(_t, _s);
    /**
        * Bytes returns a new byte slice with the result of converting b[:n] using t,
        * where n <= len(b). If err == nil, n will be len(b). It calls Reset on t.
    **/
    static public inline function bytes(_t:Transformer, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return _internal.golangdotorg.x.text.transform.Transform_bytes.bytes(_t, _b);
    /**
        * Append appends the result of converting src[:n] using t to dst, where
        * n <= len(src), If err == nil, n will be len(src). It calls Reset on t.
    **/
    static public inline function append(_t:Transformer, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return _internal.golangdotorg.x.text.transform.Transform_append.append(_t, _dst, _src);
}
