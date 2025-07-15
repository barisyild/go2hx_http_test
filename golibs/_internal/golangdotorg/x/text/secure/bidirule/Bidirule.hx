package _internal.golangdotorg.x.text.secure.bidirule;
import stdgo._internal.errors.Errors;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
import _internal.golangdotorg.x.text.transform.Transform;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.golangdotorg.x.text.secure.bidirule.Bidirule_errinvalid.errInvalid, __tmp__1 = _internal.golangdotorg.x.text.secure.bidirule.Bidirule__transitions._transitions;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/secure/bidirule/bidirule.go#L251"
            for (_i => _ in _internal.golangdotorg.x.text.secure.bidirule.Bidirule__asciitable._asciiTable.__copy__()) {
                var __tmp__ = _internal.golangdotorg.x.text.unicode.bidi.Bidi_lookuprune.lookupRune((_i : stdgo.GoInt32)), _p:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
                _internal.golangdotorg.x.text.secure.bidirule.Bidirule__asciitable._asciiTable[(_i : stdgo.GoInt)] = _p?.__copy__();
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
