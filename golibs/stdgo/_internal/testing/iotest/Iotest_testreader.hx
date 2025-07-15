package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
function testReader(_r:stdgo._internal.io.Io_reader.Reader, _content:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L137"
        if (((_content.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = _r.read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L139"
            if (((_n != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L140"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("Read(0) = %d, %v, want 0, nil" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _r } : stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_smallbytereaderdott_smallbytereader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_smallbytereaderdotT_smallByteReader })) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_smallbytereaderdott_smallbytereader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_smallbytereaderdotT_smallByteReader }))), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L145"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L146"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L148"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_data, _content)) {
            //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L149"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll(small amounts) = %q\n\twant %q" : stdgo.GoString), new stdgo.AnyInterface(_data, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_content, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        };
        var __tmp__ = _r.read((new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L152"
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
            //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L153"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("Read(10) at EOF = %v, %v, want 0, EOF" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L156"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _r;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readseekerdotreadseeker.__type__stdgodot_internaldotiodotIo_readseekerdotReadSeeker) : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : false };
            }, _r = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L158"
                {
                    var __tmp__ = _r.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_off != (_content.length : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L159"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(0, 1) from EOF = %d, %v, want %d, nil" : stdgo.GoString), new stdgo.AnyInterface(_off, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface((_content.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                };
                var _middle = @:assignType ((_content.length) - ((_content.length) / (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L165"
                if ((_middle > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L166"
                    {
                        var __tmp__ = _r.seek((-1i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_off != (((_content.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) || (_err != null) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L167"
                            return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(-1, 1) from EOF = %d, %v, want %d, nil" : stdgo.GoString), new stdgo.AnyInterface(-_off, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), ({
                                final __t__ = _err;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), new stdgo.AnyInterface(((_content.length) - (1 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L169"
                    {
                        var __tmp__ = _r.seek(((-(_content.length) / (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_off != ((_middle - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) || (_err != null) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L170"
                            return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(%d, 1) from %d = %d, %v, want %d, nil" : stdgo.GoString), new stdgo.AnyInterface((-(_content.length) / (3 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(((_content.length) - (1 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_off, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), ({
                                final __t__ = _err;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), new stdgo.AnyInterface((_middle - (1 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L172"
                    {
                        var __tmp__ = _r.seek((1i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_off != (_middle : stdgo.GoInt64)) || (_err != null) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L173"
                            return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(+1, 1) from %d = %d, %v, want %d, nil" : stdgo.GoString), new stdgo.AnyInterface((_middle - (1 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_off, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), ({
                                final __t__ = _err;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), new stdgo.AnyInterface(_middle, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L178"
                {
                    var __tmp__ = _r.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_off != (_middle : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L179"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(0, 1) from %d = %d, %v, want %d, nil" : stdgo.GoString), new stdgo.AnyInterface(_middle, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_off, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface(_middle, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                };
                var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _r } : stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_smallbytereaderdott_smallbytereader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_smallbytereaderdotT_smallByteReader })) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_smallbytereaderdott_smallbytereader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_smallbytereaderdotT_smallByteReader }))), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L184"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L185"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d: %v" : stdgo.GoString), new stdgo.AnyInterface(_middle, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L187"
                if (!stdgo._internal.bytes.Bytes_equal.equal(_data, (_content.__slice__(_middle) : stdgo.Slice<stdgo.GoUInt8>))) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L188"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d = %q\n\twant %q" : stdgo.GoString), new stdgo.AnyInterface(_middle, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_data, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface((_content.__slice__(_middle) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L192"
                {
                    var __tmp__ = _r.seek(((_middle / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64), (0 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_off != ((_middle / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L193"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(%d, 0) from EOF = %d, %v, want %d, nil" : stdgo.GoString), new stdgo.AnyInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_off, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L195"
                {
                    var __tmp__ = _r.seek(((-(_content.length) / (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64), (2 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_off != (_middle : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L196"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(%d, 2) from %d = %d, %v, want %d, nil" : stdgo.GoString), new stdgo.AnyInterface((-(_content.length) / (3 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_off, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface(_middle, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                };
                {
                    var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _r } : stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_smallbytereaderdott_smallbytereader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_smallbytereaderdotT_smallByteReader })) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotiotestdotiotest_t_smallbytereaderdott_smallbytereader.__type__stdgodot_internaldottestingdotiotestdotIotest_t_smallbytereaderdotT_smallByteReader })));
                    _data = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L201"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L202"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d: %v" : stdgo.GoString), new stdgo.AnyInterface(_middle, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L204"
                if (!stdgo._internal.bytes.Bytes_equal.equal(_data, (_content.__slice__(_middle) : stdgo.Slice<stdgo.GoUInt8>))) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L205"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d = %q\n\twant %q" : stdgo.GoString), new stdgo.AnyInterface(_middle, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_data, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface((_content.__slice__(_middle) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L209"
                {
                    var __tmp__ = _r.seek(((_middle / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64), (0 : stdgo.GoInt)), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_off != ((_middle / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L210"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("Seek(%d, 0) from EOF = %d, %v, want %d, nil" : stdgo.GoString), new stdgo.AnyInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_off, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                };
                {
                    var __tmp__ = stdgo._internal.io.Io_readall.readAll(_r);
                    _data = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L213"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L214"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d: %v" : stdgo.GoString), new stdgo.AnyInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L216"
                if (!stdgo._internal.bytes.Bytes_equal.equal(_data, (_content.__slice__((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L217"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAll from offset %d = %q\n\twant %q" : stdgo.GoString), new stdgo.AnyInterface((_middle / (2 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_data, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface((_content.__slice__((_middle / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L221"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _r;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readeratdotreaderat.__type__stdgodot_internaldotiodotIo_readeratdotReaderAt) : stdgo._internal.io.Io_readerat.ReaderAt), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.io.Io_readerat.ReaderAt), _1 : false };
            }, _r = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _data = (new stdgo.Slice<stdgo.GoUInt8>((_content.length : stdgo.GoInt).toBasic(), ((_content.length) + (1 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L223"
                if (_data != null) for (_i => _ in _data) {
                    _data[(_i : stdgo.GoInt)] = (254 : stdgo.GoUInt8);
                };
                var __tmp__ = _r.readAt(_data, (0i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L227"
                if (((_n != (_data.length)) || (_err != null && ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) != (({
                    final __t__ = stdgo._internal.io.Io_eof.eOF;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L228"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(%d, 0) = %v, %v, want %d, nil or EOF" : stdgo.GoString), new stdgo.AnyInterface((_data.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), new stdgo.AnyInterface((_data.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L230"
                if (!stdgo._internal.bytes.Bytes_equal.equal(_data, _content)) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L231"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(%d, 0) = %q\n\twant %q" : stdgo.GoString), new stdgo.AnyInterface((_data.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_data, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_content, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
                {
                    var __tmp__ = _r.readAt((_data.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_data.length : stdgo.GoInt64));
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L235"
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
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L236"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(1, %d) = %v, %v, want 0, EOF" : stdgo.GoString), new stdgo.AnyInterface((_data.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L239"
                if (_data != null) for (_i => _ in _data) {
                    _data[(_i : stdgo.GoInt)] = (254 : stdgo.GoUInt8);
                };
                {
                    var __tmp__ = _r.readAt((_data.__slice__(0, _data.capacity) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64));
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L243"
                if (((_n != (_data.length)) || (({
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
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L244"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(%d, 0) = %v, %v, want %d, EOF" : stdgo.GoString), new stdgo.AnyInterface(_data.capacity, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), new stdgo.AnyInterface((_data.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L246"
                if (!stdgo._internal.bytes.Bytes_equal.equal(_data, _content)) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L247"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(%d, 0) = %q\n\twant %q" : stdgo.GoString), new stdgo.AnyInterface((_data.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_data, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_content, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L250"
                if (_data != null) for (_i => _ in _data) {
                    _data[(_i : stdgo.GoInt)] = (254 : stdgo.GoUInt8);
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L253"
                if (_data != null) for (_i => _ in _data) {
                    {
                        var __tmp__ = _r.readAt((_data.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoInt64));
                        _n = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L255"
                    if (((_n != (1 : stdgo.GoInt)) || (_err != null && (((_i != ((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) || (({
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
                    })) : Bool)) : Bool) : Bool)) {
                        var _want = @:assignType (("nil" : stdgo.GoString) : stdgo.GoString);
                        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L257"
                        if (_i == (((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                            _want = ("nil or EOF" : stdgo.GoString);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L260"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(1, %d) = %v, %v, want 1, %s" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L262"
                    if (_data[(_i : stdgo.GoInt)] != (_content[(_i : stdgo.GoInt)])) {
                        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L263"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("ReadAt(1, %d) = %q want %q" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_data.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface((_content.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L267"
        return (null : stdgo.Error);
    }
