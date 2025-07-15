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
@:keep @:allow(stdgo._internal.net.Net.T_pipe_asInterface) class T_pipe_static_extension {
    @:keep
    @:tdfield
    static public function close( _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L236"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._once.do_(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L236"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._localDone != null) (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._localDone.__close__();
        });
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L237"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setWriteDeadline( _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L228"
        if ((stdgo._internal.net.Net__isclosedchan._isClosedChan((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._localDone) || stdgo._internal.net.Net__isclosedchan._isClosedChan((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remoteDone) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L229"
            return stdgo._internal.io.Io_errclosedpipe.errClosedPipe;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L231"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeDeadline._set(_t?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L232"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setReadDeadline( _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L220"
        if ((stdgo._internal.net.Net__isclosedchan._isClosedChan((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._localDone) || stdgo._internal.net.Net__isclosedchan._isClosedChan((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remoteDone) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L221"
            return stdgo._internal.io.Io_errclosedpipe.errClosedPipe;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L223"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readDeadline._set(_t?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L224"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setDeadline( _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L211"
        if ((stdgo._internal.net.Net__isclosedchan._isClosedChan((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._localDone) || stdgo._internal.net.Net__isclosedchan._isClosedChan((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remoteDone) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L212"
            return stdgo._internal.io.Io_errclosedpipe.errClosedPipe;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L214"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readDeadline._set(_t?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L215"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeDeadline._set(_t?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L216"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _write( _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L182"
            if (stdgo._internal.net.Net__isclosedchan._isClosedChan((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._localDone)) {
                //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L184"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_errclosedpipe.errClosedPipe };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (stdgo._internal.net.Net__isclosedchan._isClosedChan((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remoteDone)) {
                //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L186"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_errclosedpipe.errClosedPipe };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (stdgo._internal.net.Net__isclosedchan._isClosedChan((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeDeadline._wait())) {
                //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L188"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.os.Os_errdeadlineexceeded.errDeadlineExceeded };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L191"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrMu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L193"
            {
                var _once = @:assignType (true : Bool);
                while ((_once || ((_b.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L194"
                    {
                        var __select__ = true;
                        var __c__0 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrTx;
var __c__1 = null;
var __c__2 = null;
var __c__3 = null;
                        while (__select__) {
                            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrTx != null && __c__0.__isSend__(true)) {
                                __select__ = false;
                                {
                                    __c__0.__send__(_b);
                                    {
                                        var _nw = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrRx.__get__() : stdgo.GoInt);
                                        _b = (_b.__slice__(_nw) : stdgo.Slice<stdgo.GoUInt8>);
                                        _n = (_n + (_nw) : stdgo.GoInt);
                                    };
                                };
                            } else if ({
                                if (__c__1 == null) {
                                    __c__1 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._localDone;
                                };
                                __c__1 != null && __c__1.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__1.__get__();
                                    {
                                        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L200"
                                        {
                                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.io.Io_errclosedpipe.errClosedPipe };
                                                _n = __tmp__._0;
                                                _err = __tmp__._1;
                                                __tmp__;
                                            };
                                            _n = __ret__._0;
                                            _err = __ret__._1;
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                            } else if ({
                                if (__c__2 == null) {
                                    __c__2 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remoteDone;
                                };
                                __c__2 != null && __c__2.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__2.__get__();
                                    {
                                        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L202"
                                        {
                                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.io.Io_errclosedpipe.errClosedPipe };
                                                _n = __tmp__._0;
                                                _err = __tmp__._1;
                                                __tmp__;
                                            };
                                            _n = __ret__._0;
                                            _err = __ret__._1;
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                            } else if ({
                                if (__c__3 == null) {
                                    __c__3 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeDeadline._wait();
                                };
                                __c__3 != null && __c__3.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__3.__get__();
                                    {
                                        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L204"
                                        {
                                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.os.Os_errdeadlineexceeded.errDeadlineExceeded };
                                                _n = __tmp__._0;
                                                _err = __tmp__._1;
                                                __tmp__;
                                            };
                                            _n = __ret__._0;
                                            _err = __ret__._1;
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                            };
                            #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                        __c__0.__reset__();
__c__1.__reset__();
__c__2.__reset__();
__c__3.__reset__();
                    };
                    _once = false;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L207"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _n = __ret__._0;
                _err = __ret__._1;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : _n, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : _n, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe> = _p;
        var __tmp__ = _p._write(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L175"
        if (((_err != null) && (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) != ({
            final __t__ = stdgo._internal.io.Io_errclosedpipe.errClosedPipe;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })) : Bool)) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : ("pipe" : stdgo.GoString), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L178"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _read( _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L150"
        if (stdgo._internal.net.Net__isclosedchan._isClosedChan((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._localDone)) {
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L152"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_errclosedpipe.errClosedPipe };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (stdgo._internal.net.Net__isclosedchan._isClosedChan((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remoteDone)) {
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L154"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (stdgo._internal.net.Net__isclosedchan._isClosedChan((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readDeadline._wait())) {
            //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L156"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.os.Os_errdeadlineexceeded.errDeadlineExceeded };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L159"
        {
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
var __c__3 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdRx;
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            var _bw = __c__0.__get__();
                            {
                                var _nr = @:assignType (_b.__copyTo__(_bw) : stdgo.GoInt);
                                //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L162"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdTx.__send__(_nr);
                                //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L163"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _nr, _1 : (null : stdgo.Error) };
                                    _n = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._localDone;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L165"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_errclosedpipe.errClosedPipe };
                                    _n = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    } else if ({
                        if (__c__2 == null) {
                            __c__2 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remoteDone;
                        };
                        __c__2 != null && __c__2.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__2.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L167"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                                    _n = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    } else if ({
                        if (__c__3 == null) {
                            __c__3 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readDeadline._wait();
                        };
                        __c__3 != null && __c__3.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__3.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L169"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.os.Os_errdeadlineexceeded.errDeadlineExceeded };
                                    _n = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
__c__2.__reset__();
__c__3.__reset__();
            };
            return { _0 : _n, _1 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function read( _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe> = _p;
        var __tmp__ = _p._read(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L143"
        if (((_err != null && ({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) != (({
            final __t__ = stdgo._internal.io.Io_eof.eOF;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })) : Bool) && (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) != ({
            final __t__ = stdgo._internal.io.Io_errclosedpipe.errClosedPipe;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })) : Bool)) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), net : ("pipe" : stdgo.GoString), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L146"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function remoteAddr( _:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>):stdgo._internal.net.Net_addr.Addr {
        @:recv var _:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe> = _;
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L139"
        return stdgo.Go.asInterface((new stdgo._internal.net.Net_t_pipeaddr.T_pipeAddr() : stdgo._internal.net.Net_t_pipeaddr.T_pipeAddr), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_pipeaddrdott_pipeaddr.__type__stdgodot_internaldotnetdotNet_t_pipeaddrdotT_pipeAddr);
    }
    @:keep
    @:tdfield
    static public function localAddr( _:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe>):stdgo._internal.net.Net_addr.Addr {
        @:recv var _:stdgo.Ref<stdgo._internal.net.Net_t_pipe.T_pipe> = _;
        //"file:///Users/o/.go/go1.21.3/src/net/pipe.go#L138"
        return stdgo.Go.asInterface((new stdgo._internal.net.Net_t_pipeaddr.T_pipeAddr() : stdgo._internal.net.Net_t_pipeaddr.T_pipeAddr), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_pipeaddrdott_pipeaddr.__type__stdgodot_internaldotnetdotNet_t_pipeaddrdotT_pipeAddr);
    }
}
