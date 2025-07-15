package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function newWriter(_w:stdgo._internal.io.Io_writer.Writer, _t:_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer):stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_writer.Writer> {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L222"
        _t.reset();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L223"
        return (stdgo.Go.setRef(({ _w : _w, _t : _t, _dst : (new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _src : (new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.golangdotorg.x.text.transform.Transform_writer.Writer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdottransformdottransform_writerdotwriter.__type___internaldotgolangdotorgdotxdottextdottransformdotTransform_writerdotWriter })) : stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_writer.Writer>);
    }
