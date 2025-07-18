package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_buffer_asInterface) class T_buffer_static_extension {
    @:keep
    @:tdfield
    static public function _writeRune( _bp:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>, _r:stdgo.GoInt32):Void {
        @:recv var _bp:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer> = _bp;
        @:_1 (_bp : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__setData__(stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune((_bp : stdgo._internal.fmt.Fmt_t_buffer.T_buffer), _r));
    }
    @:keep
    @:tdfield
    static public function _writeByte( _b:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>, _c:stdgo.GoUInt8):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer> = _b;
        @:_1 (_b : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__setData__(((_b : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__append__(_c) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer));
    }
    @:keep
    @:tdfield
    static public function _writeString( _b:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>, _s:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer> = _b;
        @:_1 (_b : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__setData__(((_b : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__append__(...(_s : Array<stdgo.GoUInt8>)) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer));
    }
    @:keep
    @:tdfield
    static public function _write( _b:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer> = _b;
        @:_1 (_b : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__setData__(((_b : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__append__(...(_p : Array<stdgo.GoUInt8>)) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer));
    }
}
