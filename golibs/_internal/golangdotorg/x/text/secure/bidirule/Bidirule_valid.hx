package _internal.golangdotorg.x.text.secure.bidirule;
import stdgo._internal.errors.Errors;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
import _internal.golangdotorg.x.text.transform.Transform;
function valid(_b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _t:_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer = ({} : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L172"
        {
            var __tmp__ = _t._advance(_b), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if ((!_ok || (_n < (_b.length) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L173"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L175"
        return _t._isFinal();
    }
