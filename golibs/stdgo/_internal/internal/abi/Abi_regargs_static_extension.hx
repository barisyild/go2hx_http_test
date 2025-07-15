package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.internal.abi.Abi.RegArgs_asInterface) class RegArgs_static_extension {
    @:keep
    @:tdfield
    static public function intRegArgAddr( _r:stdgo.Ref<stdgo._internal.internal.abi.Abi_regargs.RegArgs>, _reg:stdgo.GoInt, _argSize:stdgo.GoUIntptr):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.abi.Abi_regargs.RegArgs> = _r;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L75"
        if ((((_argSize > (new stdgo.GoUIntptr(4) : stdgo.GoUIntptr) : Bool) || _argSize == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : Bool) || ((_argSize & ((_argSize - (new stdgo.GoUIntptr(1) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr) != (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L76"
            throw new stdgo.AnyInterface(("invalid argSize" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _offset = @:assignType ((new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L79"
        if (false) {
            _offset = ((new stdgo.GoUIntptr(4) : stdgo.GoUIntptr) - _argSize : stdgo.GoUIntptr);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L82"
        return (new stdgo.AnyInterface(((new stdgo.GoUIntptr((new stdgo.AnyInterface(stdgo.Go.pointer((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).ints[(_reg : stdgo.GoInt)]), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr) + _offset : stdgo.GoUIntptr), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
    }
    @:keep
    @:tdfield
    static public function dump( _r:stdgo.Ref<stdgo._internal.internal.abi.Abi_regargs.RegArgs>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.abi.Abi_regargs.RegArgs> = _r;
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L48"
        stdgo.Go.print(("Ints:" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L49"
        for (__0 => _x in (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).ints.__copy__()) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L50"
            stdgo.Go.print((" " : stdgo.GoString), _x);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L52"
        stdgo.Go.println("");
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L53"
        stdgo.Go.print(("Floats:" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L54"
        for (__1 => _x in (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).floats.__copy__()) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L55"
            stdgo.Go.print((" " : stdgo.GoString), @:privateAccess ((_x).toBasic() : haxe.UInt64).toString());
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L57"
        stdgo.Go.println("");
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L58"
        stdgo.Go.print(("Ptrs:" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L59"
        for (__2 => _x in (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).ptrs.__copy__()) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L60"
            stdgo.Go.print((" " : stdgo.GoString), _x);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/abi.go#L62"
        stdgo.Go.println("");
    }
}
