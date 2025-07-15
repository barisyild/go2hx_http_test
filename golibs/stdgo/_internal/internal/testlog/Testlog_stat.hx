package stdgo._internal.internal.testlog;
function stat(_name:stdgo.GoString):Void {
        //"file:///Users/o/.go/go1.21.3/src/internal/testlog/log.go#L66"
        {
            var _log = @:assignType (stdgo._internal.internal.testlog.Testlog_logger.logger() : stdgo._internal.internal.testlog.Testlog_interface.Interface);
            if (_log != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/testlog/log.go#L67"
                _log.stat(_name?.__copy__());
            };
        };
    }
