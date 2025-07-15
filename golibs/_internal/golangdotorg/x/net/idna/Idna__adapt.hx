package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
function _adapt(_delta:stdgo.GoInt32, _numPoints:stdgo.GoInt32, _firstTime:Bool):stdgo.GoInt32 {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L205"
        if (_firstTime) {
            _delta = (_delta / ((700 : stdgo.GoInt32)) : stdgo.GoInt32);
        } else {
            _delta = (_delta / ((2 : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        _delta = (_delta + ((_delta / _numPoints : stdgo.GoInt32)) : stdgo.GoInt32);
        var _k = @:assignType ((0 : stdgo.GoInt32) : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L212"
        while ((_delta > (455 : stdgo.GoInt32) : Bool)) {
            _delta = (_delta / ((35 : stdgo.GoInt32)) : stdgo.GoInt32);
            _k = (_k + ((36 : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L216"
        return (_k + (((36 : stdgo.GoInt32) * _delta : stdgo.GoInt32) / ((_delta + (38 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32) : stdgo.GoInt32);
    }
