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
function _stat(_name:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } {
        var _mtime = ({} : stdgo._internal.time.Time_time.Time), _size = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_name?.__copy__()), _st:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L85"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L86"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : (0i64 : stdgo.GoInt64), _2 : _err };
                _mtime = __tmp__._0;
                _size = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L88"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.GoInt64; var _2 : stdgo.Error; } = { _0 : _st.modTime()?.__copy__(), _1 : _st.size(), _2 : (null : stdgo.Error) };
            _mtime = __tmp__._0;
            _size = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
