package _internal.golangdotorg.x.text.secure.bidirule;
import stdgo._internal.errors.Errors;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
import _internal.golangdotorg.x.text.transform.Transform;
function validString(_s:stdgo.GoString):Bool {
        var _t:_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer = ({} : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L181"
        {
            var __tmp__ = _t._advanceString(_s?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if ((!_ok || (_n < (_s.length) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L182"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L184"
        return _t._isFinal();
    }
