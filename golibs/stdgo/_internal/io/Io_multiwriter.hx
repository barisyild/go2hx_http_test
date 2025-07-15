package stdgo._internal.io;
import stdgo._internal.errors.Errors;
function multiWriter(_writers:haxe.Rest<stdgo._internal.io.Io_writer.Writer>):stdgo._internal.io.Io_writer.Writer {
        var _writers = new stdgo.Slice<stdgo._internal.io.Io_writer.Writer>(_writers.length, 0, ..._writers);
        var _allWriters = (new stdgo.Slice<stdgo._internal.io.Io_writer.Writer>((0 : stdgo.GoInt).toBasic(), (_writers.length)) : stdgo.Slice<stdgo._internal.io.Io_writer.Writer>);
        //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L129"
        if (_writers != null) for (__3 => _w in _writers) {
            //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L130"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _w;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_t_multiwriterdott_multiwriter.__type__stdgodot_internaldotiodotIo_t_multiwriterdotT_multiWriter })) : stdgo.Ref<stdgo._internal.io.Io_t_multiwriter.T_multiWriter>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_t_multiwriter.T_multiWriter>), _1 : false };
                }, _mw = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _allWriters = (_allWriters.__append__(...((@:checkr _mw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writers : Array<stdgo._internal.io.Io_writer.Writer>)) : stdgo.Slice<stdgo._internal.io.Io_writer.Writer>);
                } else {
                    _allWriters = (_allWriters.__append__(_w) : stdgo.Slice<stdgo._internal.io.Io_writer.Writer>);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L136"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io_t_multiwriter.T_multiWriter(_allWriters) : stdgo._internal.io.Io_t_multiwriter.T_multiWriter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_t_multiwriterdott_multiwriter.__type__stdgodot_internaldotiodotIo_t_multiwriterdotT_multiWriter })) : stdgo.Ref<stdgo._internal.io.Io_t_multiwriter.T_multiWriter>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_t_multiwriterdott_multiwriter.__type__stdgodot_internaldotiodotIo_t_multiwriterdotT_multiWriter }));
    }
