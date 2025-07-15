package stdgo._internal.io;
import stdgo._internal.errors.Errors;
function multiReader(_readers:haxe.Rest<stdgo._internal.io.Io_reader.Reader>):stdgo._internal.io.Io_reader.Reader {
        var _readers = new stdgo.Slice<stdgo._internal.io.Io_reader.Reader>(_readers.length, 0, ..._readers);
        var _r = (new stdgo.Slice<stdgo._internal.io.Io_reader.Reader>((_readers.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.io.Io_reader.Reader>);
        //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L75"
        _r.__copyTo__(_readers);
        //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L76"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io_t_multireader.T_multiReader(_r) : stdgo._internal.io.Io_t_multireader.T_multiReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_t_multireaderdott_multireader.__type__stdgodot_internaldotiodotIo_t_multireaderdotT_multiReader })) : stdgo.Ref<stdgo._internal.io.Io_t_multireader.T_multiReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_t_multireaderdott_multireader.__type__stdgodot_internaldotiodotIo_t_multireaderdotT_multiReader }));
    }
