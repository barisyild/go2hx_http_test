package _internal.githubdotcom.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
function _newBmPrefix(_pattern:stdgo.Slice<stdgo.GoInt32>, _caseInsensitive:Bool, _rightToLeft:Bool):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> {
        var _newarray_308:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _bump_300:stdgo.GoInt = (0 : stdgo.GoInt);
        var _beforefirst_298:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_306:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _ch_304:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _match_302:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_299:stdgo.GoInt = (0 : stdgo.GoInt);
        var _k_309:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_305:stdgo.GoInt = (0 : stdgo.GoInt);
        var outerloopBreak = false;
        var _examine_303:stdgo.GoInt = (0 : stdgo.GoInt);
        var _scan_301:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_307:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_297:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_296:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _b_296 = (stdgo.Go.setRef(({ _rightToLeft : _rightToLeft, _caseInsensitive : _caseInsensitive, _pattern : _pattern } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_bmprefixdotbmprefix.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_bmprefixdotBmPrefix })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L438"
                    if (_caseInsensitive) {
                        _gotoNext = 4274590i64;
                    } else {
                        _gotoNext = 4274994i64;
                    };
                } else if (__value__ == (4274590i64)) {
                    _i_297 = (0 : stdgo.GoInt);
                    _gotoNext = 4274594i64;
                } else if (__value__ == (4274594i64)) {
                    //"file://#L0"
                    if ((_i_297 < ((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length) : Bool)) {
                        _gotoNext = 4274630i64;
                    } else {
                        _gotoNext = 4274994i64;
                    };
                } else if (__value__ == (4274630i64)) {
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern[(_i_297 : stdgo.GoInt)] = stdgo._internal.unicode.Unicode_tolower.toLower((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern[(_i_297 : stdgo.GoInt)]);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L439"
                    _i_297++;
                    _gotoNext = 4274594i64;
                } else if (__value__ == (4274994i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L452"
                    if (!_rightToLeft) {
                        _gotoNext = 4275065i64;
                    } else {
                        _gotoNext = 4275133i64;
                    };
                } else if (__value__ == (4275065i64)) {
                    _beforefirst_298 = (-1 : stdgo.GoInt);
                    _last_299 = (((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _bump_300 = (1 : stdgo.GoInt);
                    _gotoNext = 4275508i64;
                } else if (__value__ == (4275133i64)) {
                    _gotoNext = 4275133i64;
                    _beforefirst_298 = ((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length);
                    _last_299 = (0 : stdgo.GoInt);
                    _bump_300 = (-1 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 4275508i64;
                } else if (__value__ == (4275508i64)) {
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._positive = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _examine_303 = _last_299;
                    _ch_304 = (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern[(_examine_303 : stdgo.GoInt)];
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._positive[(_examine_303 : stdgo.GoInt)] = _bump_300;
                    _examine_303 = (_examine_303 - (_bump_300) : stdgo.GoInt);
                    _gotoNext = 4275639i64;
                } else if (__value__ == (4275639i64)) {
                    0i64;
                    outerloopBreak = false;
                    _gotoNext = 4275651i64;
                } else if (__value__ == (4275651i64)) {
                    //"file://#L0"
                    if (!outerloopBreak) {
                        _gotoNext = 4275655i64;
                    } else {
                        _gotoNext = 4276422i64;
                    };
                } else if (__value__ == (4275655i64)) {
                    0i64;
                    _gotoNext = 4275719i64;
                } else if (__value__ == (4275719i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 4275723i64;
                    } else {
                        _gotoNext = 4275855i64;
                    };
                } else if (__value__ == (4275723i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L483"
                    if (_examine_303 == (_beforefirst_298)) {
                        _gotoNext = 4275754i64;
                    } else {
                        _gotoNext = 4275784i64;
                    };
                } else if (__value__ == (4275754i64)) {
                    outerloopBreak = true;
                    _gotoNext = 4275651i64;
                } else if (__value__ == (4275784i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L486"
                    if ((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern[(_examine_303 : stdgo.GoInt)] == (_ch_304)) {
                        _gotoNext = 4275812i64;
                    } else {
                        _gotoNext = 4275832i64;
                    };
                } else if (__value__ == (4275812i64)) {
                    _gotoNext = 4275855i64;
                } else if (__value__ == (4275832i64)) {
                    _examine_303 = (_examine_303 - (_bump_300) : stdgo.GoInt);
                    _gotoNext = 4275719i64;
                } else if (__value__ == (4275855i64)) {
                    _match_302 = _last_299;
                    _scan_301 = _examine_303;
                    0i64;
                    _gotoNext = 4275922i64;
                } else if (__value__ == (4275922i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 4275926i64;
                    } else {
                        _gotoNext = 4276401i64;
                    };
                } else if (__value__ == (4275926i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L497"
                    if (((_scan_301 == _beforefirst_298) || ((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern[(_match_302 : stdgo.GoInt)] != (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern[(_scan_301 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 4275993i64;
                    } else {
                        _gotoNext = 4276364i64;
                    };
                } else if (__value__ == (4275993i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L501"
                    if ((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._positive[(_match_302 : stdgo.GoInt)] == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4276202i64;
                    } else {
                        _gotoNext = 4276349i64;
                    };
                } else if (__value__ == (4276202i64)) {
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._positive[(_match_302 : stdgo.GoInt)] = (_match_302 - _scan_301 : stdgo.GoInt);
                    _gotoNext = 4276349i64;
                } else if (__value__ == (4276349i64)) {
                    _gotoNext = 4276401i64;
                } else if (__value__ == (4276364i64)) {
                    _scan_301 = (_scan_301 - (_bump_300) : stdgo.GoInt);
                    _match_302 = (_match_302 - (_bump_300) : stdgo.GoInt);
                    _gotoNext = 4275922i64;
                } else if (__value__ == (4276401i64)) {
                    _examine_303 = (_examine_303 - (_bump_300) : stdgo.GoInt);
                    _gotoNext = 4275651i64;
                } else if (__value__ == (4276422i64)) {
                    _match_302 = (_last_299 - _bump_300 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 4276772i64;
                } else if (__value__ == (4276772i64)) {
                    //"file://#L0"
                    if (_match_302 != (_beforefirst_298)) {
                        _gotoNext = 4276797i64;
                    } else {
                        _gotoNext = 4277383i64;
                    };
                } else if (__value__ == (4276797i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L526"
                    if ((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._positive[(_match_302 : stdgo.GoInt)] == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4276827i64;
                    } else {
                        _gotoNext = 4276864i64;
                    };
                } else if (__value__ == (4276827i64)) {
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._positive[(_match_302 : stdgo.GoInt)] = _bump_300;
                    _gotoNext = 4276864i64;
                } else if (__value__ == (4276864i64)) {
                    _match_302 = (_match_302 - (_bump_300) : stdgo.GoInt);
                    _gotoNext = 4276772i64;
                } else if (__value__ == (4277383i64)) {
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeASCII = (new stdgo.Slice<stdgo.GoInt>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _i_305 = (0 : stdgo.GoInt);
                    _gotoNext = 4277420i64;
                } else if (__value__ == (4277420i64)) {
                    //"file://#L0"
                    if ((_i_305 < ((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeASCII.length) : Bool)) {
                        _gotoNext = 4277462i64;
                    } else {
                        _gotoNext = 4277511i64;
                    };
                } else if (__value__ == (4277462i64)) {
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeASCII[(_i_305 : stdgo.GoInt)] = (_last_299 - _beforefirst_298 : stdgo.GoInt);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L547"
                    _i_305++;
                    _gotoNext = 4277420i64;
                } else if (__value__ == (4277511i64)) {
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lowASCII = (127 : stdgo.GoInt32);
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._highASCII = (0 : stdgo.GoInt32);
                    _examine_303 = _last_299;
                    _gotoNext = 4277547i64;
                } else if (__value__ == (4277547i64)) {
                    //"file://#L0"
                    if (_examine_303 != (_beforefirst_298)) {
                        _gotoNext = 4277607i64;
                    } else {
                        _gotoNext = 4278538i64;
                    };
                } else if (__value__ == (4277591i64)) {
                    _examine_303 = (_examine_303 - (_bump_300) : stdgo.GoInt);
                    _gotoNext = 4277547i64;
                } else if (__value__ == (4277607i64)) {
                    _ch_304 = (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern[(_examine_303 : stdgo.GoInt)];
                    _gotoNext = 4277638i64;
                } else if (__value__ == (4277638i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L557"
                    if ((_ch_304 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 4277649i64;
                    } else if ((_ch_304 <= (65535 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 4277862i64;
                    } else {
                        _gotoNext = 4278415i64;
                    };
                } else if (__value__ == (4277649i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L559"
                    if (((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lowASCII > _ch_304 : Bool)) {
                        _gotoNext = 4277686i64;
                    } else {
                        _gotoNext = 4277717i64;
                    };
                } else if (__value__ == (4277686i64)) {
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lowASCII = _ch_304;
                    _gotoNext = 4277717i64;
                } else if (__value__ == (4277717i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L563"
                    if (((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._highASCII < _ch_304 : Bool)) {
                        _gotoNext = 4277737i64;
                    } else {
                        _gotoNext = 4277769i64;
                    };
                } else if (__value__ == (4277737i64)) {
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._highASCII = _ch_304;
                    _gotoNext = 4277769i64;
                } else if (__value__ == (4277769i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L567"
                    if ((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeASCII[(_ch_304 : stdgo.GoInt)] == ((_last_299 - _beforefirst_298 : stdgo.GoInt))) {
                        _gotoNext = 4277812i64;
                    } else {
                        _gotoNext = 4277591i64;
                    };
                } else if (__value__ == (4277812i64)) {
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeASCII[(_ch_304 : stdgo.GoInt)] = (_last_299 - _examine_303 : stdgo.GoInt);
                    _gotoNext = 4277591i64;
                } else if (__value__ == (4277862i64)) {
                    {
                        final __tmp__0 = (_ch_304 >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                        final __tmp__1 = (_ch_304 & (255 : stdgo.GoInt32) : stdgo.GoInt32);
                        _i_306 = @:binopAssign __tmp__0;
                        _j_307 = @:binopAssign __tmp__1;
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L573"
                    if ((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeUnicode == null) {
                        _gotoNext = 4277939i64;
                    } else {
                        _gotoNext = 4277993i64;
                    };
                } else if (__value__ == (4277939i64)) {
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeUnicode = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((256 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
                    _gotoNext = 4277993i64;
                } else if (__value__ == (4277993i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L577"
                    if ((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeUnicode[(_i_306 : stdgo.GoInt)] == null) {
                        _gotoNext = 4278024i64;
                    } else {
                        _gotoNext = 4278314i64;
                    };
                } else if (__value__ == (4278024i64)) {
                    _newarray_308 = (new stdgo.Slice<stdgo.GoInt>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _k_309 = (0 : stdgo.GoInt);
                    _gotoNext = 4278064i64;
                } else if (__value__ == (4278064i64)) {
                    //"file://#L0"
                    if ((_k_309 < (_newarray_308.length) : Bool)) {
                        _gotoNext = 4278099i64;
                    } else {
                        _gotoNext = 4278150i64;
                    };
                } else if (__value__ == (4278099i64)) {
                    _newarray_308[(_k_309 : stdgo.GoInt)] = (_last_299 - _beforefirst_298 : stdgo.GoInt);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L580"
                    _k_309++;
                    _gotoNext = 4278064i64;
                } else if (__value__ == (4278150i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L584"
                    if (_i_306 == ((0 : stdgo.GoInt32))) {
                        _gotoNext = 4278160i64;
                    } else {
                        _gotoNext = 4278273i64;
                    };
                } else if (__value__ == (4278160i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L585"
                    _newarray_308.__copyTo__((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeASCII);
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeASCII = _newarray_308;
                    _gotoNext = 4278273i64;
                } else if (__value__ == (4278273i64)) {
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeUnicode[(_i_306 : stdgo.GoInt)] = _newarray_308;
                    _gotoNext = 4278314i64;
                } else if (__value__ == (4278314i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L593"
                    if ((@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeUnicode[(_i_306 : stdgo.GoInt)][(_j_307 : stdgo.GoInt)] == ((_last_299 - _beforefirst_298 : stdgo.GoInt))) {
                        _gotoNext = 4278361i64;
                    } else {
                        _gotoNext = 4277591i64;
                    };
                } else if (__value__ == (4278361i64)) {
                    (@:checkr _b_296 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeUnicode[(_i_306 : stdgo.GoInt)][(_j_307 : stdgo.GoInt)] = (_last_299 - _examine_303 : stdgo.GoInt);
                    _gotoNext = 4277591i64;
                } else if (__value__ == (4278415i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L599"
                    return null;
                    _gotoNext = 4277591i64;
                } else if (__value__ == (4278538i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L603"
                    return _b_296;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
