package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.go.token.Token__tokens._tokens;
            stdgo._internal.go.token.Token__keywords._keywords = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo._internal.go.token.Token_token.Token>();
                x.__defaultValue__ = () -> ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo._internal.go.token.Token_token.Token>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.go.token.Token_token.Token>);
            //"file:///Users/o/.go/go1.21.3/src/go/token/token.go#L286"
            {
                var _i = @:assignType (61 : stdgo._internal.go.token.Token_token.Token);
                while ((_i < (86 : stdgo._internal.go.token.Token_token.Token) : Bool)) {
                    stdgo._internal.go.token.Token__keywords._keywords[stdgo._internal.go.token.Token__tokens._tokens[(_i : stdgo.GoInt)]] = _i;
                    _i++;
                };
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
