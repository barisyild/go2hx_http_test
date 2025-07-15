package stdgo._internal.net.http.internal;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.net.http.internal.Internal.T_chunkedWriter_asInterface) class T_chunkedWriter_static_extension {
    @:keep
    @:tdfield
    static public function close( _cw:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedwriter.T_chunkedWriter>):stdgo.Error {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedwriter.T_chunkedWriter> = _cw;
        var __tmp__ = stdgo._internal.io.Io_writestring.writeString((@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wire, ("0\r\n" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L231"
        return _err;
    }
    @:keep
    @:tdfield
    static public function write( _cw:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedwriter.T_chunkedWriter>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedwriter.T_chunkedWriter> = _cw;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L206"
        if ((_data.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L207"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L210"
        {
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wire, ("%x\r\n" : stdgo.GoString), new stdgo.AnyInterface((_data.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L211"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L213"
        {
            {
                var __tmp__ = (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wire.write(_data);
                _n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L214"
                return { _0 : _n, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L216"
        if (_n != ((_data.length))) {
            _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
            //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L218"
            return { _0 : _n, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L220"
        {
            {
                var __tmp__ = stdgo._internal.io.Io_writestring.writeString((@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wire, ("\r\n" : stdgo.GoString));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L221"
                return { _0 : _n, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L223"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wire;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdotinternaldotinternal_flushafterchunkwriterdotflushafterchunkwriter.__type__stdgodot_internaldotnetdothttpdotinternaldotInternal_flushafterchunkwriterdotFlushAfterChunkWriter })) : stdgo.Ref<stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter>), _1 : false };
            }, _bw = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _err = _bw.flush();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L226"
        return { _0 : _n, _1 : _err };
    }
}
