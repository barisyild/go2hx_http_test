package stdgo._internal.text.tabwriter;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
class Writer_asInterface {
    @:keep
    public dynamic function write(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_buf);
    @:keep
    public dynamic function _flushNoDefers():Void @:_0 __self__.value._flushNoDefers();
    @:keep
    public dynamic function _flush():stdgo.Error return @:_0 __self__.value._flush();
    @:keep
    public dynamic function flush():stdgo.Error return @:_0 __self__.value.flush();
    @:keep
    public dynamic function _handlePanic(_err:stdgo.Ref<stdgo.Error>, _op:stdgo.GoString):Void @:_0 __self__.value._handlePanic(_err, _op);
    @:keep
    public dynamic function _terminateCell(_htab:Bool):stdgo.GoInt return @:_0 __self__.value._terminateCell(_htab);
    @:keep
    public dynamic function _endEscape():Void @:_0 __self__.value._endEscape();
    @:keep
    public dynamic function _startEscape(_ch:stdgo.GoUInt8):Void @:_0 __self__.value._startEscape(_ch);
    @:keep
    public dynamic function _updateWidth():Void @:_0 __self__.value._updateWidth();
    @:keep
    public dynamic function _append(_text:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._append(_text);
    @:keep
    public dynamic function _format(_pos0:stdgo.GoInt, _line0:stdgo.GoInt, _line1:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._format(_pos0, _line0, _line1);
    @:keep
    public dynamic function _writeLines(_pos0:stdgo.GoInt, _line0:stdgo.GoInt, _line1:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._writeLines(_pos0, _line0, _line1);
    @:keep
    public dynamic function _writePadding(_textw:stdgo.GoInt, _cellw:stdgo.GoInt, _useTabs:Bool):Void @:_0 __self__.value._writePadding(_textw, _cellw, _useTabs);
    @:keep
    public dynamic function _writeN(_src:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):Void @:_0 __self__.value._writeN(_src, _n);
    @:keep
    public dynamic function _write0(_buf:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._write0(_buf);
    @:keep
    public dynamic function _dump():Void @:_0 __self__.value._dump();
    @:keep
    public dynamic function init(_output:stdgo._internal.io.Io_writer.Writer, _minwidth:stdgo.GoInt, _tabwidth:stdgo.GoInt, _padding:stdgo.GoInt, _padchar:stdgo.GoUInt8, _flags:stdgo.GoUInt):stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> return @:_0 __self__.value.init(_output, _minwidth, _tabwidth, _padding, _padchar, _flags);
    @:keep
    public dynamic function _reset():Void @:_0 __self__.value._reset();
    @:keep
    public dynamic function _addLine(_flushed:Bool):Void @:_0 __self__.value._addLine(_flushed);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.text.tabwriter.Tabwriter_writerpointer.WriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
