package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield_static_extension.HeaderField_static_extension) @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield_static_extension.HeaderField_static_extension) class HeaderField {
    public var name : stdgo.GoString = "";
    public var value : stdgo.GoString = "";
    public var sensitive : Bool = false;
    public function new(?name:stdgo.GoString, ?value:stdgo.GoString, ?sensitive:Bool) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
        if (sensitive != null) this.sensitive = sensitive;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "sensitive", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new HeaderField(name, value, sensitive);
    }
}
