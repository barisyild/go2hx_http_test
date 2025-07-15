package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _getStringWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_stringwriter.StringWriter {
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
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L324"
        if (!_ok) {
            _sw = stdgo.Go.asInterface((new stdgo._internal.strings.Strings_t_stringwriter.T_stringWriter(_w) : stdgo._internal.strings.Strings_t_stringwriter.T_stringWriter), _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_stringwriterdott_stringwriter.__type__stdgodot_internaldotstringsdotStrings_t_stringwriterdotT_stringWriter);
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L327"
        return _sw;
    }
