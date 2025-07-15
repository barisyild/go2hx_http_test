package _internal.bytes_test;
function _valName(_x:stdgo.GoInt):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L530"
        {
            var _s = @:assignType (_x >> (20i64 : stdgo.GoUInt64) : stdgo.GoInt);
            if ((_s << (20i64 : stdgo.GoUInt64) : stdgo.GoInt) == (_x)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L531"
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%dM" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L533"
        {
            var _s = @:assignType (_x >> (10i64 : stdgo.GoUInt64) : stdgo.GoInt);
            if ((_s << (10i64 : stdgo.GoUInt64) : stdgo.GoInt) == (_x)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L534"
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%dK" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L536"
        return stdgo._internal.fmt.Fmt_sprint.sprint(new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__();
    }
