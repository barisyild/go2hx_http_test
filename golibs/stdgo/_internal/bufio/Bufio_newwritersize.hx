package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
function newWriterSize(_w:stdgo._internal.io.Io_writer.Writer, _size:stdgo.GoInt):stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> {
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _w;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter })) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>), _1 : false };
        }, _b = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/bufio/bufio.go#L592"
        if ((_ok && (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) >= _size : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bufio/bufio.go#L593"
            return _b;
        };
        //"file:///Users/o/.go/go1.21.3/src/bufio/bufio.go#L595"
        if ((_size <= (0 : stdgo.GoInt) : Bool)) {
            _size = (4096 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/bufio/bufio.go#L598"
        return (stdgo.Go.setRef(({ _buf : (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _wr : _w } : stdgo._internal.bufio.Bufio_writer.Writer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter })) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    }
