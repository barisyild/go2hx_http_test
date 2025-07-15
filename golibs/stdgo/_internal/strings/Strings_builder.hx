package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.strings.Strings_builder_static_extension.Builder_static_extension) @:using(stdgo._internal.strings.Strings_builder_static_extension.Builder_static_extension) class Builder {
    public var _addr : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder> = (null : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_addr:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, ?_buf:stdgo.Slice<stdgo.GoUInt8>) {
        if (_addr != null) this._addr = _addr;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_addr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder }) }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Builder(_addr, _buf);
    }
}
