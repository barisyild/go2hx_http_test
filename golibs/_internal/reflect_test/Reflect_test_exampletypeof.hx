package _internal.reflect_test;
function exampleTypeOf():Void {
        var _writerType = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(({
            final __t__ = (null : stdgo.Ref<stdgo._internal.io.Io_writer.Writer>);
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }))).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })).elem() : stdgo._internal.reflect.Reflect_type_.Type_);
        var _fileType = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.os.Os_file.File>), _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile })))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L125"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(_fileType.implements_(_writerType), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
    }
