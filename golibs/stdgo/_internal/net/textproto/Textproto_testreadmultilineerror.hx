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
function testReadMultiLineError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = stdgo._internal.net.textproto.Textproto__reader._reader(("550-5.1.1 The email account that you tried to reach does not exist. Please try\n550-5.1.1 double-checking the recipient\'s email address for typos or\n550-5.1.1 unnecessary spaces. Learn more at\nUnexpected but legal text!\n550 5.1.1 https://support.google.com/mail/answer/6596 h20si25154304pfd.166 - gsmtp\n" : stdgo.GoString));
        var _wantMsg = @:assignType (("5.1.1 The email account that you tried to reach does not exist. Please try\n5.1.1 double-checking the recipient\'s email address for typos or\n5.1.1 unnecessary spaces. Learn more at\nUnexpected but legal text!\n5.1.1 https://support.google.com/mail/answer/6596 h20si25154304pfd.166 - gsmtp" : stdgo.GoString) : stdgo.GoString);
        var __tmp__ = _r.readResponse((250 : stdgo.GoInt)), _code:stdgo.GoInt = __tmp__._0, _msg:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L401"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L402"
            _t.errorf(("ReadResponse: no error, want error" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L404"
        if (_code != ((550 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L405"
            _t.errorf(("ReadResponse: code=%d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_code, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((550 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L407"
        if (_msg != (_wantMsg)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L408"
            _t.errorf(("ReadResponse: msg=%q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_msg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_wantMsg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L410"
        if (((_err != null) && (_err.error() != (("550 " : stdgo.GoString) + _wantMsg?.__copy__() : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L411"
            _t.errorf(("ReadResponse: error=%q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_err.error(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((("550 " : stdgo.GoString) + _wantMsg?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
