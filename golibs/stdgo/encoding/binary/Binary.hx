package stdgo.encoding.binary;
var littleEndian(get, set) : stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian;
private function get_littleEndian():stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian return stdgo._internal.encoding.binary.Binary_littleendian.littleEndian;
private function set_littleEndian(v:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian):stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian {
    stdgo._internal.encoding.binary.Binary_littleendian.littleEndian = v;
    return v;
}
var bigEndian(get, set) : stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian;
private function get_bigEndian():stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian return stdgo._internal.encoding.binary.Binary_bigendian.bigEndian;
private function set_bigEndian(v:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian):stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian {
    stdgo._internal.encoding.binary.Binary_bigendian.bigEndian = v;
    return v;
}
var nativeEndian(get, set) : stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian;
private function get_nativeEndian():stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian return stdgo._internal.encoding.binary.Binary_nativeendian.nativeEndian;
private function set_nativeEndian(v:stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian):stdgo._internal.encoding.binary.Binary_t_nativeendian.T_nativeEndian {
    stdgo._internal.encoding.binary.Binary_nativeendian.nativeEndian = v;
    return v;
}
var maxVarintLen16 : stdgo.GoUInt64 = 3i64;
var maxVarintLen32 : stdgo.GoUInt64 = 5i64;
var maxVarintLen64 : stdgo.GoUInt64 = 10i64;
typedef ByteOrder = stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder;
typedef AppendByteOrder = stdgo._internal.encoding.binary.Binary_appendbyteorder.AppendByteOrder;
/**
    * Package binary implements simple translation between numbers and byte
    * sequences and encoding and decoding of varints.
    * 
    * Numbers are translated by reading and writing fixed-size values.
    * A fixed-size value is either a fixed-size arithmetic
    * type (bool, int8, uint8, int16, float32, complex64, ...)
    * or an array or struct containing only fixed-size values.
    * 
    * The varint functions encode and decode single integer values using
    * a variable-length encoding; smaller values require fewer bytes.
    * For a specification, see
    * https://developers.google.com/protocol-buffers/docs/encoding.
    * 
    * This package favors simplicity over efficiency. Clients that require
    * high-performance serialization, especially for large data structures,
    * should look at more advanced solutions such as the encoding/gob
    * package or protocol buffers.
**/
class Binary {
    /**
        * Read reads structured binary data from r into data.
        * Data must be a pointer to a fixed-size value or a slice
        * of fixed-size values.
        * Bytes read from r are decoded using the specified byte order
        * and written to successive fields of the data.
        * When decoding boolean values, a zero byte is decoded as false, and
        * any other non-zero byte is decoded as true.
        * When reading into structs, the field data for fields with
        * blank (_) field names is skipped; i.e., blank field names
        * may be used for padding.
        * When reading into a struct, all non-blank fields must be exported
        * or Read may panic.
        * 
        * The error is EOF only if no bytes were read.
        * If an EOF happens after reading some but not all the bytes,
        * Read returns ErrUnexpectedEOF.
    **/
    static public inline function read(_r:stdgo._internal.io.Io_reader.Reader, _order:ByteOrder, _data:stdgo.AnyInterface):stdgo.Error return stdgo._internal.encoding.binary.Binary_read.read(_r, _order, _data);
    /**
        * Write writes the binary representation of data into w.
        * Data must be a fixed-size value or a slice of fixed-size
        * values, or a pointer to such data.
        * Boolean values encode as one byte: 1 for true, and 0 for false.
        * Bytes written to w are encoded using the specified byte order
        * and read from successive fields of the data.
        * When writing structs, zero values are written for fields
        * with blank (_) field names.
    **/
    static public inline function write(_w:stdgo._internal.io.Io_writer.Writer, _order:ByteOrder, _data:stdgo.AnyInterface):stdgo.Error return stdgo._internal.encoding.binary.Binary_write.write(_w, _order, _data);
    /**
        * Size returns how many bytes Write would generate to encode the value v, which
        * must be a fixed-size value or a slice of fixed-size values, or a pointer to such data.
        * If v is neither of these, Size returns -1.
    **/
    static public inline function size(_v:stdgo.AnyInterface):stdgo.GoInt return stdgo._internal.encoding.binary.Binary_size.size(_v);
    /**
        * AppendUvarint appends the varint-encoded form of x,
        * as generated by PutUvarint, to buf and returns the extended buffer.
    **/
    static public inline function appendUvarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.encoding.binary.Binary_appenduvarint.appendUvarint(_buf, _x);
    /**
        * PutUvarint encodes a uint64 into buf and returns the number of bytes written.
        * If the buffer is too small, PutUvarint will panic.
    **/
    static public inline function putUvarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt64):stdgo.GoInt return stdgo._internal.encoding.binary.Binary_putuvarint.putUvarint(_buf, _x);
    /**
        * Uvarint decodes a uint64 from buf and returns that value and the
        * number of bytes read (> 0). If an error occurred, the value is 0
        * and the number of bytes n is <= 0 meaning:
        * 
        * 	n == 0: buf too small
        * 	n  < 0: value larger than 64 bits (overflow)
        * 	        and -n is the number of bytes read
    **/
    static public inline function uvarint(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; } return stdgo._internal.encoding.binary.Binary_uvarint.uvarint(_buf);
    /**
        * AppendVarint appends the varint-encoded form of x,
        * as generated by PutVarint, to buf and returns the extended buffer.
    **/
    static public inline function appendVarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt64):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.encoding.binary.Binary_appendvarint.appendVarint(_buf, _x);
    /**
        * PutVarint encodes an int64 into buf and returns the number of bytes written.
        * If the buffer is too small, PutVarint will panic.
    **/
    static public inline function putVarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt64):stdgo.GoInt return stdgo._internal.encoding.binary.Binary_putvarint.putVarint(_buf, _x);
    /**
        * Varint decodes an int64 from buf and returns that value and the
        * number of bytes read (> 0). If an error occurred, the value is 0
        * and the number of bytes n is <= 0 with the following meaning:
        * 
        * 	n == 0: buf too small
        * 	n  < 0: value larger than 64 bits (overflow)
        * 	        and -n is the number of bytes read
    **/
    static public inline function varint(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt; } return stdgo._internal.encoding.binary.Binary_varint.varint(_buf);
    /**
        * ReadUvarint reads an encoded unsigned integer from r and returns it as a uint64.
        * The error is EOF only if no bytes were read.
        * If an EOF happens after reading some but not all the bytes,
        * ReadUvarint returns io.ErrUnexpectedEOF.
    **/
    static public inline function readUvarint(_r:stdgo._internal.io.Io_bytereader.ByteReader):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } return stdgo._internal.encoding.binary.Binary_readuvarint.readUvarint(_r);
    /**
        * ReadVarint reads an encoded signed integer from r and returns it as an int64.
        * The error is EOF only if no bytes were read.
        * If an EOF happens after reading some but not all the bytes,
        * ReadVarint returns io.ErrUnexpectedEOF.
    **/
    static public inline function readVarint(_r:stdgo._internal.io.Io_bytereader.ByteReader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return stdgo._internal.encoding.binary.Binary_readvarint.readVarint(_r);
}
