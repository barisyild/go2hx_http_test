package stdgo._internal.io;
import stdgo._internal.errors.Errors;
function limitReader(_r:stdgo._internal.io.Io_reader.Reader, _n:stdgo.GoInt64):stdgo._internal.io.Io_reader.Reader {
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L462"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io_limitedreader.LimitedReader(_r, _n) : stdgo._internal.io.Io_limitedreader.LimitedReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_limitedreaderdotlimitedreader.__type__stdgodot_internaldotiodotIo_limitedreaderdotLimitedReader })) : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_limitedreaderdotlimitedreader.__type__stdgodot_internaldotiodotIo_limitedreaderdotLimitedReader }));
    }
