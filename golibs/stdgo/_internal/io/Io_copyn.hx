package stdgo._internal.io;
import stdgo._internal.errors.Errors;
function copyN(_dst:stdgo._internal.io.Io_writer.Writer, _src:stdgo._internal.io.Io_reader.Reader, _n:stdgo.GoInt64):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _written = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy(_dst, stdgo._internal.io.Io_limitreader.limitReader(_src, _n));
            _written = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L366"
        if (_written == (_n)) {
            //"file:///Users/o/.go/go1.21.3/src/io/io.go#L367"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                _written = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L369"
        if (((_written < _n : Bool) && (_err == null) : Bool)) {
            _err = stdgo._internal.io.Io_eof.eOF;
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L373"
        return { _0 : _written, _1 : _err };
    }
