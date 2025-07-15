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
@:structInit @:using(stdgo._internal.net.textproto.Textproto_t_readresponsetest_static_extension.T_readResponseTest_static_extension) @:using(stdgo._internal.net.textproto.Textproto_t_readresponsetest_static_extension.T_readResponseTest_static_extension) class T_readResponseTest {
    public var _in : stdgo.GoString = "";
    public var _inCode : stdgo.GoInt = 0;
    public var _wantCode : stdgo.GoInt = 0;
    public var _wantMsg : stdgo.GoString = "";
    public function new(?_in:stdgo.GoString, ?_inCode:stdgo.GoInt, ?_wantCode:stdgo.GoInt, ?_wantMsg:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_inCode != null) this._inCode = _inCode;
        if (_wantCode != null) this._wantCode = _wantCode;
        if (_wantMsg != null) this._wantMsg = _wantMsg;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_in", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_inCode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_wantCode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_wantMsg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_readResponseTest(_in, _inCode, _wantCode, _wantMsg);
    }
}
