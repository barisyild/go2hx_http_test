package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _compile(_expr:stdgo.GoString, _mode:stdgo._internal.regexp.syntax.Syntax_flags.Flags, _longest:Bool):{ var _0 : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_expr?.__copy__(), _mode), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L175"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L176"
            return { _0 : null, _1 : _err };
        };
        var _maxCap = @:assignType (_re.maxCap() : stdgo.GoInt);
        var _capNames = _re.capNames();
        _re = _re.simplify();
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax_compile.compile(_re), _prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L183"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L184"
            return { _0 : null, _1 : _err };
        };
        var _matchcap = @:assignType ((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).numCap : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L187"
        if ((_matchcap < (2 : stdgo.GoInt) : Bool)) {
            _matchcap = (2 : stdgo.GoInt);
        };
        var _regexp = (stdgo.Go.setRef(({ _expr : _expr?.__copy__(), _prog : _prog, _onepass : stdgo._internal.regexp.Regexp__compileonepass._compileOnePass(_prog), _numSubexp : _maxCap, _subexpNames : _capNames, _cond : _prog.startCond(), _longest : _longest, _matchcap : _matchcap, _minInputLen : stdgo._internal.regexp.Regexp__mininputlen._minInputLen(_re) } : stdgo._internal.regexp.Regexp_regexp.Regexp), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_regexpdotregexp.__type__stdgodot_internaldotregexpdotRegexp_regexpdotRegexp })) : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L201"
        if (({
            final value = (@:checkr _regexp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._onepass;
            (value == null || (value : Dynamic).__nil__);
        })) {
            {
                var __tmp__ = _prog.prefix();
                (@:checkr _regexp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix = @:tmpset0 __tmp__._0?.__copy__();
                (@:checkr _regexp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefixComplete = @:tmpset0 __tmp__._1;
            };
            (@:checkr _regexp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxBitStateLen = stdgo._internal.regexp.Regexp__maxbitstatelen._maxBitStateLen(_prog);
        } else {
            {
                var __tmp__ = stdgo._internal.regexp.Regexp__onepassprefix._onePassPrefix(_prog);
                (@:checkr _regexp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix = @:tmpset0 __tmp__._0?.__copy__();
                (@:checkr _regexp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefixComplete = @:tmpset0 __tmp__._1;
                (@:checkr _regexp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefixEnd = @:tmpset0 __tmp__._2;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L207"
        if ((@:checkr _regexp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix != ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _regexp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefixBytes = ((@:checkr _regexp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((@:checkr _regexp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix?.__copy__());
                (@:checkr _regexp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefixRune = @:tmpset0 __tmp__._0;
            };
        };
        var _n = @:assignType ((@:checkr _prog ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst.length : stdgo.GoInt);
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L216"
        while (((stdgo._internal.regexp.Regexp__matchsize._matchSize[(_i : stdgo.GoInt)] != (0 : stdgo.GoInt)) && (stdgo._internal.regexp.Regexp__matchsize._matchSize[(_i : stdgo.GoInt)] < _n : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L217"
            _i++;
        };
        (@:checkr _regexp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mpool = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L221"
        return { _0 : _regexp, _1 : (null : stdgo.Error) };
    }
