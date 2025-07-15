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
function testReadMIMEHeaderBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L240"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i <= (255 : stdgo.GoInt) : Bool)) {
                var _s = @:assignType (((("Foo" : stdgo.GoString) + ((_i : stdgo.GoInt32) : stdgo.GoString).__copy__() : stdgo.GoString) + ("Bar: foo\r\n\r\n" : stdgo.GoString).__copy__() : stdgo.GoString).__copy__() : stdgo.GoString);
var _r = stdgo._internal.net.textproto.Textproto__reader._reader(_s.__copy__());
var _wantErr = @:assignType (true : Bool);
//"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L244"
                if (((_i >= (48 : stdgo.GoInt) : Bool) && (_i <= (57 : stdgo.GoInt) : Bool) : Bool)) {
                    _wantErr = false;
                } else if (((_i >= (97 : stdgo.GoInt) : Bool) && (_i <= (122 : stdgo.GoInt) : Bool) : Bool)) {
                    _wantErr = false;
                } else if (((_i >= (65 : stdgo.GoInt) : Bool) && (_i <= (90 : stdgo.GoInt) : Bool) : Bool)) {
                    _wantErr = false;
                } else if (((((((((((((((_i == ((33 : stdgo.GoInt)) || _i == ((35 : stdgo.GoInt)) : Bool) || _i == ((36 : stdgo.GoInt)) : Bool) || _i == ((37 : stdgo.GoInt)) : Bool) || _i == ((38 : stdgo.GoInt)) : Bool) || _i == ((39 : stdgo.GoInt)) : Bool) || _i == ((42 : stdgo.GoInt)) : Bool) || _i == ((43 : stdgo.GoInt)) : Bool) || _i == ((45 : stdgo.GoInt)) : Bool) || _i == ((46 : stdgo.GoInt)) : Bool) || _i == ((94 : stdgo.GoInt)) : Bool) || _i == ((95 : stdgo.GoInt)) : Bool) || _i == ((96 : stdgo.GoInt)) : Bool) || _i == ((124 : stdgo.GoInt)) : Bool) || (_i == (126 : stdgo.GoInt)) : Bool)) {
                    _wantErr = false;
                } else if (_i == ((58 : stdgo.GoInt))) {
                    _wantErr = false;
                } else if (_i == ((32 : stdgo.GoInt))) {
                    _wantErr = false;
                };
var __tmp__ = _r.readMIMEHeader(), _m:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L260"
                if (_err != null != (_wantErr)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L261"
                    _t.errorf(("ReadMIMEHeader(%q) = %v, %v; want error=%v" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_m, _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader)), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), new stdgo.AnyInterface(_wantErr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L264"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i <= (255 : stdgo.GoInt) : Bool)) {
                var _s = @:assignType (((("Foo: foo" : stdgo.GoString) + ((_i : stdgo.GoInt32) : stdgo.GoString).__copy__() : stdgo.GoString) + ("bar\r\n\r\n" : stdgo.GoString).__copy__() : stdgo.GoString).__copy__() : stdgo.GoString);
var _r = stdgo._internal.net.textproto.Textproto__reader._reader(_s.__copy__());
var _wantErr = @:assignType (true : Bool);
//"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L268"
                if (((_i >= (33 : stdgo.GoInt) : Bool) && (_i <= (126 : stdgo.GoInt) : Bool) : Bool)) {
                    _wantErr = false;
                } else if (_i == ((32 : stdgo.GoInt))) {
                    _wantErr = false;
                } else if (_i == ((9 : stdgo.GoInt))) {
                    _wantErr = false;
                } else if (((_i >= (128 : stdgo.GoInt) : Bool) && (_i <= (255 : stdgo.GoInt) : Bool) : Bool)) {
                    _wantErr = false;
                };
var __tmp__ = _r.readMIMEHeader(), _m:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L279"
                if ((_err != null) != (_wantErr)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader_test.go#L280"
                    _t.errorf(("ReadMIMEHeader(%q) = %v, %v; want error=%v" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_m, _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_mimeheaderdotmimeheader.__type__stdgodot_internaldotnetdottextprotodotTextproto_mimeheaderdotMIMEHeader)), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), new stdgo.AnyInterface(_wantErr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
                _i++;
            };
        };
    }
