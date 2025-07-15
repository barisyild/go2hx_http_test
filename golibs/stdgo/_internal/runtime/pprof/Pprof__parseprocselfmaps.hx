package stdgo._internal.runtime.pprof;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.internal.abi.Abi;
function _parseProcSelfMaps(_data:stdgo.Slice<stdgo.GoUInt8>, _addMapping:(stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoUInt64, stdgo.GoString, stdgo.GoString) -> Void):Void {
        var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _next = function():stdgo.Slice<stdgo.GoUInt8> {
            var _f:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_line, stdgo._internal.runtime.pprof.Pprof__space._space);
                _f = @:tmpset0 __tmp__._0;
                _line = @:tmpset0 __tmp__._1;
            };
            _line = stdgo._internal.bytes.Bytes_trimleft.trimLeft(_line, (" " : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L686"
            return _f;
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L689"
        while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_data, stdgo._internal.runtime.pprof.Pprof__newline._newline);
                _line = @:tmpset0 __tmp__._0;
                _data = @:tmpset0 __tmp__._1;
            };
            var _addr = _next();
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_addr : stdgo.GoString)?.__copy__(), ("-" : stdgo.GoString)), _loStr:stdgo.GoString = __tmp__._0, _hiStr:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L693"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L694"
                continue;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_loStr?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt)), _lo:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L697"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L698"
                continue;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_hiStr?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt)), _hi:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L701"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L702"
                continue;
            };
            var _perm = _next();
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L705"
            if ((((_perm.length) < (4 : stdgo.GoInt) : Bool) || (_perm[(2 : stdgo.GoInt)] != (120 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L707"
                continue;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint((_next() : stdgo.GoString)?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt)), _offset:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L710"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L711"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L713"
            _next();
            var _inode = _next();
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L715"
            if (_line == null) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L716"
                continue;
            };
            var _file = @:assignType ((_line : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _deletedStr = @:assignType ((" (deleted)" : stdgo.GoString) : stdgo.GoString);
            var _deletedLen = @:assignType (_deletedStr.length : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L723"
            if ((((_file.length) >= _deletedLen : Bool) && ((_file.__slice__(((_file.length) - _deletedLen : stdgo.GoInt)) : stdgo.GoString) == _deletedStr) : Bool)) {
                _file = (_file.__slice__(0, ((_file.length) - _deletedLen : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L727"
            if ((((_inode.length) == ((1 : stdgo.GoInt)) && _inode[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (_file == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L732"
                continue;
            };
            var __tmp__ = stdgo._internal.runtime.pprof.Pprof__elfbuildid._elfBuildID(_file?.__copy__()), _buildID:stdgo.GoString = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L744"
            _addMapping(_lo, _hi, _offset, _file?.__copy__(), _buildID?.__copy__());
        };
    }
