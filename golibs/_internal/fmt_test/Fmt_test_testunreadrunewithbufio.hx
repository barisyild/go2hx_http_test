package _internal.fmt_test;
function testUnreadRuneWithBufio(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(("123αb" : stdgo.GoString)), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader })));
        var _i:stdgo.GoInt = (0 : stdgo.GoInt), _i__pointer__ = stdgo.Go.pointer(_i);
        var _a:stdgo.GoString = ("" : stdgo.GoString), _a__pointer__ = stdgo.Go.pointer(_a);
        var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader })), ("%d" : stdgo.GoString), new stdgo.AnyInterface(_i__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L881"
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L882"
            _t.errorf(("reading int expected one item, no errors; got %d %q" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L884"
        if (_i != ((123 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L885"
            _t.errorf(("expected 123; got %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader })), ("%s" : stdgo.GoString), new stdgo.AnyInterface(_a__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L888"
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L889"
            _t.errorf(("reading string expected one item, no errors; got %d %q" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L891"
        if (_a != (("αb" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L892"
            _t.errorf(("expected αb; got %q" : stdgo.GoString), new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
