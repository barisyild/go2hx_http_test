package _internal.reflect_test;
function benchmarkFieldByName2(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _t = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_s3.S3() : _internal.reflect_test.Reflect_test_s3.S3), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s3dots3.__type___internaldotreflect_testdotReflect_test_s3dotS3), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_s3dots3.__type___internaldotreflect_testdotReflect_test_s3dotS3))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L286"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L287"
            while (_pb.next()) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L288"
                _t.fieldByName(("B" : stdgo.GoString));
            };
        });
    }
