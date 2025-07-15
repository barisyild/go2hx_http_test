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
function testReaderUpcomingHeaderKeys(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L136"
        if ((new stdgo.Slice<stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20>(7, 7, ...[({ _input : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _want : (0 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20), ({ _input : ("A: v" : stdgo.GoString), _want : (1 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20), ({ _input : ("A: v\r\nB: v\r\n" : stdgo.GoString), _want : (2 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20), ({ _input : ("A: v\nB: v\n" : stdgo.GoString), _want : (2 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20), ({ _input : ("A: v\r\n  continued\r\n  still continued\r\nB: v\r\n\r\n" : stdgo.GoString), _want : (2 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20), ({ _input : ("A: v\r\n\r\nB: v\r\nC: v\r\n" : stdgo.GoString), _want : (1 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20), ({ _input : (("A: v" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("\n" : stdgo.GoString), (1000 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(), _want : (1 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _input : ("" : stdgo.GoString), _want : (0 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20)])) : stdgo.Slice<stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20>) != null) for (__0 => _test in (new stdgo.Slice<stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20>(7, 7, ...[({ _input : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _want : (0 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20), ({ _input : ("A: v" : stdgo.GoString), _want : (1 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20), ({ _input : ("A: v\r\nB: v\r\n" : stdgo.GoString), _want : (2 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20), ({ _input : ("A: v\nB: v\n" : stdgo.GoString), _want : (2 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20), ({ _input : ("A: v\r\n  continued\r\n  still continued\r\nB: v\r\n\r\n" : stdgo.GoString), _want : (2 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20), ({ _input : ("A: v\r\n\r\nB: v\r\nC: v\r\n" : stdgo.GoString), _want : (1 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20), ({ _input : (("A: v" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("\n" : stdgo.GoString), (1000 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(), _want : (1 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _input : ("" : stdgo.GoString), _want : (0 : stdgo.GoInt) } : stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20)])) : stdgo.Slice<stdgo._internal.net.textproto.Textproto_t__struct_20.T__struct_20>)) {
            var _r = stdgo._internal.net.textproto.Textproto__reader._reader(_test._input?.__copy__());
            var _got = @:assignType (_r._upcomingHeaderKeys() : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L163"
            if (_test._want != (_got)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L164"
                _t.fatalf(("upcomingHeaderKeys(%q): %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_test._input, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_test._want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
    }
