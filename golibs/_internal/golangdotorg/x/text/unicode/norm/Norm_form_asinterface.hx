package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
class Form_asInterface {
    @:keep
    public dynamic function _transform(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value._transform(_dst, _src, _atEOF);
    @:keep
    public dynamic function transform(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value.transform(_dst, _src, _atEOF);
    @:keep
    public dynamic function reset():Void @:_0 __self__.value.reset();
    @:keep
    public dynamic function reader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader return @:_0 __self__.value.reader(_r);
    @:keep
    public dynamic function writer(_w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser return @:_0 __self__.value.writer(_w);
    @:keep
    public dynamic function lastBoundary(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return @:_0 __self__.value.lastBoundary(_b);
    @:keep
    public dynamic function _nextBoundary(_src:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, _nsrc:stdgo.GoInt, _atEOF:Bool):stdgo.GoInt return @:_0 __self__.value._nextBoundary(_src, _nsrc, _atEOF);
    @:keep
    public dynamic function nextBoundaryInString(_s:stdgo.GoString, _atEOF:Bool):stdgo.GoInt return @:_0 __self__.value.nextBoundaryInString(_s, _atEOF);
    @:keep
    public dynamic function nextBoundary(_b:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):stdgo.GoInt return @:_0 __self__.value.nextBoundary(_b, _atEOF);
    @:keep
    public dynamic function firstBoundaryInString(_s:stdgo.GoString):stdgo.GoInt return @:_0 __self__.value.firstBoundaryInString(_s);
    @:keep
    public dynamic function _firstBoundary(_src:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, _nsrc:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._firstBoundary(_src, _nsrc);
    @:keep
    public dynamic function firstBoundary(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return @:_0 __self__.value.firstBoundary(_b);
    @:keep
    public dynamic function quickSpanString(_s:stdgo.GoString):stdgo.GoInt return @:_0 __self__.value.quickSpanString(_s);
    @:keep
    public dynamic function spanString(_s:stdgo.GoString, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.spanString(_s, _atEOF);
    @:keep
    public dynamic function span(_b:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.span(_b, _atEOF);
    @:keep
    public dynamic function quickSpan(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return @:_0 __self__.value.quickSpan(_b);
    @:keep
    public dynamic function appendString(_out:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.appendString(_out, _src);
    @:keep
    public dynamic function _doAppend(_out:stdgo.Slice<stdgo.GoUInt8>, _src:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._doAppend(_out, _src, _n);
    @:keep
    public dynamic function append(_out:stdgo.Slice<stdgo.GoUInt8>, _src:haxe.Rest<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.append(_out, ..._src);
    @:keep
    public dynamic function isNormalString(_s:stdgo.GoString):Bool return @:_0 __self__.value.isNormalString(_s);
    @:keep
    public dynamic function isNormal(_b:stdgo.Slice<stdgo.GoUInt8>):Bool return @:_0 __self__.value.isNormal(_b);
    @:keep
    public dynamic function string(_s:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.string(_s);
    @:keep
    public dynamic function bytes(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes(_b);
    @:keep
    public dynamic function propertiesString(_s:stdgo.GoString):_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties return @:_0 __self__.value.propertiesString(_s);
    @:keep
    public dynamic function properties(_s:stdgo.Slice<stdgo.GoUInt8>):_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties return @:_0 __self__.value.properties(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.text.unicode.norm.Norm_formpointer.FormPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
