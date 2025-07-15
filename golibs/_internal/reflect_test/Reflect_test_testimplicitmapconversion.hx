package _internal.reflect_test;
function testImplicitMapConversion(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L20"
        {
            var _m = (({
                final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
            var _mv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L24"
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((2 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__());
            var __tmp__ = (_m != null && _m.__exists__((1 : stdgo.GoInt)) ? { _0 : _m[(1 : stdgo.GoInt)], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _x:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L26"
            if (_x != ((2 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L27"
                _t.errorf(("#1 after SetMapIndex(1,2): %d, %t (map=%v)" : stdgo.GoString), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L29"
            {
                var _n = @:assignType (stdgo.Go.typeAssert(_mv.mapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()).interface_(), stdgo._internal.internal.reflect.GoType.basic(int_kind)) : stdgo.GoInt);
                if (_n != ((2 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L30"
                    _t.errorf(("#1 MapIndex(1) = %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L33"
        {
            var _m = ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>);
            var _mv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L37"
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((2 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__());
            var __tmp__ = (_m != null && _m.__exists__(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) ? { _0 : _m[new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _x:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L39"
            if (_x != ((2 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L40"
                _t.errorf(("#2 after SetMapIndex(1,2): %d, %t (map=%v)" : stdgo.GoString), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L42"
            {
                var _n = @:assignType (stdgo.Go.typeAssert(_mv.mapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()).interface_(), stdgo._internal.internal.reflect.GoType.basic(int_kind)) : stdgo.GoInt);
                if (_n != ((2 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L43"
                    _t.errorf(("#2 MapIndex(1) = %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L46"
        {
            var _m = (({
                final x = new stdgo.GoMap.GoIntMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoInt, stdgo.AnyInterface>) : stdgo.GoMap<stdgo.GoInt, stdgo.AnyInterface>);
            var _mv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L50"
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((2 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__());
            var __tmp__ = (_m != null && _m.__exists__((1 : stdgo.GoInt)) ? { _0 : _m[(1 : stdgo.GoInt)], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _x:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L52"
            if (_x != (new stdgo.AnyInterface((2 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L53"
                _t.errorf(("#3 after SetMapIndex(1,2): %d, %t (map=%v)" : stdgo.GoString), _x, new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L55"
            {
                var _n = @:assignType (stdgo.Go.typeAssert(_mv.mapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()).interface_(), stdgo._internal.internal.reflect.GoType.basic(int_kind)) : stdgo.GoInt);
                if (_n != ((2 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L56"
                    _t.errorf(("#3 MapIndex(1) = %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L59"
        {
            var _m = ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
            var _mv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L63"
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((2 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__());
            var __tmp__ = (_m != null && _m.__exists__(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) ? { _0 : _m[new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _x:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L65"
            if (_x != (new stdgo.AnyInterface((2 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L66"
                _t.errorf(("#4 after SetMapIndex(1,2): %d, %t (map=%v)" : stdgo.GoString), _x, new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L68"
            {
                var _n = @:assignType (stdgo.Go.typeAssert(_mv.mapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()).interface_(), stdgo._internal.internal.reflect.GoType.basic(int_kind)) : stdgo.GoInt);
                if (_n != ((2 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L69"
                    _t.errorf(("#4 MapIndex(1) = %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L72"
        {
            var _m = (({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.io.Io_reader.Reader, stdgo._internal.io.Io_writer.Writer>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader);
                x.__defaultValue__ = () -> (null : stdgo._internal.io.Io_writer.Writer);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.io.Io_reader.Reader, stdgo._internal.io.Io_writer.Writer>) : stdgo.GoMap<stdgo._internal.io.Io_reader.Reader, stdgo._internal.io.Io_writer.Writer>);
            var _mv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _b1 = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
            var _b2 = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L78"
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_b1, _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_b2, _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))))?.__copy__());
            var __tmp__ = (_m != null && _m.__exists__(stdgo.Go.asInterface(_b1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))) ? { _0 : _m[stdgo.Go.asInterface(_b1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))], _1 : true } : { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : false }), _x:stdgo._internal.io.Io_writer.Writer = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L80"
            if (({
                final __t__ = _x;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != (new stdgo.AnyInterface(stdgo.Go.asInterface(_b2, _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L81"
                _t.errorf(("#5 after SetMapIndex(b1, b2): %p (!= %p), %t (map=%v)" : stdgo.GoString), ({
                    final __t__ = _x;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), new stdgo.AnyInterface(stdgo.Go.asInterface(_b2, _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L83"
            {
                var _p = @:assignType (_mv.mapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_b1, _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))))?.__copy__()).elem().unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                if (_p != ((new stdgo.AnyInterface(_b2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L84"
                    _t.errorf(("#5 MapIndex(b1) = %#x want %p" : stdgo.GoString), new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_b2, _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L87"
        {
            var _m = ({
                final x = new stdgo.GoMap.GoChanMap<stdgo.Chan<stdgo.GoInt>, stdgo.Chan<stdgo.GoInt>>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Chan<stdgo.GoInt>, stdgo.Chan<stdgo.GoInt>>);
            var _mv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.chanType(2, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _c1 = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            var _c2 = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L93"
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_c1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_c2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__());
            var __tmp__ = (_m != null && _m.__exists__(_c1) ? { _0 : _m[_c1], _1 : true } : { _0 : (null : stdgo.Chan<stdgo.GoInt>), _1 : false }), _x:stdgo.Chan<stdgo.GoInt> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L95"
            if (_x != (_c2)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L96"
                _t.errorf(("#6 after SetMapIndex(c1, c2): %p (!= %p), %t (map=%v)" : stdgo.GoString), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface(_c2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.chanType(2, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L98"
            {
                var _p = @:assignType (_mv.mapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_c1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__()).unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                if (_p != (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_c2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))).unsafePointer())) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L99"
                    _t.errorf(("#6 MapIndex(c1) = %#x want %p" : stdgo.GoString), new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))), new stdgo.AnyInterface(_c2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L102"
        {
            {};
            var _m = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<_internal.reflect_test.Reflect_test_t_testimplicitmapconversion___localname___mybuffer_2646.T_testImplicitMapConversion___localname___MyBuffer_2646>, stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<_internal.reflect_test.Reflect_test_t_testimplicitmapconversion___localname___mybuffer_2646.T_testImplicitMapConversion___localname___MyBuffer_2646>, stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>>);
            var _mv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testimplicitmapconversion___localname___mybuffer_2646dott_testimplicitmapconversion___localname___mybuffer_2646.__type___internaldotreflect_testdotReflect_test_t_testimplicitmapconversion___localname___mybuffer_2646dotT_testImplicitMapConversion___localname___MyBuffer_2646 }) }, { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _b1 = (stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_t_testimplicitmapconversion___localname___mybuffer_2646.T_testImplicitMapConversion___localname___MyBuffer_2646), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testimplicitmapconversion___localname___mybuffer_2646dott_testimplicitmapconversion___localname___mybuffer_2646.__type___internaldotreflect_testdotReflect_test_t_testimplicitmapconversion___localname___mybuffer_2646dotT_testImplicitMapConversion___localname___MyBuffer_2646 })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t_testimplicitmapconversion___localname___mybuffer_2646.T_testImplicitMapConversion___localname___MyBuffer_2646>);
            var _b2 = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L109"
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_b1, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testimplicitmapconversion___localname___mybuffer_2646dott_testimplicitmapconversion___localname___mybuffer_2646.__type___internaldotreflect_testdotReflect_test_t_testimplicitmapconversion___localname___mybuffer_2646dotT_testImplicitMapConversion___localname___MyBuffer_2646), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testimplicitmapconversion___localname___mybuffer_2646dott_testimplicitmapconversion___localname___mybuffer_2646.__type___internaldotreflect_testdotReflect_test_t_testimplicitmapconversion___localname___mybuffer_2646dotT_testImplicitMapConversion___localname___MyBuffer_2646 }))))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_b2, _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))))?.__copy__());
            var __tmp__ = (_m != null && _m.__exists__(_b1) ? { _0 : _m[_b1], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _1 : false }), _x:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L111"
            if (_x != (_b2)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L112"
                _t.errorf(("#7 after SetMapIndex(b1, b2): %p (!= %p), %t (map=%v)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_x, _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))), new stdgo.AnyInterface(stdgo.Go.asInterface(_b2, _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testimplicitmapconversion___localname___mybuffer_2646dott_testimplicitmapconversion___localname___mybuffer_2646.__type___internaldotreflect_testdotReflect_test_t_testimplicitmapconversion___localname___mybuffer_2646dotT_testImplicitMapConversion___localname___MyBuffer_2646 }) }, { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }) }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L114"
            {
                var _p = @:assignType (_mv.mapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_b1, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testimplicitmapconversion___localname___mybuffer_2646dott_testimplicitmapconversion___localname___mybuffer_2646.__type___internaldotreflect_testdotReflect_test_t_testimplicitmapconversion___localname___mybuffer_2646dotT_testImplicitMapConversion___localname___MyBuffer_2646), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testimplicitmapconversion___localname___mybuffer_2646dott_testimplicitmapconversion___localname___mybuffer_2646.__type___internaldotreflect_testdotReflect_test_t_testimplicitmapconversion___localname___mybuffer_2646dotT_testImplicitMapConversion___localname___MyBuffer_2646 }))))?.__copy__()).unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                if (_p != ((new stdgo.AnyInterface(_b2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L115"
                    _t.errorf(("#7 MapIndex(b1) = %#x want %p" : stdgo.GoString), new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_b2, _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))));
                };
            };
        };
    }
