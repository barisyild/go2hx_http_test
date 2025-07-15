package stdgo.hash.crc32;
var size : stdgo.GoUInt64 = 4i64;
var iEEE : stdgo.GoUInt64 = 3988292384i64;
var castagnoli : stdgo.GoUInt64 = 2197175160i64;
var koopman : stdgo.GoUInt64 = 3945912366i64;
var iEEETable(get, set) : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>;
private function get_iEEETable():stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table> return stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable;
private function set_iEEETable(v:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>):stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table> {
    stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable = v;
    return v;
}
typedef Table = stdgo._internal.hash.crc32.Crc32_table.Table;
typedef TablePointer = stdgo._internal.hash.crc32.Crc32_tablepointer.TablePointer;
typedef TablePointerPointer = stdgo._internal.hash.crc32.Crc32_tablepointerpointer.TablePointerPointer;
/**
    * Package crc32 implements the 32-bit cyclic redundancy check, or CRC-32,
    * checksum. See https://en.wikipedia.org/wiki/Cyclic_redundancy_check for
    * information.
    * 
    * Polynomials are represented in LSB-first form also known as reversed representation.
    * 
    * See https://en.wikipedia.org/wiki/Mathematics_of_cyclic_redundancy_checks#Reversed_representations_and_reciprocal_polynomials
    * for information.
**/
class Crc32 {
    /**
        * MakeTable returns a Table constructed from the specified polynomial.
        * The contents of this Table must not be modified.
    **/
    static public inline function makeTable(_poly:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table> return stdgo._internal.hash.crc32.Crc32_maketable.makeTable(_poly);
    /**
        * New creates a new hash.Hash32 computing the CRC-32 checksum using the
        * polynomial represented by the Table. Its Sum method will lay the
        * value out in big-endian byte order. The returned Hash32 also
        * implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        * marshal and unmarshal the internal state of the hash.
    **/
    static public inline function new_(_tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>):stdgo._internal.hash.Hash_hash32.Hash32 return stdgo._internal.hash.crc32.Crc32_new_.new_(_tab);
    /**
        * NewIEEE creates a new hash.Hash32 computing the CRC-32 checksum using
        * the IEEE polynomial. Its Sum method will lay the value out in
        * big-endian byte order. The returned Hash32 also implements
        * encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to marshal
        * and unmarshal the internal state of the hash.
    **/
    static public inline function newIEEE():stdgo._internal.hash.Hash_hash32.Hash32 return stdgo._internal.hash.crc32.Crc32_newieee.newIEEE();
    /**
        * Update returns the result of adding the bytes in p to the crc.
    **/
    static public inline function update(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 return stdgo._internal.hash.crc32.Crc32_update.update(_crc, _tab, _p);
    /**
        * Checksum returns the CRC-32 checksum of data
        * using the polynomial represented by the Table.
    **/
    static public inline function checksum(_data:stdgo.Slice<stdgo.GoUInt8>, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>):stdgo.GoUInt32 return stdgo._internal.hash.crc32.Crc32_checksum.checksum(_data, _tab);
    /**
        * ChecksumIEEE returns the CRC-32 checksum of data
        * using the IEEE polynomial.
    **/
    static public inline function checksumIEEE(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 return stdgo._internal.hash.crc32.Crc32_checksumieee.checksumIEEE(_data);
}
