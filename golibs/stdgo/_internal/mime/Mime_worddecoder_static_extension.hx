package stdgo._internal.mime;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:keep @:allow(stdgo._internal.mime.Mime.WordDecoder_asInterface) class WordDecoder_static_extension {
    @:keep
    @:tdfield
    static public function _convert( _d:stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder>, _buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _charset:stdgo.GoString, _content:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder> = _d;
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L316"
        if (stdgo._internal.strings.Strings_equalfold.equalFold(("utf-8" : stdgo.GoString), _charset?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L318"
            _buf.write(_content);
        } else if (stdgo._internal.strings.Strings_equalfold.equalFold(("iso-8859-1" : stdgo.GoString), _charset?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L320"
            if (_content != null) for (__0 => _c in _content) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L321"
                _buf.writeRune((_c : stdgo.GoInt32));
            };
        } else if (stdgo._internal.strings.Strings_equalfold.equalFold(("us-ascii" : stdgo.GoString), _charset?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L324"
            if (_content != null) for (__0 => _c in _content) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L325"
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L326"
                    _buf.writeRune((65533 : stdgo.GoInt32));
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L328"
                    _buf.writeByte(_c);
                };
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L332"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).charsetReader == null) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L333"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("mime: unhandled charset %q" : stdgo.GoString), new stdgo.AnyInterface(_charset, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            var __tmp__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).charsetReader(stdgo._internal.strings.Strings_tolower.toLower(_charset?.__copy__())?.__copy__(), stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_content), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader }))), _r:stdgo._internal.io.Io_reader.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L336"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L337"
                return _err;
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L339"
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })), _r);
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L340"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L343"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function decodeHeader( _d:stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder>, _header:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder> = _d;
        var _i = @:assignType (stdgo._internal.strings.Strings_index.index(_header?.__copy__(), ("=?" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L233"
        if (_i == ((-1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L234"
            return { _0 : _header?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L239"
        _buf.writeString((_header.__slice__(0, _i) : stdgo.GoString)?.__copy__());
        _header = (_header.__slice__(_i) : stdgo.GoString)?.__copy__();
        var _betweenWords = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L243"
        while (true) {
            var _start = @:assignType (stdgo._internal.strings.Strings_index.index(_header?.__copy__(), ("=?" : stdgo.GoString)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L245"
            if (_start == ((-1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L246"
                break;
            };
            var _cur = @:assignType (_start + ((("=?" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt);
            var _i = @:assignType (stdgo._internal.strings.Strings_index.index((_header.__slice__(_cur) : stdgo.GoString)?.__copy__(), ("?" : stdgo.GoString)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L251"
            if (_i == ((-1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L252"
                break;
            };
            var _charset = @:assignType ((_header.__slice__(_cur, (_cur + _i : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            _cur = (_cur + ((_i + ((("?" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L257"
            if (((_header.length) < (_cur + ((("Q??=" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L258"
                break;
            };
            var _encoding = @:assignType (_header[(_cur : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L261"
            _cur++;
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L263"
            if (_header[(_cur : stdgo.GoInt)] != ((63 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L264"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L266"
            _cur++;
            var _j = @:assignType (stdgo._internal.strings.Strings_index.index((_header.__slice__(_cur) : stdgo.GoString)?.__copy__(), ("?=" : stdgo.GoString)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L269"
            if (_j == ((-1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L270"
                break;
            };
            var _text = @:assignType ((_header.__slice__(_cur, (_cur + _j : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _end = @:assignType ((_cur + _j : stdgo.GoInt) + ((("?=" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt);
            var __tmp__ = stdgo._internal.mime.Mime__decode._decode(_encoding, _text?.__copy__()), _content:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L276"
            if (_err != null) {
                _betweenWords = false;
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L278"
                _buf.writeString((_header.__slice__(0, (_start + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _header = (_header.__slice__((_start + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L280"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L285"
            if (((_start > (0 : stdgo.GoInt) : Bool) && ((!_betweenWords || stdgo._internal.mime.Mime__hasnonwhitespace._hasNonWhitespace((_header.__slice__(0, _start) : stdgo.GoString)?.__copy__()) : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L286"
                _buf.writeString((_header.__slice__(0, _start) : stdgo.GoString)?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L289"
            {
                var _err = @:assignType (_d._convert((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _charset?.__copy__(), _content) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L290"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                };
            };
            _header = (_header.__slice__(_end) : stdgo.GoString)?.__copy__();
            _betweenWords = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L297"
        if (((_header.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L298"
            _buf.writeString(_header?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L301"
        return { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function decode( _d:stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder>, _word:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.mime.Mime_worddecoder.WordDecoder> = _d;
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L201"
        if ((((((_word.length) < (8 : stdgo.GoInt) : Bool) || !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_word?.__copy__(), ("=?" : stdgo.GoString)) : Bool) || !stdgo._internal.strings.Strings_hassuffix.hasSuffix(_word?.__copy__(), ("?=" : stdgo.GoString)) : Bool) || (stdgo._internal.strings.Strings_count.count(_word?.__copy__(), ("?" : stdgo.GoString)) != (4 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L202"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.mime.Mime__errinvalidword._errInvalidWord };
        };
        _word = (_word.__slice__((2 : stdgo.GoInt), ((_word.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_word?.__copy__(), ("?" : stdgo.GoString)), _charset:stdgo.GoString = __tmp__._0, _text:stdgo.GoString = __tmp__._1, __0:Bool = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L208"
        if (_charset == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L209"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.mime.Mime__errinvalidword._errInvalidWord };
        };
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_text?.__copy__(), ("?" : stdgo.GoString)), _encoding:stdgo.GoString = __tmp__._0, _text:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L212"
        if ((_encoding.length) != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L213"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.mime.Mime__errinvalidword._errInvalidWord };
        };
        var __tmp__ = stdgo._internal.mime.Mime__decode._decode(_encoding[(0 : stdgo.GoInt)], _text?.__copy__()), _content:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L217"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L218"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L222"
        {
            var _err = @:assignType (_d._convert((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _charset?.__copy__(), _content) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L223"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L225"
        return { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
}
