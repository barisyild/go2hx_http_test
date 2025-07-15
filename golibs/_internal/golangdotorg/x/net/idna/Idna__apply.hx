package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
function _apply(_o:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_options.T_options>, _opts:stdgo.Slice<_internal.golangdotorg.x.net.idna.Idna_option.Option>):Void {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L206"
        if (_opts != null) for (__0 => _f in _opts) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L207"
            _f(_o);
        };
    }
