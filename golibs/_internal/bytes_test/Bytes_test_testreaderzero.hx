package _internal.bytes_test;
function testReaderZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L280"
        {
            var _l = @:assignType ((stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_reader.Reader() : stdgo._internal.bytes.Bytes_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader })) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>).len() : stdgo.GoInt);
            if (_l != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L281"
                _t.errorf(("Len: got %d, want 0" : stdgo.GoString), new stdgo.AnyInterface(_l, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L284"
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_reader.Reader() : stdgo._internal.bytes.Bytes_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader })) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>).read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != ({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L285"
                _t.errorf(("Read: got %d, %v; want 0, io.EOF" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L288"
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_reader.Reader() : stdgo._internal.bytes.Bytes_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader })) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>).readAt((null : stdgo.Slice<stdgo.GoUInt8>), (11i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != ({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L289"
                _t.errorf(("ReadAt: got %d, %v; want 0, io.EOF" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L292"
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_reader.Reader() : stdgo._internal.bytes.Bytes_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader })) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>).readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_b != (0 : stdgo.GoUInt8)) || (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != ({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L293"
                _t.errorf(("ReadByte: got %d, %v; want 0, io.EOF" : stdgo.GoString), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L296"
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_reader.Reader() : stdgo._internal.bytes.Bytes_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader })) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>).readRune(), _ch:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (((_ch != ((0 : stdgo.GoInt32)) || _size != ((0 : stdgo.GoInt)) : Bool) || (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != ({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L297"
                _t.errorf(("ReadRune: got %d, %d, %v; want 0, 0, io.EOF" : stdgo.GoString), new stdgo.AnyInterface(_ch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L300"
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_reader.Reader() : stdgo._internal.bytes.Bytes_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader })) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>).seek((11i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), _offset:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_offset != (11i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L301"
                _t.errorf(("Seek: got %d, %v; want 11, nil" : stdgo.GoString), new stdgo.AnyInterface(_offset, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L304"
        {
            var _s = @:assignType ((stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_reader.Reader() : stdgo._internal.bytes.Bytes_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader })) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>).size() : stdgo.GoInt64);
            if (_s != ((0i64 : stdgo.GoInt64))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L305"
                _t.errorf(("Size: got %d, want 0" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L308"
        if ((stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_reader.Reader() : stdgo._internal.bytes.Bytes_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader })) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>).unreadByte() == null) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L309"
            _t.errorf(("UnreadByte: got nil, want error" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L312"
        if ((stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_reader.Reader() : stdgo._internal.bytes.Bytes_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader })) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>).unreadRune() == null) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L313"
            _t.errorf(("UnreadRune: got nil, want error" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L316"
        {
            var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_reader.Reader() : stdgo._internal.bytes.Bytes_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader })) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>).writeTo(stdgo._internal.io.Io_discard.discard), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L317"
                _t.errorf(("WriteTo: got %d, %v; want 0, nil" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
    }
