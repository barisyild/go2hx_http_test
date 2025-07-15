package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.compress.flate.Flate_t_huffmanencoder_static_extension.T_huffmanEncoder_static_extension) @:using(stdgo._internal.compress.flate.Flate_t_huffmanencoder_static_extension.T_huffmanEncoder_static_extension) class T_huffmanEncoder {
    public var _codes : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode> = (null : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>);
    public var _freqcache : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode> = (null : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>);
    public var _bitCount : stdgo.GoArray<stdgo.GoInt32> = new stdgo.GoArray<stdgo.GoInt32>(17, 17).__setNumber32__();
    public var _lns : stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral = (new stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral(0, 0) : stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral);
    public var _lfs : stdgo._internal.compress.flate.Flate_t_byfreq.T_byFreq = (new stdgo._internal.compress.flate.Flate_t_byfreq.T_byFreq(0, 0) : stdgo._internal.compress.flate.Flate_t_byfreq.T_byFreq);
    public function new(?_codes:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>, ?_freqcache:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>, ?_bitCount:stdgo.GoArray<stdgo.GoInt32>, ?_lns:stdgo._internal.compress.flate.Flate_t_byliteral.T_byLiteral, ?_lfs:stdgo._internal.compress.flate.Flate_t_byfreq.T_byFreq) {
        if (_codes != null) this._codes = _codes;
        if (_freqcache != null) this._freqcache = _freqcache;
        if (_bitCount != null) this._bitCount = _bitCount;
        if (_lns != null) this._lns = _lns;
        if (_lfs != null) this._lfs = _lfs;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_codes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_hcodedott_hcode.__type__stdgodot_internaldotcompressdotflatedotFlate_t_hcodedotT_hcode }) }, optional : false }, { name : "_freqcache", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_literalnodedott_literalnode.__type__stdgodot_internaldotcompressdotflatedotFlate_t_literalnodedotT_literalNode }) }, optional : false }, { name : "_bitCount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, 17) }, optional : false }, { name : "_lns", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_byliteraldott_byliteral.__type__stdgodot_internaldotcompressdotflatedotFlate_t_byliteraldotT_byLiteral }, optional : false }, { name : "_lfs", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_byfreqdott_byfreq.__type__stdgodot_internaldotcompressdotflatedotFlate_t_byfreqdotT_byFreq }, optional : false }])));
    public function __copy__() {
        return new T_huffmanEncoder(_codes, _freqcache, _bitCount, _lns, _lfs);
    }
}
