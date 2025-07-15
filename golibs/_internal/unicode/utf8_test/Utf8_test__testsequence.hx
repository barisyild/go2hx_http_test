package _internal.unicode.utf8_test;
function _testSequence(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _s:stdgo.GoString):Void {
        {};
        var _index = (new stdgo.Slice<_internal.unicode.utf8_test.Utf8_test_t__testsequence___localname___info_8684.T__testSequence___localname___info_8684>((_s.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_s.length : stdgo.GoInt).toBasic() > 0 ? (_s.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.unicode.utf8_test.Utf8_test_t__testsequence___localname___info_8684.T__testSequence___localname___info_8684)]) : stdgo.Slice<_internal.unicode.utf8_test.Utf8_test_t__testsequence___localname___info_8684.T__testSequence___localname___info_8684>);
        var _b = (_s : stdgo.Slice<stdgo.GoUInt8>);
        var _si = @:assignType (0 : stdgo.GoInt);
        var _j = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L354"
        if (_s != null) for (_i => _r in _s) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L355"
            if (_si != (_i)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L356"
                _t.errorf(("Sequence(%q) mismatched index %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_si, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L357"
                return;
            };
            _index[(_j : stdgo.GoInt)] = (new _internal.unicode.utf8_test.Utf8_test_t__testsequence___localname___info_8684.T__testSequence___localname___info_8684(_i, _r) : _internal.unicode.utf8_test.Utf8_test_t__testsequence___localname___info_8684.T__testSequence___localname___info_8684);
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L360"
            _j++;
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _r1:stdgo.GoInt32 = __tmp__._0, _size1:stdgo.GoInt = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L362"
            if (_r != (_r1)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L363"
                _t.errorf(("DecodeRune(%q) = %#04x, want %#04x" : stdgo.GoString), new stdgo.AnyInterface((_s.__slice__(_i) : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_r1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L364"
                return;
            };
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _r2:stdgo.GoInt32 = __tmp__._0, _size2:stdgo.GoInt = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L367"
            if (_r != (_r2)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L368"
                _t.errorf(("DecodeRuneInString(%q) = %#04x, want %#04x" : stdgo.GoString), new stdgo.AnyInterface((_s.__slice__(_i) : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_r2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L369"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L371"
            if (_size1 != (_size2)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L372"
                _t.errorf(("DecodeRune/DecodeRuneInString(%q) size mismatch %d/%d" : stdgo.GoString), new stdgo.AnyInterface((_s.__slice__(_i) : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_size1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_size2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L373"
                return;
            };
            _si = (_si + (_size1) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L377"
        _j--;
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L378"
        {
            _si = (_s.length);
            while ((_si > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastrune.decodeLastRune((_b.__slice__((0 : stdgo.GoInt), _si) : stdgo.Slice<stdgo.GoUInt8>)), _r1:stdgo.GoInt32 = __tmp__._0, _size1:stdgo.GoInt = __tmp__._1;
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString((_s.__slice__((0 : stdgo.GoInt), _si) : stdgo.GoString)?.__copy__()), _r2:stdgo.GoInt32 = __tmp__._0, _size2:stdgo.GoInt = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L381"
                if (_size1 != (_size2)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L382"
                    _t.errorf(("DecodeLastRune/DecodeLastRuneInString(%q, %d) size mismatch %d/%d" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_si, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_size1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_size2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L383"
                    return;
                };
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L385"
                if (_r1 != (_index[(_j : stdgo.GoInt)]._r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L386"
                    _t.errorf(("DecodeLastRune(%q, %d) = %#04x, want %#04x" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_si, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_r1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_index[(_j : stdgo.GoInt)]._r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L387"
                    return;
                };
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L389"
                if (_r2 != (_index[(_j : stdgo.GoInt)]._r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L390"
                    _t.errorf(("DecodeLastRuneInString(%q, %d) = %#04x, want %#04x" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_si, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_r2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_index[(_j : stdgo.GoInt)]._r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L391"
                    return;
                };
                _si = (_si - (_size1) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L394"
                if (_si != (_index[(_j : stdgo.GoInt)]._index)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L395"
                    _t.errorf(("DecodeLastRune(%q) index mismatch at %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_si, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_index[(_j : stdgo.GoInt)]._index, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L396"
                    return;
                };
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L398"
                _j--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L400"
        if (_si != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L401"
            _t.errorf(("DecodeLastRune(%q) finished at %d, not 0" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_si, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }
