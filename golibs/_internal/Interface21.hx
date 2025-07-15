package _internal;
@:keep class T_writer_static_extension {
    @:interfacetypeffun
    static public function _write(t:_internal.Interface21.T_writer):Void t._write();
}
@:interface typedef T_writer = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _write():Void;
};
@:structInit @:using(_internal.Interface21.Reader_static_extension) @:using(_internal.Interface21.Reader_static_extension) class Reader {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new Reader();
    }
}
function main():Void {}
class Reader_asInterface {
    @:keep
    public dynamic function _readForm():Void @:_0 __self__.value._readForm();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface21.ReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface21.Reader_static_extension) @:using(_internal.Interface21.ReaderPointer_static_extension) typedef ReaderPointer = stdgo.Pointer<_internal.Interface21.Reader>;
@:keep @:allow(_internal.Interface21.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function _readForm( _r:stdgo.Ref<_internal.Interface21.Reader>):Void {
        @:recv var _r:stdgo.Ref<_internal.Interface21.Reader> = _r;
        {};
        var _w = @:assignType (new _internal.Interface21.T__readForm___localname___writerOnly_171((null : _internal.Interface21.T_writer)) : _internal.Interface21.T__readForm___localname___writerOnly_171);
        var _f = @:assignType (function(_w:_internal.Interface21.T_writer):Void {} : _internal.Interface21.T_writer -> Void);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface21.go#L16"
        _f(stdgo.Go.asInterface(_w, _internal.gotype.Gotype___type___internaldotinterface21dott__readform___localname___writeronly_171.__type___internaldotInterface21dotT__readForm___localname___writerOnly_171));
    }
}
@:structInit @:using(_internal.Interface21.T__readForm___localname___writerOnly_171_static_extension) class T__readForm___localname___writerOnly_171 {
    @:embedded
    public var _writer : _internal.Interface21.T_writer = (null : _internal.Interface21.T_writer);
    public function new(?_writer:_internal.Interface21.T_writer) {
        if (_writer != null) this._writer = _writer;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_writer", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotinterface21dott_writer.__type___internaldotInterface21dotT_writer }, optional : false }])));
    public var _write(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__write():() -> Void return @:check31 (this._writer ?? throw stdgo.Error._nullPointerDereference.__underlying__())._write;
    public function __copy__() {
        return new T__readForm___localname___writerOnly_171(_writer);
    }
}
@:structInit class T__readForm___localname___T__readForm___localname___writerOnly_171_171 {
    @:embedded
    public var _writer : _internal.Interface21.T_writer = (null : _internal.Interface21.T_writer);
    public function new(?_writer:_internal.Interface21.T_writer) {
        if (_writer != null) this._writer = _writer;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_writer", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotinterface21dott_writer.__type___internaldotInterface21dotT_writer }, optional : false }])));
    public var _write(get, never) : () -> Void;
    @:embedded
    public function get__write():() -> Void return @:check31 (this._writer ?? throw stdgo.Error._nullPointerDereference.__underlying__())._write;
    public function __copy__() {
        return new T__readForm___localname___T__readForm___localname___writerOnly_171_171(_writer);
    }
}
class ReaderPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface21.ReaderPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface21.ReaderPointer_static_extension) typedef ReaderPointerPointer = stdgo.Pointer<_internal.Interface21.ReaderPointer>;
@:keep @:allow(_internal.Interface21.ReaderPointer_asInterface) class ReaderPointer_static_extension {

}
class T__readForm___localname___writerOnly_171_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _write():Void @:_0 __self__.value._write();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface21.T__readForm___localname___writerOnly_171Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface21.T__readForm___localname___writerOnly_171_static_extension) typedef T__readForm___localname___writerOnly_171Pointer = stdgo.Pointer<_internal.Interface21.T__readForm___localname___writerOnly_171>;
@:keep @:allow(_internal.Interface21.T__readForm___localname___writerOnly_171_asInterface) class T__readForm___localname___writerOnly_171_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function _write( __self__:_internal.Interface21.T__readForm___localname___writerOnly_171):Void return @:_5 __self__._write();
}
