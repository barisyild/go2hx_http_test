package stdgo._internal.crypto.internal.randutil;
function maybeReadByte(_r:stdgo._internal.io.Io_reader.Reader):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/randutil/randutil.go#L26"
        stdgo._internal.crypto.internal.randutil.Randutil__closedchanonce._closedChanOnce.do_(function():Void {
            stdgo._internal.crypto.internal.randutil.Randutil__closedchan._closedChan = (new stdgo.Chan<stdgo._internal.crypto.internal.randutil.Randutil_t__struct_29.T__struct_29>(0, () -> ({  } : stdgo._internal.crypto.internal.randutil.Randutil_t__struct_29.T__struct_29)) : stdgo.Chan<stdgo._internal.crypto.internal.randutil.Randutil_t__struct_29.T__struct_29>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/randutil/randutil.go#L28"
            if (stdgo._internal.crypto.internal.randutil.Randutil__closedchan._closedChan != null) stdgo._internal.crypto.internal.randutil.Randutil__closedchan._closedChan.__close__();
        });
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/randutil/randutil.go#L31"
        {
            var __select__ = true;
            var __c__0 = null;
var __c__1 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = stdgo._internal.crypto.internal.randutil.Randutil__closedchan._closedChan;
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/randutil/randutil.go#L33"
                            return;
                        };
                    };
                } else if ({
                    if (__c__1 == null) {
                        __c__1 = stdgo._internal.crypto.internal.randutil.Randutil__closedchan._closedChan;
                    };
                    __c__1 != null && __c__1.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__1.__get__();
                        {
                            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1).__setNumber32__();
                            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/randutil/randutil.go#L36"
                            _r.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                        };
                    };
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
__c__1.__reset__();
        };
    }
