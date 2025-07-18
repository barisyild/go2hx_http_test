package stdgo._internal.mime.multipart;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.mime.quotedprintable.Quotedprintable;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.mime.Mime;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.T_part_asInterface) class T_part_static_extension {
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_part.T_part>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_part.T_part> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/writer.go#L193"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed) {
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/writer.go#L194"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("multipart: can\'t write to finished part" : stdgo.GoString)) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = (@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(_d);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/writer.go#L197"
        if (_err != null) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._we = _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/writer.go#L200"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _close( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_part.T_part>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_part.T_part> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed = true;
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/writer.go#L189"
        return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._we;
    }
}
