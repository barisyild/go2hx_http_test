package stdgo._internal.crypto.rand;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.internal.randutil.Randutil;
function _getRandom(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var _a = @:assignType (stdgo._internal.crypto.rand.Rand__uint8array._uint8Array.new_(new stdgo.AnyInterface((_b.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rand/rand_js.go#L39"
        stdgo._internal.crypto.rand.Rand__jscrypto._jsCrypto.call(("getRandomValues" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_a, _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_valuedotvalue.__type__stdgodot_internaldotsyscalldotjsdotJs_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_valuedotvalue.__type__stdgodot_internaldotsyscalldotjsdotJs_valuedotValue)));
        //"file:///Users/o/.go/go1.21.3/src/crypto/rand/rand_js.go#L40"
        stdgo._internal.syscall.js.Js_copybytestogo.copyBytesToGo(_b, _a?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/crypto/rand/rand_js.go#L41"
        return (null : stdgo.Error);
    }
