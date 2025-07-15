package stdgo._internal.io;
import stdgo._internal.errors.Errors;
function newSectionReader(_r:stdgo._internal.io.Io_readerat.ReaderAt, _off:stdgo.GoInt64, _n:stdgo.GoInt64):stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> {
        var _remaining:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {};
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L490"
        if ((_off <= ((9223372036854775807i64 : stdgo.GoInt64) - _n : stdgo.GoInt64) : Bool)) {
            _remaining = (_n + _off : stdgo.GoInt64);
        } else {
            _remaining = (9223372036854775807i64 : stdgo.GoInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L497"
        return (stdgo.Go.setRef((new stdgo._internal.io.Io_sectionreader.SectionReader(_r, _off, _off, _remaining) : stdgo._internal.io.Io_sectionreader.SectionReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_sectionreaderdotsectionreader.__type__stdgodot_internaldotiodotIo_sectionreaderdotSectionReader })) : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
    }
