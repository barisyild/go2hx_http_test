package _internal.fmt_test;
function exampleSprintf():Void {
        {};
        var _s = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s is %d years old.\n" : stdgo.GoString), new stdgo.AnyInterface(("Kim" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((22 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/fmt/example_test.go#L136"
        stdgo._internal.io.Io_writestring.writeString(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile })), _s?.__copy__());
    }
