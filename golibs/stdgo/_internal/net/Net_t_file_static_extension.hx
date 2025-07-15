package stdgo._internal.net;
import stdgo._internal.net.netip.Netip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.os.Os;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.internal.poll.Poll;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.Io;
import stdgo._internal.sync.atomic_.Atomic_;
import _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.net.Net.T_file_asInterface) class T_file_static_extension {
    @:keep
    @:tdfield
    static public function _stat( _f:stdgo.Ref<stdgo._internal.net.Net_t_file.T_file>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.Net_t_file.T_file> = _f;
        var _mtime = ({} : stdgo._internal.time.Time_time.Time), _size = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        var __tmp__ = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.stat(), _st:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L69"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L70"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : (0i64 : stdgo.GoInt64), _2 : _err };
                _mtime = __tmp__._0;
                _size = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L72"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : _st.modTime()?.__copy__(), _1 : _st.size(), _2 : (null : stdgo.Error) };
            _mtime = __tmp__._0;
            _size = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _readLine( _f:stdgo.Ref<stdgo._internal.net.Net_t_file.T_file>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.Net_t_file.T_file> = _f;
        var _s = ("" : stdgo.GoString), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L50"
        {
            {
                var __tmp__ = _f._getLineFromData();
                _s = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L51"
                return { _0 : _s, _1 : _ok };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L53"
        if ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.length) < (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.capacity : Bool)) {
            var _ln = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.length : stdgo.GoInt);
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(stdgo.Go.asInterface((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile })), ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.__slice__(_ln, (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.capacity) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L56"
            if ((_n >= (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.__slice__((0 : stdgo.GoInt), (_ln + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L59"
            if (((({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == ({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) || (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == ({
                final __t__ = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) : Bool)) {
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._atEOF = true;
            };
        };
        {
            var __tmp__ = _f._getLineFromData();
            _s = @:tmpset0 __tmp__._0?.__copy__();
            _ok = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L64"
        return { _0 : _s, _1 : _ok };
    }
    @:keep
    @:tdfield
    static public function _getLineFromData( _f:stdgo.Ref<stdgo._internal.net.Net_t_file.T_file>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.Net_t_file.T_file> = _f;
        var _s = ("" : stdgo.GoString), _ok = false;
        var _data = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data;
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L28"
        {
            _i = (0 : stdgo.GoInt);
            while ((_i < (_data.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L29"
                if (_data[(_i : stdgo.GoInt)] == ((10 : stdgo.GoUInt8))) {
                    _s = ((_data.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString).__copy__();
                    _ok = true;
                    //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L33"
                    _i++;
                    var _n = @:assignType ((_data.length) - _i : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L35"
                    (_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_data.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data = (_data.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L37"
                    return { _0 : _s, _1 : _ok };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L40"
        if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._atEOF && (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _s = (_data : stdgo.GoString)?.__copy__();
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _ok = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L46"
        return { _0 : _s, _1 : _ok };
    }
    @:keep
    @:tdfield
    static public function _close( _f:stdgo.Ref<stdgo._internal.net.Net_t_file.T_file>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.Net_t_file.T_file> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L23"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.close();
    }
}
