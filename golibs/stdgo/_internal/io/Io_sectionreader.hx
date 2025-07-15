package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.io.Io_sectionreader_static_extension.SectionReader_static_extension) @:using(stdgo._internal.io.Io_sectionreader_static_extension.SectionReader_static_extension) class SectionReader {
    public var _r : stdgo._internal.io.Io_readerat.ReaderAt = (null : stdgo._internal.io.Io_readerat.ReaderAt);
    public var _base : stdgo.GoInt64 = 0;
    public var _off : stdgo.GoInt64 = 0;
    public var _limit : stdgo.GoInt64 = 0;
    public function new(?_r:stdgo._internal.io.Io_readerat.ReaderAt, ?_base:stdgo.GoInt64, ?_off:stdgo.GoInt64, ?_limit:stdgo.GoInt64) {
        if (_r != null) this._r = _r;
        if (_base != null) this._base = _base;
        if (_off != null) this._off = _off;
        if (_limit != null) this._limit = _limit;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readeratdotreaderat.__type__stdgodot_internaldotiodotIo_readeratdotReaderAt }, optional : false }, { name : "_base", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_off", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_limit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }])));
    public function __copy__() {
        return new SectionReader(_r, _base, _off, _limit);
    }
}
