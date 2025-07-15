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
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.T_partReader_asInterface) class T_partReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _pr:stdgo._internal.mime.multipart.Multipart_t_partreader.T_partReader, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _pr:stdgo._internal.mime.multipart.Multipart_t_partreader.T_partReader = _pr?.__copy__();
        var _p = _pr._p;
        var _br = (@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufReader;
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L200"
        while ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n == (0 : stdgo.GoInt)) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) : Bool)) {
            var __tmp__ = _br.peek(_br.buffered()), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            {
                var __tmp__ = stdgo._internal.mime.multipart.Multipart__scanuntilboundary._scanUntilBoundary(_peek, (@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dashBoundary, (@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nlDashBoundary, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._total, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readErr);
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = @:tmpset0 __tmp__._0;
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L203"
            if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n == (0 : stdgo.GoInt)) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) : Bool)) {
                {
                    var __tmp__ = _br.peek(((_peek.length) + (1 : stdgo.GoInt) : stdgo.GoInt));
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readErr = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L206"
                if (({
                    final __t__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readErr;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == (({
                    final __t__ = stdgo._internal.io.Io_eof.eOF;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readErr = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L213"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L214"
            return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
        };
        var _n = @:assignType (_d.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L217"
        if ((_n > (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n : Bool)) {
            _n = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n;
        };
        {
            var __tmp__ = _br.read((_d.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            _n = @:tmpset0 __tmp__._0;
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._total = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._total + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n - (_n) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L223"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L224"
            return { _0 : _n, _1 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L226"
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
}
