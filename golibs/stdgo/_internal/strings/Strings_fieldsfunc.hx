package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function fieldsFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.GoString> {
        {};
        var _spans = (new stdgo.Slice<stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921>((0 : stdgo.GoInt).toBasic(), (32 : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (32 : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : (32 : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921)]) : stdgo.Slice<stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921>);
        var _start = @:assignType (-1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L402"
        if (_s != null) for (_end => _rune in _s) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L403"
            if (_f(_rune)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L404"
                if ((_start >= (0 : stdgo.GoInt) : Bool)) {
                    _spans = (_spans.__append__((new stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921(_start, _end) : stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921)) : stdgo.Slice<stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921>);
                    _start = (-1 ^ _start);
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L412"
                if ((_start < (0 : stdgo.GoInt) : Bool)) {
                    _start = _end;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L419"
        if ((_start >= (0 : stdgo.GoInt) : Bool)) {
            _spans = (_spans.__append__((new stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921(_start, (_s.length)) : stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921)) : stdgo.Slice<stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921>);
        };
        var _a = (new stdgo.Slice<stdgo.GoString>((_spans.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L425"
        if (_spans != null) for (_i => _span in _spans) {
            _a[(_i : stdgo.GoInt)] = (_s.__slice__(_span._start, _span._end) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L429"
        return _a;
    }
