package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function newReader(_r:stdgo._internal.io.Io_reader.Reader, _t:_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer):stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_reader.Reader> {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L135"
        _t.reset();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L136"
        return (stdgo.Go.setRef(({ _r : _r, _t : _t, _dst : (new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _src : (new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.golangdotorg.x.text.transform.Transform_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdottransformdottransform_readerdotreader.__type___internaldotgolangdotorgdotxdottextdottransformdotTransform_readerdotReader })) : stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_reader.Reader>);
    }
