package stdgo._internal.io;
import stdgo._internal.errors.Errors;
function teeReader(_r:stdgo._internal.io.Io_reader.Reader, _w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_reader.Reader {
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L611"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io_t_teereader.T_teeReader(_r, _w) : stdgo._internal.io.Io_t_teereader.T_teeReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_t_teereaderdott_teereader.__type__stdgodot_internaldotiodotIo_t_teereaderdotT_teeReader })) : stdgo.Ref<stdgo._internal.io.Io_t_teereader.T_teeReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_t_teereaderdott_teereader.__type__stdgodot_internaldotiodotIo_t_teereaderdotT_teeReader }));
    }
