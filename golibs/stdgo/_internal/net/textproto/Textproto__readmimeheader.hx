package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function _readMIMEHeader(_r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>, _maxMemory:stdgo.GoInt64, _maxHeaders:stdgo.GoInt64):{ var _0 : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader; var _1 : stdgo.Error; } {
        var _strs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _hint = @:assignType (_r._upcomingHeaderKeys() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L493"
        if ((_hint > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L494"
            if ((_hint > (1000 : stdgo.GoInt) : Bool)) {
                _hint = (1000 : stdgo.GoInt);
            };
            _strs = (new stdgo.Slice<stdgo.GoString>((_hint : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        var _m = @:assignType ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader);
        _maxMemory = (_maxMemory - ((400i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        {};
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L509"
        {
            var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r.peek((1 : stdgo.GoInt)), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && (((_buf[(0 : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_buf[(0 : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                var __tmp__ = _r._readLineSlice(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L511"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L512"
                    return { _0 : _m, _1 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L514"
                return { _0 : _m, _1 : stdgo.Go.asInterface(((("malformed MIME header initial line: " : stdgo.GoString) + (_line : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_protocolerrordotprotocolerror.__type__stdgodot_internaldotnetdottextprotodotTextproto_protocolerrordotProtocolError) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L517"
        while (true) {
            var __tmp__ = _r._readContinuedLineSlice(stdgo._internal.net.textproto.Textproto__musthavefieldnamecolon._mustHaveFieldNameColon), _kv:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L519"
            if ((_kv.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L520"
                return { _0 : _m, _1 : _err };
            };
            var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_kv, stdgo._internal.net.textproto.Textproto__colon._colon), _k:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _v:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _ok:Bool = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L525"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L526"
                return { _0 : _m, _1 : stdgo.Go.asInterface(((("malformed MIME header line: " : stdgo.GoString) + (_kv : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_protocolerrordotprotocolerror.__type__stdgodot_internaldotnetdottextprotodotTextproto_protocolerrordotProtocolError) };
            };
            var __tmp__ = stdgo._internal.net.textproto.Textproto__canonicalmimeheaderkey._canonicalMIMEHeaderKey(_k), _key:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L529"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L530"
                return { _0 : _m, _1 : stdgo.Go.asInterface(((("malformed MIME header line: " : stdgo.GoString) + (_kv : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_protocolerrordotprotocolerror.__type__stdgodot_internaldotnetdottextprotodotTextproto_protocolerrordotProtocolError) };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L532"
            if (_v != null) for (__0 => _c in _v) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L533"
                if (!stdgo._internal.net.textproto.Textproto__validheadervaluebyte._validHeaderValueByte(_c)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L534"
                    return { _0 : _m, _1 : stdgo.Go.asInterface(((("malformed MIME header line: " : stdgo.GoString) + (_kv : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_protocolerrordotprotocolerror.__type__stdgodot_internaldotnetdottextprotodotTextproto_protocolerrordotProtocolError) };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L541"
            if (_key == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L542"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L545"
            _maxHeaders--;
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L546"
            if ((_maxHeaders < (0i64 : stdgo.GoInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L547"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("message too large" : stdgo.GoString)) };
            };
            var _value = @:assignType ((stdgo._internal.bytes.Bytes_trimleft.trimLeft(_v, (" \t" : stdgo.GoString)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _vv = (_m[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L554"
            if (_vv == null) {
                _maxMemory = (_maxMemory - ((_key.length : stdgo.GoInt64)) : stdgo.GoInt64);
                _maxMemory = (_maxMemory - ((200i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            };
            _maxMemory = (_maxMemory - ((_value.length : stdgo.GoInt64)) : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L559"
            if ((_maxMemory < (0i64 : stdgo.GoInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L562"
                return { _0 : _m, _1 : stdgo._internal.errors.Errors_new_.new_(("message too large" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L564"
            if (((_vv == null) && ((_strs.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                {
                    final __tmp__0 = (_strs.__slice__(0, (1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    final __tmp__1 = (_strs.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    _vv = @:binopAssign __tmp__0;
                    _strs = @:binopAssign __tmp__1;
                };
                _vv[(0 : stdgo.GoInt)] = _value?.__copy__();
                _m[_key] = _vv;
            } else {
                _m[_key] = (_vv.__append__(_value?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L576"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L577"
                return { _0 : _m, _1 : _err };
            };
        };
    }
