package _internal.bytes_test;
var equalFoldTests : stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_154.T__struct_154> = (new stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_154.T__struct_154>(11, 11, ...[
({ _s : ("abc" : stdgo.GoString), _t : ("abc" : stdgo.GoString), _out : true } : _internal.bytes_test.Bytes_test_t__struct_154.T__struct_154),
({ _s : ("ABcd" : stdgo.GoString), _t : ("ABcd" : stdgo.GoString), _out : true } : _internal.bytes_test.Bytes_test_t__struct_154.T__struct_154),
({ _s : ("123abc" : stdgo.GoString), _t : ("123ABC" : stdgo.GoString), _out : true } : _internal.bytes_test.Bytes_test_t__struct_154.T__struct_154),
({ _s : ("αβδ" : stdgo.GoString), _t : ("ΑΒΔ" : stdgo.GoString), _out : true } : _internal.bytes_test.Bytes_test_t__struct_154.T__struct_154),
({ _s : ("abc" : stdgo.GoString), _t : ("xyz" : stdgo.GoString), _out : false } : _internal.bytes_test.Bytes_test_t__struct_154.T__struct_154),
({ _s : ("abc" : stdgo.GoString), _t : ("XYZ" : stdgo.GoString), _out : false } : _internal.bytes_test.Bytes_test_t__struct_154.T__struct_154),
({ _s : ("abcdefghijk" : stdgo.GoString), _t : ("abcdefghijX" : stdgo.GoString), _out : false } : _internal.bytes_test.Bytes_test_t__struct_154.T__struct_154),
({ _s : ("abcdefghijk" : stdgo.GoString), _t : ("abcdefghijK" : stdgo.GoString), _out : true } : _internal.bytes_test.Bytes_test_t__struct_154.T__struct_154),
({ _s : ("abcdefghijK" : stdgo.GoString), _t : ("abcdefghijK" : stdgo.GoString), _out : true } : _internal.bytes_test.Bytes_test_t__struct_154.T__struct_154),
({ _s : ("abcdefghijkz" : stdgo.GoString), _t : ("abcdefghijKy" : stdgo.GoString), _out : false } : _internal.bytes_test.Bytes_test_t__struct_154.T__struct_154),
({ _s : ("abcdefghijKz" : stdgo.GoString), _t : ("abcdefghijKy" : stdgo.GoString), _out : false } : _internal.bytes_test.Bytes_test_t__struct_154.T__struct_154)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _t : ("" : stdgo.GoString), _out : false } : _internal.bytes_test.Bytes_test_t__struct_154.T__struct_154)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_154.T__struct_154>);
