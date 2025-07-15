package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function _upcomingHeaderKeys( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var _n = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L602"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r.peek((1 : stdgo.GoInt));
        var _s = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r.buffered() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L604"
        if (_s == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L605"
            return _n;
        };
        var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r.peek(_s), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L608"
        while ((((_peek.length) > (0 : stdgo.GoInt) : Bool) && (_n < (1000 : stdgo.GoInt) : Bool) : Bool)) {
            var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_peek, stdgo._internal.net.textproto.Textproto__nl._nl);
                _line = @:tmpset0 __tmp__._0;
                _peek = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L611"
            if (((_line.length == (0 : stdgo.GoInt)) || (((_line.length == (1 : stdgo.GoInt)) && (_line[(0 : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L613"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L615"
            if (((_line[(0 : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_line[(0 : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L617"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L619"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L621"
        return _n;
    }
    @:keep
    @:tdfield
    static public function readMIMEHeader( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L482"
        return stdgo._internal.net.textproto.Textproto__readmimeheader._readMIMEHeader(_r, (9223372036854775807i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
    }
    @:keep
    @:tdfield
    static public function readDotLines( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var _v:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L438"
        while (true) {
            var _line:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = _r.readLine();
                _line = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L441"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L442"
                if (({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == (({
                    final __t__ = stdgo._internal.io.Io_eof.eOF;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L445"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L449"
            if ((((_line.length) > (0 : stdgo.GoInt) : Bool) && (_line[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L450"
                if ((_line.length) == ((1 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L451"
                    break;
                };
                _line = (_line.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
            _v = (_v.__append__(_line?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L457"
        return { _0 : _v, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function readDotBytes( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L425"
        return stdgo._internal.io.Io_readall.readAll(_r.dotReader());
    }
    @:keep
    @:tdfield
    static public function _closeDot( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L410"
        if (({
            final value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dot;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L411"
            return;
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L414"
        while (({
            final value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dot;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L417"
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dot.read(_buf);
        };
    }
    @:keep
    @:tdfield
    static public function dotReader( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):stdgo._internal.io.Io_reader.Reader {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L309"
        _r._closeDot();
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dot = (stdgo.Go.setRef(({ _r : _r } : stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_t_dotreaderdott_dotreader.__type__stdgodot_internaldotnetdottextprotodotTextproto_t_dotreaderdotT_dotReader })) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader>);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L311"
        return stdgo.Go.asInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dot, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_t_dotreaderdott_dotreader.__type__stdgodot_internaldotnetdottextprotodotTextproto_t_dotreaderdotT_dotReader }));
    }
    @:keep
    @:tdfield
    static public function readResponse( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>, _expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var _code = (0 : stdgo.GoInt), _message = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = _r._readCodeLine(_expectCode), _code:stdgo.GoInt = __tmp__._0, _continued:Bool = __tmp__._1, _message:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _multi = @:assignType (_continued : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L269"
        while (_continued) {
            var __tmp__ = _r.readLine(), _line:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L271"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L272"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err };
                    _code = __tmp__._0;
                    _message = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            var _code2:stdgo.GoInt = (0 : stdgo.GoInt);
            var _moreMessage:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.net.textproto.Textproto__parsecodeline._parseCodeLine(_line?.__copy__(), (0 : stdgo.GoInt));
                _code2 = @:tmpset0 __tmp__._0;
                _continued = @:tmpset0 __tmp__._1;
                _moreMessage = @:tmpset0 __tmp__._2?.__copy__();
                _err = @:tmpset0 __tmp__._3;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L278"
            if (((_err != null) || (_code2 != _code) : Bool)) {
                _message = (_message + ((("\n" : stdgo.GoString) + stdgo._internal.strings.Strings_trimright.trimRight(_line?.__copy__(), ("\r\n" : stdgo.GoString))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _continued = true;
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L281"
                continue;
            };
            _message = (_message + ((("\n" : stdgo.GoString) + _moreMessage?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L285"
        if (((_err != null && _multi : Bool) && (_message != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.textproto.Textproto_error.Error(_code, _message?.__copy__()) : stdgo._internal.net.textproto.Textproto_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_errordoterror.__type__stdgodot_internaldotnetdottextprotodotTextproto_errordotError })) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_errordoterror.__type__stdgodot_internaldotnetdottextprotodotTextproto_errordotError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L289"
        return { _0 : _code, _1 : _message, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function readCodeLine( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>, _expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var _code = (0 : stdgo.GoInt), _message = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = _r._readCodeLine(_expectCode), _code:stdgo.GoInt = __tmp__._0, _continued:Bool = __tmp__._1, _message:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L234"
        if (((_err == null) && _continued : Bool)) {
            _err = stdgo.Go.asInterface(((("unexpected multi-line response: " : stdgo.GoString) + _message?.__copy__() : stdgo.GoString) : stdgo._internal.net.textproto.Textproto_protocolerror.ProtocolError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_protocolerrordotprotocolerror.__type__stdgodot_internaldotnetdottextprotodotTextproto_protocolerrordotProtocolError);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L237"
        return { _0 : _code, _1 : _message, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function _readCodeLine( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>, _expectCode:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var _code = (0 : stdgo.GoInt), _continued = false, _message = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = _r.readLine(), _line:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L189"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L190"
            return { _0 : _code, _1 : _continued, _2 : _message, _3 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L192"
        return stdgo._internal.net.textproto.Textproto__parsecodeline._parseCodeLine(_line?.__copy__(), _expectCode);
    }
    @:keep
    @:tdfield
    static public function _skipSpace( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var _n = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L172"
        while (true) {
            var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L174"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L176"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L178"
            if (((_c != (32 : stdgo.GoUInt8)) && (_c != (9 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L179"
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r.unreadByte();
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L180"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L182"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L184"
        return _n;
    }
    @:keep
    @:tdfield
    static public function _readContinuedLineSlice( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>, _validateFirstLine:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L124"
        if (_validateFirstLine == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L125"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("missing validateFirstLine func" : stdgo.GoString)) };
        };
        var __tmp__ = _r._readLineSlice(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L130"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L131"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L133"
        if ((_line.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L134"
            return { _0 : _line, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L137"
        {
            var _err = @:assignType (_validateFirstLine(_line) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L138"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L145"
        if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r.buffered() > (1 : stdgo.GoInt) : Bool)) {
            var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r.peek((2 : stdgo.GoInt)), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L147"
            if (((((_peek.length) > (0 : stdgo.GoInt) : Bool) && ((stdgo._internal.net.textproto.Textproto__isasciiletter._isASCIILetter(_peek[(0 : stdgo.GoInt)]) || (_peek[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) : Bool) || (((_peek.length) == ((2 : stdgo.GoInt)) && _peek[(0 : stdgo.GoInt)] == ((13 : stdgo.GoUInt8)) : Bool) && _peek[(1 : stdgo.GoInt)] == ((10 : stdgo.GoUInt8)) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L149"
                return { _0 : stdgo._internal.net.textproto.Textproto__trim._trim(_line), _1 : (null : stdgo.Error) };
            };
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(stdgo._internal.net.textproto.Textproto__trim._trim(_line) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L158"
        while ((_r._skipSpace() > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = _r._readLineSlice(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L160"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L161"
                break;
            };
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__append__((32 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__append__(...(stdgo._internal.net.textproto.Textproto__trim._trim(_line) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L166"
        return { _0 : (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function readContinuedLineBytes( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var __tmp__ = _r._readContinuedLineSlice(stdgo._internal.net.textproto.Textproto__novalidation._noValidation), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L113"
        if (_line != null) {
            _line = stdgo._internal.bytes.Bytes_clone.clone(_line);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L116"
        return { _0 : _line, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function readContinuedLine( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var __tmp__ = _r._readContinuedLineSlice(stdgo._internal.net.textproto.Textproto__novalidation._noValidation), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L92"
        return { _0 : (_line : stdgo.GoString)?.__copy__(), _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _readLineSlice( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L53"
        _r._closeDot();
        var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L55"
        while (true) {
            var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r.readLine(), _l:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _more:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L57"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L58"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L61"
            if (((_line == null) && !_more : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L62"
                return { _0 : _l, _1 : (null : stdgo.Error) };
            };
            _line = (_line.__append__(...(_l : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L65"
            if (!_more) {
                //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L66"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L69"
        return { _0 : _line, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function readLineBytes( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var __tmp__ = _r._readLineSlice(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L46"
        if (_line != null) {
            _line = stdgo._internal.bytes.Bytes_clone.clone(_line);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L49"
        return { _0 : _line, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function readLine( _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = _r;
        var __tmp__ = _r._readLineSlice(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/reader.go#L40"
        return { _0 : (_line : stdgo.GoString)?.__copy__(), _1 : _err };
    }
}
