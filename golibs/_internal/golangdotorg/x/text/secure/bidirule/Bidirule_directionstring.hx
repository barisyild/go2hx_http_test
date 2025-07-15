package _internal.golangdotorg.x.text.secure.bidirule;
import stdgo._internal.errors.Errors;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
import _internal.golangdotorg.x.text.transform.Transform;
function directionString(_s:stdgo.GoString):_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L154"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var __tmp__ = _internal.golangdotorg.x.text.unicode.bidi.Bidi_lookupstring.lookupString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _e:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties = __tmp__._0, _sz:stdgo.GoInt = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L156"
                if (_sz == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L157"
                    _i++;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L158"
                    continue;
                };
                var _c = @:assignType (_e.class_() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L161"
                if (((_c == ((1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || _c == ((13u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) : Bool) || (_c == (5u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L162"
                    return (1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction);
                };
                _i = (_i + (_sz) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L166"
        return (0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction);
    }
