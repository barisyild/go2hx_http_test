package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _loadTzinfoFromZip(_zipfile:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.time.Time__open._open(_zipfile?.__copy__()), _fd:stdgo.GoUIntptr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L403"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L404"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            {
                var _a0 = _fd;
                final __f__ = stdgo._internal.time.Time__closefd._closefd;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            {};
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((22 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L418"
            {
                var _err = @:assignType (stdgo._internal.time.Time__preadn._preadn(_fd, _buf, (-22 : stdgo.GoInt)) : stdgo.Error);
                if (((_err != null) || (stdgo._internal.time.Time__get4._get4(_buf) != (101010256 : stdgo.GoInt)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L419"
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("corrupt zip file " : stdgo.GoString) + _zipfile?.__copy__() : stdgo.GoString)?.__copy__()) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            var _n = @:assignType (stdgo._internal.time.Time__get2._get2((_buf.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            var _size = @:assignType (stdgo._internal.time.Time__get4._get4((_buf.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            var _off = @:assignType (stdgo._internal.time.Time__get4._get4((_buf.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L426"
            {
                var _err = @:assignType (stdgo._internal.time.Time__preadn._preadn(_fd, _buf, _off) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L427"
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("corrupt zip file " : stdgo.GoString) + _zipfile?.__copy__() : stdgo.GoString)?.__copy__()) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L430"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L454"
                    if (stdgo._internal.time.Time__get4._get4(_buf) != ((33639248 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L455"
                        break;
                    };
var _meth = @:assignType (stdgo._internal.time.Time__get2._get2((_buf.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
var _size = @:assignType (stdgo._internal.time.Time__get4._get4((_buf.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
var _namelen = @:assignType (stdgo._internal.time.Time__get2._get2((_buf.__slice__((28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
var _xlen = @:assignType (stdgo._internal.time.Time__get2._get2((_buf.__slice__((30 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
var _fclen = @:assignType (stdgo._internal.time.Time__get2._get2((_buf.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
var _off = @:assignType (stdgo._internal.time.Time__get4._get4((_buf.__slice__((42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
var _zname = (_buf.__slice__((46 : stdgo.GoInt), ((46 : stdgo.GoInt) + _namelen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
_buf = (_buf.__slice__(((((46 : stdgo.GoInt) + _namelen : stdgo.GoInt) + _xlen : stdgo.GoInt) + _fclen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L465"
                    if ((_zname : stdgo.GoString) != (_name)) {
                        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L466"
                        {
                            _i++;
                            continue;
                        };
                    };
//"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L468"
                    if (_meth != ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L469"
                        {
                            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((((("unsupported compression for " : stdgo.GoString) + _name.__copy__() : stdgo.GoString) + (" in " : stdgo.GoString).__copy__() : stdgo.GoString) + _zipfile.__copy__() : stdgo.GoString).__copy__()) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
_buf = (new stdgo.Slice<stdgo.GoUInt8>(((30 : stdgo.GoInt) + _namelen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
//"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L489"
                    {
                        var _err = @:assignType (stdgo._internal.time.Time__preadn._preadn(_fd, _buf, _off) : stdgo.Error);
                        if (((((_err != null || stdgo._internal.time.Time__get4._get4(_buf) != ((67324752 : stdgo.GoInt)) : Bool) || stdgo._internal.time.Time__get2._get2((_buf.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) != (_meth) : Bool) || stdgo._internal.time.Time__get2._get2((_buf.__slice__((26 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) != (_namelen) : Bool) || (((_buf.__slice__((30 : stdgo.GoInt), ((30 : stdgo.GoInt) + _namelen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != _name) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L494"
                            {
                                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("corrupt zip file " : stdgo.GoString) + _zipfile.__copy__() : stdgo.GoString).__copy__()) };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
_xlen = stdgo._internal.time.Time__get2._get2((_buf.__slice__((28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
_buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
//"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L499"
                    {
                        var _err = @:assignType (stdgo._internal.time.Time__preadn._preadn(_fd, _buf, (((_off + (30 : stdgo.GoInt) : stdgo.GoInt) + _namelen : stdgo.GoInt) + _xlen : stdgo.GoInt)) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L500"
                            {
                                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("corrupt zip file " : stdgo.GoString) + _zipfile.__copy__() : stdgo.GoString).__copy__()) };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
//"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L503"
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _buf, _1 : (null : stdgo.Error) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L506"
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(2) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
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
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            };
        };
    }
