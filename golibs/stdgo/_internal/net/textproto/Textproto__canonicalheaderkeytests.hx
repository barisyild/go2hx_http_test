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
var _canonicalHeaderKeyTests : stdgo.Slice<stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest> = (new stdgo.Slice<stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest>(14, 14, ...[
(new stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest(("a-b-c" : stdgo.GoString), ("A-B-C" : stdgo.GoString)) : stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest),
(new stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest(("a-1-c" : stdgo.GoString), ("A-1-C" : stdgo.GoString)) : stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest),
(new stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest(("User-Agent" : stdgo.GoString), ("User-Agent" : stdgo.GoString)) : stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest),
(new stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest(("uSER-aGENT" : stdgo.GoString), ("User-Agent" : stdgo.GoString)) : stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest),
(new stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest(("user-agent" : stdgo.GoString), ("User-Agent" : stdgo.GoString)) : stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest),
(new stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest(("USER-AGENT" : stdgo.GoString), ("User-Agent" : stdgo.GoString)) : stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest),
(new stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest(("foo-bar_baz" : stdgo.GoString), ("Foo-Bar_baz" : stdgo.GoString)) : stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest),
(new stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest(("foo-bar$baz" : stdgo.GoString), ("Foo-Bar$baz" : stdgo.GoString)) : stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest),
(new stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest(("foo-bar~baz" : stdgo.GoString), ("Foo-Bar~baz" : stdgo.GoString)) : stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest),
(new stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest(("foo-bar*baz" : stdgo.GoString), ("Foo-Bar*baz" : stdgo.GoString)) : stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest),
(new stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest(("üser-agenT" : stdgo.GoString), ("üser-agenT" : stdgo.GoString)) : stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest),
(new stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest(("a B" : stdgo.GoString), ("a B" : stdgo.GoString)) : stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest),
(new stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest(("C Ontent-Transfer-Encoding" : stdgo.GoString), ("C Ontent-Transfer-Encoding" : stdgo.GoString)) : stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest),
(new stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest(("foo bar" : stdgo.GoString), ("foo bar" : stdgo.GoString)) : stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest)])) : stdgo.Slice<stdgo._internal.net.textproto.Textproto_t_canonicalheaderkeytest.T_canonicalHeaderKeyTest>);
