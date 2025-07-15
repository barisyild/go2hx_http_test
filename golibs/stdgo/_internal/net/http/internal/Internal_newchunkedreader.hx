package stdgo._internal.net.http.internal;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
function newChunkedReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _r;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader })) : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>), _1 : false };
        }, _br = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L31"
        if (!_ok) {
            _br = stdgo._internal.bufio.Bufio_newreader.newReader(_r);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L34"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _br } : stdgo._internal.net.http.internal.Internal_t_chunkedreader.T_chunkedReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdotinternaldotinternal_t_chunkedreaderdott_chunkedreader.__type__stdgodot_internaldotnetdothttpdotinternaldotInternal_t_chunkedreaderdotT_chunkedReader })) : stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedreader.T_chunkedReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdotinternaldotinternal_t_chunkedreaderdott_chunkedreader.__type__stdgodot_internaldotnetdothttpdotinternaldotInternal_t_chunkedreaderdotT_chunkedReader }));
    }
