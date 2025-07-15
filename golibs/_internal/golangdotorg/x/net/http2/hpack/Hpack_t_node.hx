package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_t_node_static_extension.T_node_static_extension) @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_t_node_static_extension.T_node_static_extension) class T_node {
    @:optional
    public var __0 : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_incomparable.T_incomparable = new _internal.golangdotorg.x.net.http2.hpack.Hpack_t_incomparable.T_incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _children : stdgo.Ref<stdgo.GoArray<stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_node.T_node>>> = new stdgo.GoArray<stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_node.T_node>>(256, 256).__setNil__();
    public var _codeLen : stdgo.GoUInt8 = 0;
    public var _sym : stdgo.GoUInt8 = 0;
    public function new(?__0:_internal.golangdotorg.x.net.http2.hpack.Hpack_t_incomparable.T_incomparable, ?_children:stdgo.Ref<stdgo.GoArray<stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_node.T_node>>>, ?_codeLen:stdgo.GoUInt8, ?_sym:stdgo.GoUInt8) {
        if (__0 != null) this.__0 = __0;
        if (_children != null) this._children = _children;
        if (_codeLen != null) this._codeLen = _codeLen;
        if (_sym != null) this._sym = _sym;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_t_incomparabledott_incomparable.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_t_incomparabledotT_incomparable }, optional : false }, { name : "_children", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_t_nodedott_node.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_t_nodedotT_node }) }, 256) }) }, optional : false }, { name : "_codeLen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_sym", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }])));
    public function __copy__() {
        return new T_node(__0, _children, _codeLen, _sym);
    }
}
