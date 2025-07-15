package _internal.githubdotcom.dlclark.regexp2;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.log.Log;
import _internal.githubdotcom.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.unicode.Unicode;
@:keep @:allow(_internal.githubdotcom.dlclark.regexp2.Regexp2.Match_asInterface) class Match_static_extension {
    @:keep
    @:tdfield
    static public function _dump( _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>):stdgo.GoString {
        @:recv var _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = _m;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L318"
        _buf.writeRune((10 : stdgo.GoInt32));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L319"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sparseCaps.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L320"
            if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sparseCaps != null) for (_k => _v in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sparseCaps) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L321"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("Slot %v -> %v\n" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L325"
        if (_m.groups() != null) for (_i => _g in _m.groups()) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L326"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("Group %v (%v), %v caps:\n" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_g.name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_g.captures.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L328"
            if (_g.captures != null) for (__0 => _c in _g.captures) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L329"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("  (%v, %v) %v\n" : stdgo.GoString), new stdgo.AnyInterface(_c.index, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_c.length_, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_c.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L348"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _groupValueAppendToBuf( _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>, _groupnum:stdgo.GoInt, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void {
        @:recv var _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = _m;
        var _c = @:assignType ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount[(_groupnum : stdgo.GoInt)] : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L281"
        if (_c == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L282"
            return;
        };
        var _matches = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_groupnum : stdgo.GoInt)];
        var _index = @:assignType (_matches[(((_c - (1 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        var _last = @:assignType (_index + _matches[(((_c * (2 : stdgo.GoInt) : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L290"
        while ((_index < _last : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L291"
            _buf.writeRune((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture._text[(_index : stdgo.GoInt)]);
            _index++;
        };
    }
    @:keep
    @:tdfield
    static public function _populateOtherGroups( _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>):Void {
        @:recv var _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = _m;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L271"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._otherGroups == null) {
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._otherGroups = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group>((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount.length) - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount.length) - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount.length) - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group)]) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group>);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L273"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._otherGroups.length) : Bool)) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._otherGroups[(_i : stdgo.GoInt)] = _internal.githubdotcom.dlclark.regexp2.Regexp2__newgroup._newGroup((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._regex.groupNameFromNumber((_i + (1 : stdgo.GoInt) : stdgo.GoInt)).__copy__(), (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture._text, (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)], (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]).__copy__();
                    _i++;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function groups( _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>):stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group> {
        @:recv var _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = _m;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L262"
        _m._populateOtherGroups();
        var _g = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group>((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._otherGroups.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._otherGroups.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._otherGroups.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group)]) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group>);
        _g[(0 : stdgo.GoInt)] = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group?.__copy__();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L265"
        (_g.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group>).__copyTo__((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._otherGroups);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L266"
        return _g;
    }
    @:keep
    @:tdfield
    static public function groupByNumber( _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>, _num:stdgo.GoInt):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group> {
        @:recv var _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = _m;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L242"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sparseCaps != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L243"
            {
                var __tmp__ = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sparseCaps != null && (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sparseCaps.__exists__(_num) ? { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sparseCaps[_num], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _newNum:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _num = _newNum;
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L247"
        if (((_num >= ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount.length) : Bool) || (_num < (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L248"
            return null;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L251"
        if (_num == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L252"
            return (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_groupdotgroup.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_groupdotGroup })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group>);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L255"
        _m._populateOtherGroups();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L257"
        return (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._otherGroups[(_num - (1 : stdgo.GoInt) : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotregexp2_groupdotgroup.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotRegexp2_groupdotGroup })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group>);
    }
    @:keep
    @:tdfield
    static public function groupByName( _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>, _name:stdgo.GoString):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_group.Group> {
        @:recv var _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = _m;
        var _num = @:assignType ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._regex.groupNumberFromName(_name?.__copy__()) : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L233"
        if ((_num < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L234"
            return null;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L236"
        return _m.groupByNumber(_num);
    }
    @:keep
    @:tdfield
    static public function groupCount( _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = _m;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L227"
        return ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount.length);
    }
    @:keep
    @:tdfield
    static public function _removeMatch( _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>, _c:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = _m;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L222"
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount[(_c : stdgo.GoInt)]--;
    }
    @:keep
    @:tdfield
    static public function _balanceMatch( _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>, _c:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = _m;
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._balancing = true;
        var _capcount = @:assignType ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount[(_c : stdgo.GoInt)] : stdgo.GoInt);
        var _target = @:assignType ((_capcount * (2 : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L205"
        if (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_c : stdgo.GoInt)][(_target : stdgo.GoInt)] < (0 : stdgo.GoInt) : Bool)) {
            _target = ((-3 : stdgo.GoInt) - (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_c : stdgo.GoInt)][(_target : stdgo.GoInt)] : stdgo.GoInt);
        };
        _target = (_target - ((2 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L213"
        if (((_target >= (0 : stdgo.GoInt) : Bool) && ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_c : stdgo.GoInt)][(_target : stdgo.GoInt)] < (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L214"
            _m._addMatch(_c, (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_c : stdgo.GoInt)][(_target : stdgo.GoInt)], (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_c : stdgo.GoInt)][(_target + (1 : stdgo.GoInt) : stdgo.GoInt)]);
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L216"
            _m._addMatch(_c, ((-3 : stdgo.GoInt) - _target : stdgo.GoInt), ((-4 : stdgo.GoInt) - _target : stdgo.GoInt));
        };
    }
    @:keep
    @:tdfield
    static public function _addMatch( _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>, _c:stdgo.GoInt, _start:stdgo.GoInt, _l:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = _m;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L171"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_c : stdgo.GoInt)] == null) {
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_c : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoInt>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        };
        var _capcount = @:assignType ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount[(_c : stdgo.GoInt)] : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L177"
        if ((((_capcount * (2 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt) > ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_c : stdgo.GoInt)].length) : Bool)) {
            var _oldmatches = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_c : stdgo.GoInt)];
            var _newmatches = (new stdgo.Slice<stdgo.GoInt>((_capcount * (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L180"
            _newmatches.__copyTo__((_oldmatches.__slice__(0, (_capcount * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_c : stdgo.GoInt)] = _newmatches;
        };
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_c : stdgo.GoInt)][(_capcount * (2 : stdgo.GoInt) : stdgo.GoInt)] = _start;
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_c : stdgo.GoInt)][((_capcount * (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = _l;
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount[(_c : stdgo.GoInt)] = (_capcount + (1 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _matchLength( _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>, _cap:stdgo.GoInt):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = _m;
        var _i = @:assignType ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_cap : stdgo.GoInt)][(((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount[(_cap : stdgo.GoInt)] * (2 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L161"
        if ((_i >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L162"
            return _i;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L165"
        return (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_cap : stdgo.GoInt)][((-3 : stdgo.GoInt) - _i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _matchIndex( _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>, _cap:stdgo.GoInt):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = _m;
        var _i = @:assignType ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_cap : stdgo.GoInt)][(((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount[(_cap : stdgo.GoInt)] * (2 : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L151"
        if ((_i >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L152"
            return _i;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L155"
        return (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_cap : stdgo.GoInt)][((-3 : stdgo.GoInt) - _i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _isMatched( _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>, _cap:stdgo.GoInt):Bool {
        @:recv var _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = _m;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L145"
        return (((_cap < ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount.length) : Bool) && ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount[(_cap : stdgo.GoInt)] > (0 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_cap : stdgo.GoInt)][(((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount[(_cap : stdgo.GoInt)] * (2 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (-2 : stdgo.GoInt)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _tidy( _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>, _textpos:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = _m;
        var _interval = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(0 : stdgo.GoInt)];
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture.index = _interval[(0 : stdgo.GoInt)];
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture.length_ = _interval[(1 : stdgo.GoInt)];
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._textpos = _textpos;
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capcount = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount[(0 : stdgo.GoInt)];
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.captures = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_capture.Capture>(1, 1, ...[(@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.Regexp2_capture.Capture)])) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.Regexp2_capture.Capture>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L103"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._balancing) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L110"
            {
                var _cap = @:assignType (0 : stdgo.GoInt);
                while ((_cap < ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount.length) : Bool)) {
                    var _limit = @:assignType ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount[(_cap : stdgo.GoInt)] * (2 : stdgo.GoInt) : stdgo.GoInt);
var _matcharray = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matches[(_cap : stdgo.GoInt)];
var _i:stdgo.GoInt = (0 : stdgo.GoInt), _j:stdgo.GoInt = (0 : stdgo.GoInt);
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L116"
                    {
                        _i = (0 : stdgo.GoInt);
                        while ((_i < _limit : Bool)) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L117"
                            if ((_matcharray[(_i : stdgo.GoInt)] < (0 : stdgo.GoInt) : Bool)) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L118"
                                break;
                            };
                            _i++;
                        };
                    };
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L122"
                    {
                        _j = _i;
                        while ((_i < _limit : Bool)) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L123"
                            if ((_matcharray[(_i : stdgo.GoInt)] < (0 : stdgo.GoInt) : Bool)) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L125"
                                _j--;
                            } else {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L129"
                                if (_i != (_j)) {
                                    _matcharray[(_j : stdgo.GoInt)] = _matcharray[(_i : stdgo.GoInt)];
                                };
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L132"
                                _j++;
                            };
                            _i++;
                        };
                    };
(@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount[(_cap : stdgo.GoInt)] = (_j / (2 : stdgo.GoInt) : stdgo.GoInt);
                    _cap++;
                };
            };
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._balancing = false;
        };
    }
    @:keep
    @:tdfield
    static public function _reset( _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match>, _text:stdgo.Slice<stdgo.GoInt32>, _textstart:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match> = _m;
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).group.capture._text = _text;
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._textstart = _textstart;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/match.go#L87"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount.length) : Bool)) {
                (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._matchcount[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt);
                _i++;
            };
        };
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._balancing = false;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function runes( __self__:_internal.githubdotcom.dlclark.regexp2.Regexp2_match.Match):stdgo.Slice<stdgo.GoInt32> return @:_5 __self__.runes();
}
