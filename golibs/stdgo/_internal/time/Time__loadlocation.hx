package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _loadLocation(_name:stdgo.GoString, _sources:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.time.Time_location.Location>; var _1 : stdgo.Error; } {
        var _z = (null : stdgo.Ref<stdgo._internal.time.Time_location.Location>), _firstErr = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L530"
        if (_sources != null) for (__1 => _source in _sources) {
            var __tmp__ = stdgo._internal.time.Time__loadtzinfo._loadTzinfo(_name?.__copy__(), _source?.__copy__()), _zoneData:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L532"
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L533"
                {
                    {
                        var __tmp__ = stdgo._internal.time.Time_loadlocationfromtzdata.loadLocationFromTZData(_name?.__copy__(), _zoneData);
                        _z = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err == null) {
                        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L534"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.time.Time_location.Location>; var _1 : stdgo.Error; } = { _0 : _z, _1 : (null : stdgo.Error) };
                            _z = __tmp__._0;
                            _firstErr = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L537"
            if (((_firstErr == null) && (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo.GoUIntptr(2) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno))) : Bool)) {
                _firstErr = _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L541"
        if (stdgo._internal.time.Time__loadfromembeddedtzdata._loadFromEmbeddedTZData != null) {
            var __tmp__ = stdgo._internal.time.Time__loadfromembeddedtzdata._loadFromEmbeddedTZData(_name?.__copy__()), _zoneData:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L543"
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L544"
                {
                    {
                        var __tmp__ = stdgo._internal.time.Time_loadlocationfromtzdata.loadLocationFromTZData(_name?.__copy__(), (_zoneData : stdgo.Slice<stdgo.GoUInt8>));
                        _z = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err == null) {
                        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L545"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.time.Time_location.Location>; var _1 : stdgo.Error; } = { _0 : _z, _1 : (null : stdgo.Error) };
                            _z = __tmp__._0;
                            _firstErr = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L548"
            if (((_firstErr == null) && (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo.GoUIntptr(2) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno))) : Bool)) {
                _firstErr = _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L552"
        {
            var __tmp__ = stdgo._internal.time.Time__gorootzonesource._gorootZoneSource(stdgo._internal.runtime.Runtime_goroot.gOROOT()?.__copy__()), _source:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                var __tmp__ = stdgo._internal.time.Time__loadtzinfo._loadTzinfo(_name?.__copy__(), _source?.__copy__()), _zoneData:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L554"
                if (_err == null) {
                    //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L555"
                    {
                        {
                            var __tmp__ = stdgo._internal.time.Time_loadlocationfromtzdata.loadLocationFromTZData(_name?.__copy__(), _zoneData);
                            _z = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err == null) {
                            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L556"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.time.Time_location.Location>; var _1 : stdgo.Error; } = { _0 : _z, _1 : (null : stdgo.Error) };
                                _z = __tmp__._0;
                                _firstErr = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L559"
                if (((_firstErr == null) && (({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) != new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo.GoUIntptr(2) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno))) : Bool)) {
                    _firstErr = _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L563"
        if (_firstErr != null) {
            //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L564"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.time.Time_location.Location>; var _1 : stdgo.Error; } = { _0 : null, _1 : _firstErr };
                _z = __tmp__._0;
                _firstErr = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/zoneinfo_read.go#L566"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.time.Time_location.Location>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("unknown time zone " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__()) };
            _z = __tmp__._0;
            _firstErr = __tmp__._1;
            __tmp__;
        };
    }
