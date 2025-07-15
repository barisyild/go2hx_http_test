package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.compress.flate.Flate_t_huffmandecoder_static_extension.T_huffmanDecoder_static_extension) @:using(stdgo._internal.compress.flate.Flate_t_huffmandecoder_static_extension.T_huffmanDecoder_static_extension) class T_huffmanDecoder {
    public var _min : stdgo.GoInt = 0;
    public var _chunks : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(512, 512).__setNumber32__();
    public var _links : stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>);
    public var _linkMask : stdgo.GoUInt32 = 0;
    public function new(?_min:stdgo.GoInt, ?_chunks:stdgo.GoArray<stdgo.GoUInt32>, ?_links:stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>, ?_linkMask:stdgo.GoUInt32) {
        if (_min != null) this._min = _min;
        if (_chunks != null) this._chunks = _chunks;
        if (_links != null) this._links = _links;
        if (_linkMask != null) this._linkMask = _linkMask;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_min", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_chunks", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, 512) }, optional : false }, { name : "_links", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }) }) }, optional : false }, { name : "_linkMask", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }])));
    public function __copy__() {
        return new T_huffmanDecoder(_min, _chunks, _links, _linkMask);
    }
}
