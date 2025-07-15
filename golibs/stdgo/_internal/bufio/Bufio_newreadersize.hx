package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
function newReaderSize(_rd:stdgo._internal.io.Io_reader.Reader, _size:stdgo.GoInt):stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> {
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _rd;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader })) : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>), _1 : false };
        }, _b = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/bufio/bufio.go#L50"
        if ((_ok && (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) >= _size : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bufio/bufio.go#L51"
            return _b;
        };
        //"file:///Users/o/.go/go1.21.3/src/bufio/bufio.go#L53"
        if ((_size < (16 : stdgo.GoInt) : Bool)) {
            _size = (16 : stdgo.GoInt);
        };
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.bufio.Bufio_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader })) : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        //"file:///Users/o/.go/go1.21.3/src/bufio/bufio.go#L57"
        _r._reset((new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _rd);
        //"file:///Users/o/.go/go1.21.3/src/bufio/bufio.go#L58"
        return _r;
    }
