package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
@:keep @:allow(stdgo._internal.path.Path.T_lazybuf_asInterface) class T_lazybuf_static_extension {
    @:keep
    @:tdfield
    static public function _string( _b:stdgo.Ref<stdgo._internal.path.Path_t_lazybuf.T_lazybuf>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.path.Path_t_lazybuf.T_lazybuf> = _b;
        //"file:///Users/o/.go/go1.21.3/src/path/path.go#L45"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf == null) {
            //"file:///Users/o/.go/go1.21.3/src/path/path.go#L46"
            return ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.__slice__(0, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/path/path.go#L48"
        return (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _append( _b:stdgo.Ref<stdgo._internal.path.Path_t_lazybuf.T_lazybuf>, _c:stdgo.GoUInt8):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.path.Path_t_lazybuf.T_lazybuf> = _b;
        //"file:///Users/o/.go/go1.21.3/src/path/path.go#L32"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf == null) {
            //"file:///Users/o/.go/go1.21.3/src/path/path.go#L33"
            if ((((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w < ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.length) : Bool) && ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s[((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w : stdgo.GoInt)] == _c) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/path/path.go#L34"
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w++;
                //"file:///Users/o/.go/go1.21.3/src/path/path.go#L35"
                return;
            };
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/path/path.go#L38"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__copyTo__(((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.__slice__(0, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w) : stdgo.GoString));
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w : stdgo.GoInt)] = _c;
        //"file:///Users/o/.go/go1.21.3/src/path/path.go#L41"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w++;
    }
    @:keep
    @:tdfield
    static public function _index( _b:stdgo.Ref<stdgo._internal.path.Path_t_lazybuf.T_lazybuf>, _i:stdgo.GoInt):stdgo.GoUInt8 {
        @:recv var _b:stdgo.Ref<stdgo._internal.path.Path_t_lazybuf.T_lazybuf> = _b;
        //"file:///Users/o/.go/go1.21.3/src/path/path.go#L25"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf != null) {
            //"file:///Users/o/.go/go1.21.3/src/path/path.go#L26"
            return (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(_i : stdgo.GoInt)];
        };
        //"file:///Users/o/.go/go1.21.3/src/path/path.go#L28"
        return (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s[(_i : stdgo.GoInt)];
    }
}
