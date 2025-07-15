package stdgo._internal.go.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
class Scanner_asInterface {
    @:keep
    public dynamic function scan():{ var _0 : stdgo._internal.go.token.Token_pos.Pos; var _1 : stdgo._internal.go.token.Token_token.Token; var _2 : stdgo.GoString; } return @:_0 __self__.value.scan();
    @:keep
    public dynamic function _switch4(_tok0:stdgo._internal.go.token.Token_token.Token, _tok1:stdgo._internal.go.token.Token_token.Token, _ch2:stdgo.GoInt32, _tok2:stdgo._internal.go.token.Token_token.Token, _tok3:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token return @:_0 __self__.value._switch4(_tok0, _tok1, _ch2, _tok2, _tok3);
    @:keep
    public dynamic function _switch3(_tok0:stdgo._internal.go.token.Token_token.Token, _tok1:stdgo._internal.go.token.Token_token.Token, _ch2:stdgo.GoInt32, _tok2:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token return @:_0 __self__.value._switch3(_tok0, _tok1, _ch2, _tok2);
    @:keep
    public dynamic function _switch2(_tok0:stdgo._internal.go.token.Token_token.Token, _tok1:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token return @:_0 __self__.value._switch2(_tok0, _tok1);
    @:keep
    public dynamic function _skipWhitespace():Void @:_0 __self__.value._skipWhitespace();
    @:keep
    public dynamic function _scanRawString():stdgo.GoString return @:_0 __self__.value._scanRawString();
    @:keep
    public dynamic function _scanString():stdgo.GoString return @:_0 __self__.value._scanString();
    @:keep
    public dynamic function _scanRune():stdgo.GoString return @:_0 __self__.value._scanRune();
    @:keep
    public dynamic function _scanEscape(_quote:stdgo.GoInt32):Bool return @:_0 __self__.value._scanEscape(_quote);
    @:keep
    public dynamic function _scanNumber():{ var _0 : stdgo._internal.go.token.Token_token.Token; var _1 : stdgo.GoString; } return @:_0 __self__.value._scanNumber();
    @:keep
    public dynamic function _digits(_base:stdgo.GoInt, _invalid:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return @:_0 __self__.value._digits(_base, _invalid);
    @:keep
    public dynamic function _scanIdentifier():stdgo.GoString return @:_0 __self__.value._scanIdentifier();
    @:keep
    public dynamic function _updateLineInfo(_next:stdgo.GoInt, _offs:stdgo.GoInt, _text:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._updateLineInfo(_next, _offs, _text);
    @:keep
    public dynamic function _scanComment():{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } return @:_0 __self__.value._scanComment();
    @:keep
    public dynamic function _errorf(_offs:stdgo.GoInt, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._errorf(_offs, _format, ..._args);
    @:keep
    public dynamic function _error(_offs:stdgo.GoInt, _msg:stdgo.GoString):Void @:_0 __self__.value._error(_offs, _msg);
    @:keep
    public dynamic function init(_file:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _src:stdgo.Slice<stdgo.GoUInt8>, _err:stdgo._internal.go.scanner.Scanner_errorhandler.ErrorHandler, _mode:stdgo._internal.go.scanner.Scanner_mode.Mode):Void @:_0 __self__.value.init(_file, _src, _err, _mode);
    @:keep
    public dynamic function _peek():stdgo.GoUInt8 return @:_0 __self__.value._peek();
    @:keep
    public dynamic function _next():Void @:_0 __self__.value._next();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.scanner.Scanner_scannerpointer.ScannerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
