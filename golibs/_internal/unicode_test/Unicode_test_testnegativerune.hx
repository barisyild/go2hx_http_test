package _internal.unicode_test;
function testNegativeRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _nonLatin1 = (new stdgo.Slice<stdgo.GoUInt32>(8, 8, ...[(256u32 : stdgo.GoUInt32), (257u32 : stdgo.GoUInt32), (453u32 : stdgo.GoUInt32), (768u32 : stdgo.GoUInt32), (1632u32 : stdgo.GoUInt32), (894u32 : stdgo.GoUInt32), (706u32 : stdgo.GoUInt32), (5760u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L592"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((255 : stdgo.GoInt) + (_nonLatin1.length) : stdgo.GoInt) : Bool)) {
                var _base = (_i : stdgo.GoUInt32);
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L594"
                if ((_i >= (255 : stdgo.GoInt) : Bool)) {
                    _base = _nonLatin1[(_i - (255 : stdgo.GoInt) : stdgo.GoInt)];
                };
var _r = ((_base - (-2147483648u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt32);
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L601"
                if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_letter.letter, _r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L602"
                    _t.errorf(("Is(Letter, 0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L604"
                if (stdgo._internal.unicode.Unicode_iscontrol.isControl(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L605"
                    _t.errorf(("IsControl(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L607"
                if (stdgo._internal.unicode.Unicode_isdigit.isDigit(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L608"
                    _t.errorf(("IsDigit(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L610"
                if (stdgo._internal.unicode.Unicode_isgraphic.isGraphic(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L611"
                    _t.errorf(("IsGraphic(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L613"
                if (stdgo._internal.unicode.Unicode_isletter.isLetter(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L614"
                    _t.errorf(("IsLetter(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L616"
                if (stdgo._internal.unicode.Unicode_islower.isLower(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L617"
                    _t.errorf(("IsLower(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L619"
                if (stdgo._internal.unicode.Unicode_ismark.isMark(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L620"
                    _t.errorf(("IsMark(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L622"
                if (stdgo._internal.unicode.Unicode_isnumber.isNumber(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L623"
                    _t.errorf(("IsNumber(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L625"
                if (stdgo._internal.unicode.Unicode_isprint.isPrint(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L626"
                    _t.errorf(("IsPrint(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L628"
                if (stdgo._internal.unicode.Unicode_ispunct.isPunct(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L629"
                    _t.errorf(("IsPunct(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L631"
                if (stdgo._internal.unicode.Unicode_isspace.isSpace(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L632"
                    _t.errorf(("IsSpace(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L634"
                if (stdgo._internal.unicode.Unicode_issymbol.isSymbol(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L635"
                    _t.errorf(("IsSymbol(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L637"
                if (stdgo._internal.unicode.Unicode_istitle.isTitle(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L638"
                    _t.errorf(("IsTitle(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L640"
                if (stdgo._internal.unicode.Unicode_isupper.isUpper(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L641"
                    _t.errorf(("IsUpper(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                _i++;
            };
        };
    }
