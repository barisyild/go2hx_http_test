package stdgo._internal.io;
import stdgo._internal.errors.Errors;
function nopCloser(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_readcloser.ReadCloser {
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L675"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _r;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writertodotwriterto.__type__stdgodot_internaldotiodotIo_writertodotWriterTo) : stdgo._internal.io.Io_writerto.WriterTo), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.io.Io_writerto.WriterTo), _1 : false };
            }, __3 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L676"
                return stdgo.Go.asInterface((new stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo(_r) : stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_t_nopcloserwritertodott_nopcloserwriterto.__type__stdgodot_internaldotiodotIo_t_nopcloserwritertodotT_nopCloserWriterTo);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L678"
        return stdgo.Go.asInterface((new stdgo._internal.io.Io_t_nopcloser.T_nopCloser(_r) : stdgo._internal.io.Io_t_nopcloser.T_nopCloser), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_t_nopcloserdott_nopcloser.__type__stdgodot_internaldotiodotIo_t_nopcloserdotT_nopCloser);
    }
