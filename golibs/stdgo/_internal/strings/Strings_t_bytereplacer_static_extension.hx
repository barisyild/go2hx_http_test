package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.strings.Strings.T_byteReplacer_asInterface) class T_byteReplacer_static_extension {
    @:keep
    @:tdfield
    static public function writeString( _r:stdgo.Ref<stdgo._internal.strings.Strings_t_bytereplacer.T_byteReplacer>, _w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_t_bytereplacer.T_byteReplacer> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _sw = @:assignType (stdgo._internal.strings.Strings__getstringwriter._getStringWriter(_w) : stdgo._internal.io.Io_stringwriter.StringWriter);
        var _last = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L460"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _b = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L462"
                if (_r[(_b : stdgo.GoInt)] == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L463"
                    {
                        _i++;
                        continue;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L465"
                if (_last != (_i)) {
                    var __tmp__ = _sw.writeString((_s.__slice__(_last, _i) : stdgo.GoString).__copy__()), _wn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    _n = (_n + (_wn) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L468"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L469"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
_last = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
var __tmp__ = _w.write((_r.__slice__(_b, ((_b : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
_n = (_n + (_nw) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L475"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L476"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L479"
        if (_last != ((_s.length))) {
            var __tmp__ = _sw.writeString((_s.__slice__(_last) : stdgo.GoString)?.__copy__()), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = (_n + (_nw) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L482"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L483"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L486"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function replace( _r:stdgo.Ref<stdgo._internal.strings.Strings_t_bytereplacer.T_byteReplacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_t_bytereplacer.T_byteReplacer> = _r;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L442"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _b = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L444"
                if (_r[(_b : stdgo.GoInt)] != (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L445"
                    if (_buf == null) {
                        _buf = (_s : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    _buf[(_i : stdgo.GoInt)] = _r[(_b : stdgo.GoInt)];
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L451"
        if (_buf == null) {
            //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L452"
            return _s?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L454"
        return (_buf : stdgo.GoString)?.__copy__();
    }
}
