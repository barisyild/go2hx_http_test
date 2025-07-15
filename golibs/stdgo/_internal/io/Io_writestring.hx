package stdgo._internal.io;
import stdgo._internal.errors.Errors;
function writeString(_w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L315"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _w;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_stringwriterdotstringwriter.__type__stdgodot_internaldotiodotIo_stringwriterdotStringWriter) : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : false };
            }, _sw = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L316"
                return _sw.writeString(_s?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L318"
        return _w.write((_s : stdgo.Slice<stdgo.GoUInt8>));
    }
