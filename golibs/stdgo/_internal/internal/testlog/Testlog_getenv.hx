package stdgo._internal.internal.testlog;
function getenv(_name:stdgo.GoString):Void {
        //"file:///Users/o/.go/go1.21.3/src/internal/testlog/log.go#L52"
        {
            var _log = @:assignType (stdgo._internal.internal.testlog.Testlog_logger.logger() : stdgo._internal.internal.testlog.Testlog_interface.Interface);
            if (_log != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/testlog/log.go#L53"
                _log.getenv(_name?.__copy__());
            };
        };
    }
