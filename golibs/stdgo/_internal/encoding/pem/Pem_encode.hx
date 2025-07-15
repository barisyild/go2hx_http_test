package stdgo._internal.encoding.pem;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
function encode(_out:stdgo._internal.io.Io_writer.Writer, _b:stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L242"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).headers != null) for (_k => _ in (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).headers) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L243"
            if (stdgo._internal.strings.Strings_contains.contains(_k?.__copy__(), (":" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L244"
                return stdgo._internal.errors.Errors_new_.new_(("pem: cannot encode a header key that contains a colon" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L251"
        {
            var __tmp__ = _out.write((stdgo._internal.encoding.pem.Pem__pemstart._pemStart.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L252"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L254"
        {
            var __tmp__ = _out.write((((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type + ("-----\n" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L255"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L258"
        if ((((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).headers.length) > (0 : stdgo.GoInt) : Bool)) {
            {};
            var _h = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).headers.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _hasProcType = @:assignType (false : Bool);
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L262"
            if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).headers != null) for (_k => _ in (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).headers) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L263"
                if (_k == (("Proc-Type" : stdgo.GoString))) {
                    _hasProcType = true;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L265"
                    continue;
                };
                _h = (_h.__append__(_k?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L271"
            if (_hasProcType) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L272"
                {
                    var _err = @:assignType (stdgo._internal.encoding.pem.Pem__writeheader._writeHeader(_out, ("Proc-Type" : stdgo.GoString), ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).headers[("Proc-Type" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L273"
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L277"
            stdgo._internal.sort.Sort_strings.strings(_h);
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L278"
            if (_h != null) for (__2 => _k in _h) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L279"
                {
                    var _err = @:assignType (stdgo._internal.encoding.pem.Pem__writeheader._writeHeader(_out, _k?.__copy__(), ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).headers[_k] ?? ("" : stdgo.GoString))?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L280"
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L283"
            {
                var __tmp__ = _out.write(stdgo._internal.encoding.pem.Pem__nl._nl), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L284"
                    return _err;
                };
            };
        };
        var _breaker:stdgo._internal.encoding.pem.Pem_t_linebreaker.T_lineBreaker = ({} : stdgo._internal.encoding.pem.Pem_t_linebreaker.T_lineBreaker);
        _breaker._out = _out;
        var _b64 = @:assignType (stdgo._internal.encoding.base64.Base64_newencoder.newEncoder(stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, stdgo.Go.asInterface((stdgo.Go.setRef(_breaker, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotpemdotpem_t_linebreakerdott_linebreaker.__type__stdgodot_internaldotencodingdotpemdotPem_t_linebreakerdotT_lineBreaker })) : stdgo.Ref<stdgo._internal.encoding.pem.Pem_t_linebreaker.T_lineBreaker>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotpemdotpem_t_linebreakerdott_linebreaker.__type__stdgodot_internaldotencodingdotpemdotPem_t_linebreakerdotT_lineBreaker }))) : stdgo._internal.io.Io_writecloser.WriteCloser);
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L292"
        {
            var __tmp__ = _b64.write((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bytes), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L293"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L295"
        _b64.close();
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L296"
        _breaker.close();
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L298"
        {
            var __tmp__ = _out.write((stdgo._internal.encoding.pem.Pem__pemend._pemEnd.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L299"
                return _err;
            };
        };
        var __tmp__ = _out.write((((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type + ("-----\n" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L302"
        return _err;
    }
