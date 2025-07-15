package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _registerLoadFromEmbeddedTZData(_f:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; }):Void {
        stdgo._internal.time.Time__loadfromembeddedtzdata._loadFromEmbeddedTZData = _f;
    }
