package stdgo._internal.net.textproto;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.testing.Testing;
import stdgo._internal.net.Net;
function testReadMIMEHeaderMalformed(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _inputs = (new stdgo.Slice<stdgo.GoString>(11, 11, ...[
("No colon first line\r\nFoo: foo\r\n\r\n" : stdgo.GoString),
(" No colon first line with leading space\r\nFoo: foo\r\n\r\n" : stdgo.GoString),
("\tNo colon first line with leading tab\r\nFoo: foo\r\n\r\n" : stdgo.GoString),
(" First: line with leading space\r\nFoo: foo\r\n\r\n" : stdgo.GoString),
("\tFirst: line with leading tab\r\nFoo: foo\r\n\r\n" : stdgo.GoString),
("Foo: foo\r\nNo colon second line\r\n\r\n" : stdgo.GoString),
("Foo-\n\tBar: foo\r\n\r\n" : stdgo.GoString),
("Foo-\r\n\tBar: foo\r\n\r\n" : stdgo.GoString),
("Foo\r\n\t: foo\r\n\r\n" : stdgo.GoString),
("Foo-\n\tBar" : stdgo.GoString),
("Foo \tBar: foo\r\n\r\n" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L231"
        if (_inputs != null) for (__0 => _input in _inputs) {
            var _r = stdgo._internal.net.textproto.Textproto__reader._reader(_input?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L233"
            {
                var __tmp__ = _r.readMIMEHeader(), _m:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) || (({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == ({
                    final __t__ = stdgo._internal.io.Io_eof.eOF;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L234"
                    _t.errorf(("ReadMIMEHeader(%q) = %v, %v; want nil, err" : stdgo.GoString), new stdgo.AnyInterface(_input, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_m, _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader)), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
            };
        };
    }
