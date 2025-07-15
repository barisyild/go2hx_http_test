package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:keep class Transformer_static_extension {
    @:interfacetypeffun
    static public function reset(t:_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer):Void t.reset();
    @:interfacetypeffun
    static public function transform(t:_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return t.transform(_dst, _src, _atEOF);
}
