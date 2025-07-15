package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:keep class SpanningTransformer_static_extension {
    @:interfacetypeffun
    static public function span(t:_internal.golangdotorg.x.text.transform.Transform_spanningtransformer.SpanningTransformer, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.span(_src, _atEOF);
}
