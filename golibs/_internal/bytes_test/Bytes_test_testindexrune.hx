package _internal.bytes_test;
function testIndexRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_150.T__struct_150>(19, 19, ...[
({ _in : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _rune : (97 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _rune : (9786 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : ("foo" : stdgo.GoString), _rune : (9785 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : ("foo" : stdgo.GoString), _rune : (111 : stdgo.GoInt32), _want : (1 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : ("foo☺bar" : stdgo.GoString), _rune : (9786 : stdgo.GoInt32), _want : (3 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : ("foo☺☻☹bar" : stdgo.GoString), _rune : (9785 : stdgo.GoInt32), _want : (9 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : ("a A x" : stdgo.GoString), _rune : (65 : stdgo.GoInt32), _want : (2 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : ("some_text=some_value" : stdgo.GoString), _rune : (61 : stdgo.GoInt32), _want : (9 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : ("☺a" : stdgo.GoString), _rune : (97 : stdgo.GoInt32), _want : (3 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : ("a☻☺b" : stdgo.GoString), _rune : (9786 : stdgo.GoInt32), _want : (4 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : ("�" : stdgo.GoString), _rune : (65533 : stdgo.GoInt32), _want : (0 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : (stdgo.Go.str(255) : stdgo.GoString)?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : (0 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : ("☻x�" : stdgo.GoString), _rune : (65533 : stdgo.GoInt32), _want : ((("☻x" : stdgo.GoString) : stdgo.GoString).length) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : (stdgo.Go.str("☻x", 226, 152) : stdgo.GoString)?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : ((("☻x" : stdgo.GoString) : stdgo.GoString).length) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : (stdgo.Go.str("☻x", 226, 152, "�") : stdgo.GoString)?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : ((("☻x" : stdgo.GoString) : stdgo.GoString).length) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : (stdgo.Go.str("☻x", 226, 152, "x") : stdgo.GoString)?.__copy__(), _rune : (65533 : stdgo.GoInt32), _want : ((("☻x" : stdgo.GoString) : stdgo.GoString).length) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : (stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128) : stdgo.GoString)?.__copy__(), _rune : (-1 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : (stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128) : stdgo.GoString)?.__copy__(), _rune : (55296 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150),
({ _in : (stdgo.Go.str("a☺b☻c☹d", 226, 152, "�", 255, "�", 237, 160, 128) : stdgo.GoString)?.__copy__(), _rune : (1114112 : stdgo.GoInt32), _want : (-1 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150)].concat([for (i in 19 ... (19 > 19 ? 19 : 19 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _rune : (0 : stdgo.GoInt32), _want : (0 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_t__struct_150.T__struct_150)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_150.T__struct_150>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L442"
        if (_tests != null) for (__0 => _tt in _tests) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L443"
            {
                var _got = @:assignType (stdgo._internal.bytes.Bytes_indexrune.indexRune((_tt._in : stdgo.Slice<stdgo.GoUInt8>), _tt._rune) : stdgo.GoInt);
                if (_got != (_tt._want)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L444"
                    _t.errorf(("IndexRune(%q, %d) = %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._rune, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_tt._want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
        };
        var _haystack = ((("test世界" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _allocs = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L450"
            {
                var _i = @:assignType (stdgo._internal.bytes.Bytes_indexrune.indexRune(_haystack, (115 : stdgo.GoInt32)) : stdgo.GoInt);
                if (_i != ((2 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L451"
                    _t.fatalf(("\'s\' at %d; want 2" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L453"
            {
                var _i = @:assignType (stdgo._internal.bytes.Bytes_indexrune.indexRune(_haystack, (19990 : stdgo.GoInt32)) : stdgo.GoInt);
                if (_i != ((4 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L454"
                    _t.fatalf(("\'世\' at %d; want 4" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
        }) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L457"
        if (_allocs != ((0 : stdgo.GoFloat64))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L458"
            _t.errorf(("expected no allocations, got %f" : stdgo.GoString), new stdgo.AnyInterface(_allocs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
        };
    }
