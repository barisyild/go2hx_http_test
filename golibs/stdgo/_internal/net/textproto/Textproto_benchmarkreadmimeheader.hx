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
function benchmarkReadMIMEHeader(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L487"
        _b.reportAllocs();
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L488"
        if ((new stdgo.Slice<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21>(2, 2, ...[({ _name : ("client_headers" : stdgo.GoString), _headers : stdgo._internal.net.textproto.Textproto__clientheaders._clientHeaders?.__copy__() } : stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21), ({ _name : ("server_headers" : stdgo.GoString), _headers : stdgo._internal.net.textproto.Textproto__serverheaders._serverHeaders?.__copy__() } : stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _headers : ("" : stdgo.GoString) } : stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21)])) : stdgo.Slice<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21>) != null) for (__0 => _set in (new stdgo.Slice<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21>(2, 2, ...[({ _name : ("client_headers" : stdgo.GoString), _headers : stdgo._internal.net.textproto.Textproto__clientheaders._clientHeaders?.__copy__() } : stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21), ({ _name : ("server_headers" : stdgo.GoString), _headers : stdgo._internal.net.textproto.Textproto__serverheaders._serverHeaders?.__copy__() } : stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _headers : ("" : stdgo.GoString) } : stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21)])) : stdgo.Slice<stdgo._internal.net.textproto.Textproto_t__struct_21.T__struct_21>)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L495"
            _b.run(_set._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                var _br = stdgo._internal.bufio.Bufio_newreader.newReader(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })));
                var _r = stdgo._internal.net.textproto.Textproto_newreader.newReader(_br);
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L500"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L501"
                        _buf.writeString(_set._headers.__copy__());
//"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L502"
                        {
                            var __tmp__ = _r.readMIMEHeader(), __1:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L503"
                                _b.fatal(({
                                    final __t__ = _err;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }));
                            };
                        };
                        _i++;
                    };
                };
            });
        };
    }
