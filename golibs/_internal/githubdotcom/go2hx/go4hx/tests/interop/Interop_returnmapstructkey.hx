package _internal.githubdotcom.go2hx.go4hx.tests.interop;
function returnMapStructKey():stdgo.GoMap<_internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_structkey.StructKey, stdgo.GoInt> {
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/interop/interop.go#L20"
        return ({
            final x = new stdgo.GoMap.GoObjectMap<_internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_structkey.StructKey, stdgo.GoInt>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.named("_internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_structkey.StructKey", [], stdgo._internal.internal.reflect.GoType.structType([{ name : "_i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set((new _internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_structkey.StructKey((0 : stdgo.GoInt)) : _internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_structkey.StructKey), (1 : stdgo.GoInt));
            cast x;
        } : stdgo.GoMap<_internal.githubdotcom.go2hx.go4hx.tests.interop.Interop_structkey.StructKey, stdgo.GoInt>);
    }
