package stdgo._internal.math.big;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.rand.Rand;
@:structInit @:using(stdgo._internal.math.big.Big_t_bytereader_static_extension.T_byteReader_static_extension) @:using(stdgo._internal.math.big.Big_t_bytereader_static_extension.T_byteReader_static_extension) class T_byteReader {
    @:embedded
    public var scanState : stdgo._internal.fmt.Fmt_scanstate.ScanState = (null : stdgo._internal.fmt.Fmt_scanstate.ScanState);
    public function new(?scanState:stdgo._internal.fmt.Fmt_scanstate.ScanState) {
        if (scanState != null) this.scanState = scanState;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "scanState", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_scanstatedotscanstate.__type__stdgodot_internaldotfmtdotFmt_scanstatedotScanState }, optional : false }])));
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.scanState ?? throw stdgo.Error._nullPointerDereference.__underlying__()).read;
    public var readRune(get, never) : () -> { var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_readRune():() -> { var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:check31 (this.scanState ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readRune;
    public var skipSpace(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_skipSpace():() -> Void return @:check31 (this.scanState ?? throw stdgo.Error._nullPointerDereference.__underlying__()).skipSpace;
    public var token(get, never) : (Bool, stdgo.GoInt32 -> Bool) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_token():(Bool, stdgo.GoInt32 -> Bool) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check31 (this.scanState ?? throw stdgo.Error._nullPointerDereference.__underlying__()).token;
    public var unreadRune(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_unreadRune():() -> stdgo.Error return @:check31 (this.scanState ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unreadRune;
    public var width(get, never) : () -> { var _0 : stdgo.GoInt; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_width():() -> { var _0 : stdgo.GoInt; var _1 : Bool; } return @:check31 (this.scanState ?? throw stdgo.Error._nullPointerDereference.__underlying__()).width;
    public function __copy__() {
        return new T_byteReader(scanState);
    }
}
