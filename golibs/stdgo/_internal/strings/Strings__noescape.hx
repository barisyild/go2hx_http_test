package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _noescape(_p:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        var _x = @:assignType ((new stdgo.GoUIntptr(_p) : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        //"file:///Users/o/.go/go1.21.3/src/strings/builder.go#L31"
        return (new stdgo.AnyInterface((_x ^ (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr) : stdgo.GoUIntptr), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
    }
