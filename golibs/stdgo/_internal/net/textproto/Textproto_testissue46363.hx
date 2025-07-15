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
function testIssue46363(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        stdgo._internal.net.textproto.Textproto__commonheaderonce._commonHeaderOnce = (new stdgo._internal.sync.Sync_once.Once() : stdgo._internal.sync.Sync_once.Once);
        stdgo._internal.net.textproto.Textproto__commonheader._commonHeader = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        var __tmp__ = stdgo._internal.net.Net_pipe.pipe(), _r:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _w:stdgo._internal.net.Net_conn.Conn = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L447"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L449"
                stdgo._internal.net.textproto.Textproto_newconn.newConn(_r).readMIMEHeader();
            };
            a();
        }));
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L451"
        _w.write(((("A: 1\r\nB: 2\r\nC: 3\r\n\r\n" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L454"
        stdgo._internal.net.textproto.Textproto_canonicalmimeheaderkey.canonicalMIMEHeaderKey(("a" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L456"
        if (stdgo._internal.net.textproto.Textproto__commonheader._commonHeader == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L457"
            _t.fatal(new stdgo.AnyInterface(("CanonicalMIMEHeaderKey should initialize commonHeader" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
