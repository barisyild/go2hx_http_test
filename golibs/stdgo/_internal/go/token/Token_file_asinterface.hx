package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
class File_asInterface {
    @:keep
    public dynamic function position(_p:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_position.Position return @:_0 __self__.value.position(_p);
    @:keep
    public dynamic function positionFor(_p:stdgo._internal.go.token.Token_pos.Pos, _adjusted:Bool):stdgo._internal.go.token.Token_position.Position return @:_0 __self__.value.positionFor(_p, _adjusted);
    @:keep
    public dynamic function _position(_p:stdgo._internal.go.token.Token_pos.Pos, _adjusted:Bool):stdgo._internal.go.token.Token_position.Position return @:_0 __self__.value._position(_p, _adjusted);
    @:keep
    public dynamic function _unpack(_offset:stdgo.GoInt, _adjusted:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; } return @:_0 __self__.value._unpack(_offset, _adjusted);
    @:keep
    public dynamic function line(_p:stdgo._internal.go.token.Token_pos.Pos):stdgo.GoInt return @:_0 __self__.value.line(_p);
    @:keep
    public dynamic function offset(_p:stdgo._internal.go.token.Token_pos.Pos):stdgo.GoInt return @:_0 __self__.value.offset(_p);
    @:keep
    public dynamic function pos(_offset:stdgo.GoInt):stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value.pos(_offset);
    @:keep
    public dynamic function addLineColumnInfo(_offset:stdgo.GoInt, _filename:stdgo.GoString, _line:stdgo.GoInt, _column:stdgo.GoInt):Void @:_0 __self__.value.addLineColumnInfo(_offset, _filename, _line, _column);
    @:keep
    public dynamic function addLineInfo(_offset:stdgo.GoInt, _filename:stdgo.GoString, _line:stdgo.GoInt):Void @:_0 __self__.value.addLineInfo(_offset, _filename, _line);
    @:keep
    public dynamic function lineStart(_line:stdgo.GoInt):stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value.lineStart(_line);
    @:keep
    public dynamic function setLinesForContent(_content:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.setLinesForContent(_content);
    @:keep
    public dynamic function setLines(_lines:stdgo.Slice<stdgo.GoInt>):Bool return @:_0 __self__.value.setLines(_lines);
    @:keep
    public dynamic function lines():stdgo.Slice<stdgo.GoInt> return @:_0 __self__.value.lines();
    @:keep
    public dynamic function mergeLine(_line:stdgo.GoInt):Void @:_0 __self__.value.mergeLine(_line);
    @:keep
    public dynamic function addLine(_offset:stdgo.GoInt):Void @:_0 __self__.value.addLine(_offset);
    @:keep
    public dynamic function lineCount():stdgo.GoInt return @:_0 __self__.value.lineCount();
    @:keep
    public dynamic function size():stdgo.GoInt return @:_0 __self__.value.size();
    @:keep
    public dynamic function base():stdgo.GoInt return @:_0 __self__.value.base();
    @:keep
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.token.Token_filepointer.FilePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
