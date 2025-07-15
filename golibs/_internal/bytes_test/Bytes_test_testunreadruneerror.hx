package _internal.bytes_test;
function testUnreadRuneError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L195"
        if (_internal.bytes_test.Bytes_test_unreadruneerrortests.unreadRuneErrorTests != null) for (__0 => _tt in _internal.bytes_test.Bytes_test_unreadruneerrortests.unreadRuneErrorTests) {
            var _reader = stdgo._internal.bytes.Bytes_newreader.newReader(((("0123456789" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L197"
            {
                var __tmp__ = _reader.readRune(), __1:stdgo.GoInt32 = __tmp__._0, __2:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L199"
                    _t.fatal(({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L201"
            _tt._f(_reader);
            var _err = @:assignType (_reader.unreadRune() : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L203"
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L204"
                _t.errorf(("Unreading after %s: expected error" : stdgo.GoString), new stdgo.AnyInterface(_tt._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
