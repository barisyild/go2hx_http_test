package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.io.fs.Fs.PathError_asInterface) class PathError_static_extension {
    @:keep
    @:tdfield
    static public function timeout( _e:stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError> = _e;
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("timeout", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })])) : stdgo._internal.io.fs.Fs_t__interface_4.T__interface_4), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.io.fs.Fs_t__interface_4.T__interface_4), _1 : false };
        }, _t = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/fs.go#L257"
        return (_ok && _t.timeout() : Bool);
    }
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/fs.go#L252"
        return (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/fs.go#L250"
        return (((((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
