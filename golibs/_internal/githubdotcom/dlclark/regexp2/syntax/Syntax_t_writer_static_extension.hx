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
@:keep @:allow(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax.T_writer_asInterface) class T_writer_static_extension {
    @:keep
    @:tdfield
    static public function _emit2( _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer>, _op:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp, _opd1:stdgo.GoInt, _opd2:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer> = _w;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L487"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counting) {
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count + ((3 : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L489"
            if (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__opcodebacktracks._opcodeBacktracks(_op)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L490"
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trackcount++;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L492"
            return;
        };
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emitted[((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curpos : stdgo.GoInt)] = (_op : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L495"
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curpos++;
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emitted[((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curpos : stdgo.GoInt)] = _opd1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L497"
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curpos++;
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emitted[((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curpos : stdgo.GoInt)] = _opd2;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L499"
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curpos++;
    }
    @:keep
    @:tdfield
    static public function _emit1( _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer>, _op:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp, _opd1:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer> = _w;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L472"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counting) {
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L474"
            if (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__opcodebacktracks._opcodeBacktracks(_op)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L475"
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trackcount++;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L477"
            return;
        };
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emitted[((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curpos : stdgo.GoInt)] = (_op : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L480"
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curpos++;
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emitted[((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curpos : stdgo.GoInt)] = _opd1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L482"
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curpos++;
    }
    @:keep
    @:tdfield
    static public function _emit( _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer>, _op:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp):Void {
        @:recv var _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer> = _w;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L459"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counting) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L460"
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count++;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L461"
            if (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__opcodebacktracks._opcodeBacktracks(_op)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L462"
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trackcount++;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L464"
            return;
        };
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emitted[((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curpos : stdgo.GoInt)] = (_op : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L467"
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curpos++;
    }
    @:keep
    @:tdfield
    static public function _mapCapnum( _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer>, _capnum:stdgo.GoInt):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer> = _w;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L444"
        if (_capnum == ((-1 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L445"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L448"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L449"
            return ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps[_capnum] ?? (0 : stdgo.GoInt));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L452"
        return _capnum;
    }
    @:keep
    @:tdfield
    static public function _stringCode( _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer>, _str:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer> = _w;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L424"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counting) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L425"
            return (0 : stdgo.GoInt);
        };
        var _hash = @:assignType ((_str : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stringhash != null && (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stringhash.__exists__(_hash?.__copy__()) ? { _0 : (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stringhash[_hash?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _i:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L430"
        if (!_ok) {
            _i = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stringhash.length);
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stringhash[_hash] = _i;
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stringtable = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stringtable.__append__(_str) : stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L436"
        return _i;
    }
    @:keep
    @:tdfield
    static public function _setCode( _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer>, _set:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer> = _w;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L404"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counting) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L405"
            return (0 : stdgo.GoInt);
        };
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L410"
        (@:checkr _set ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapHashFill(_buf);
        var _hash = @:assignType ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sethash != null && (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sethash.__exists__(_hash?.__copy__()) ? { _0 : (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sethash[_hash?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _i:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L413"
        if (!_ok) {
            _i = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sethash.length);
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sethash[_hash] = _i;
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._settable = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._settable.__append__(_set) : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>>);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L418"
        return _i;
    }
    @:keep
    @:tdfield
    static public function _patchJump( _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer>, _offset:stdgo.GoInt, _jumpDest:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer> = _w;
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emitted[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)] = _jumpDest;
    }
    @:keep
    @:tdfield
    static public function _curPos( _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer>):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer> = _w;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L392"
        return (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curpos;
    }
    @:keep
    @:tdfield
    static public function _popInt( _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer>):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer> = _w;
        var _idx = @:assignType (((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _i = @:assignType ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intStack[(_idx : stdgo.GoInt)] : stdgo.GoInt);
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intStack = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intStack.__slice__(0, _idx) : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L387"
        return _i;
    }
    @:keep
    @:tdfield
    static public function _emptyStack( _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer>):Bool {
        @:recv var _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer> = _w;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L377"
        return ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intStack.length) == ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _pushInt( _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer>, _i:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer> = _w;
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intStack = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intStack.__append__(_i) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function _emitFragment( _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer>, _nodetype:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType, _node:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _curIndex:stdgo.GoInt):stdgo.Error {
        @:recv var _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer> = _w;
        var _bits = @:assignType ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L160"
        if ((_nodetype <= (13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L161"
            if ((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
                _bits = (_bits | ((64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp);
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L164"
            if ((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
                _bits = (_bits | ((512 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp);
            };
        };
        var _ntBits = @:assignType (_bits : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L170"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _nodetype;
                    if (__value__ == ((89 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((153 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L172"
                        break;
                        break;
                    } else if (__value__ == ((88 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L175"
                        if ((_curIndex < (((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L176"
                            _w._pushInt(_w._curPos());
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L177"
                            _w._emit1((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), (0 : stdgo.GoInt));
                        };
                        break;
                    } else if (__value__ == ((152 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L181"
                        if ((_curIndex < (((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                            var _lbPos = @:assignType (_w._popInt() : stdgo.GoInt);
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L183"
                            _w._pushInt(_w._curPos());
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L184"
                            _w._emit1((38 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), (0 : stdgo.GoInt));
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L185"
                            _w._patchJump(_lbPos, _w._curPos());
                        } else {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L187"
                            {
                                var _i = @:assignType (0 : stdgo.GoInt);
                                while ((_i < _curIndex : Bool)) {
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L188"
                                    _w._patchJump(_w._popInt(), _w._curPos());
                                    _i++;
                                };
                            };
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L191"
                        break;
                        break;
                    } else if (__value__ == ((97 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L194"
                        if (_curIndex == ((0 : stdgo.GoInt))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L195"
                            _w._emit((34 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L196"
                            _w._pushInt(_w._curPos());
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L197"
                            _w._emit1((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), (0 : stdgo.GoInt));
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L198"
                            _w._emit1((37 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), _w._mapCapnum((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m));
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L199"
                            _w._emit((36 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                        };
                        break;
                    } else if (__value__ == ((161 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L203"
                        if (_curIndex == ((0 : stdgo.GoInt))) {
                            var _branchpos = @:assignType (_w._popInt() : stdgo.GoInt);
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L205"
                            _w._pushInt(_w._curPos());
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L206"
                            _w._emit1((38 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), (0 : stdgo.GoInt));
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L207"
                            _w._patchJump(_branchpos, _w._curPos());
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L208"
                            _w._emit((36 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L209"
                            if ((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) <= (1 : stdgo.GoInt) : Bool)) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L210"
                                _w._patchJump(_w._popInt(), _w._curPos());
                            };
                        } else if (_curIndex == ((1 : stdgo.GoInt))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L213"
                            _w._patchJump(_w._popInt(), _w._curPos());
                        };
                        break;
                    } else if (__value__ == ((98 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L217"
                        if (_curIndex == ((0 : stdgo.GoInt))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L218"
                            _w._emit((34 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L219"
                            _w._emit((31 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L220"
                            _w._pushInt(_w._curPos());
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L221"
                            _w._emit1((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), (0 : stdgo.GoInt));
                        };
                        break;
                    } else if (__value__ == ((162 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L225"
                        if (_curIndex == ((0 : stdgo.GoInt))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L226"
                            _w._emit((33 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L227"
                            _w._emit((36 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                        } else if (_curIndex == ((1 : stdgo.GoInt))) {
                            var branchpos = @:assignType (_w._popInt() : stdgo.GoInt);
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L230"
                            _w._pushInt(_w._curPos());
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L231"
                            _w._emit1((38 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), (0 : stdgo.GoInt));
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L232"
                            _w._patchJump(branchpos, _w._curPos());
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L233"
                            _w._emit((33 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L234"
                            _w._emit((36 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L235"
                            if ((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) <= (2 : stdgo.GoInt) : Bool)) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L236"
                                _w._patchJump(_w._popInt(), _w._curPos());
                            };
                        } else if (_curIndex == ((2 : stdgo.GoInt))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L239"
                            _w._patchJump(_w._popInt(), _w._curPos());
                        };
                        break;
                    } else if (__value__ == ((90 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((91 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L244"
                        if ((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n < (2147483647 : stdgo.GoInt) : Bool) || ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m > (1 : stdgo.GoInt) : Bool) : Bool)) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L245"
                            if ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m == ((0 : stdgo.GoInt))) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L246"
                                _w._emit1((26 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), (0 : stdgo.GoInt));
                            } else {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L248"
                                _w._emit1((27 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), ((1 : stdgo.GoInt) - (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m : stdgo.GoInt));
                            };
                        } else if ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m == ((0 : stdgo.GoInt))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L251"
                            _w._emit((30 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                        } else {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L253"
                            _w._emit((31 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L256"
                        if ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m == ((0 : stdgo.GoInt))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L257"
                            _w._pushInt(_w._curPos());
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L258"
                            _w._emit1((38 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), (0 : stdgo.GoInt));
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L260"
                        _w._pushInt(_w._curPos());
                        break;
                    } else if (__value__ == ((154 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((155 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        var _startJumpPos = @:assignType (_w._curPos() : stdgo.GoInt);
                        var _lazy = @:assignType ((_nodetype - (154 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L267"
                        if ((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n < (2147483647 : stdgo.GoInt) : Bool) || ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m > (1 : stdgo.GoInt) : Bool) : Bool)) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L268"
                            if ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n == ((2147483647 : stdgo.GoInt))) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L269"
                                _w._emit2((((28 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) + _lazy : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), _w._popInt(), (2147483647 : stdgo.GoInt));
                            } else {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L271"
                                _w._emit2((((28 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) + _lazy : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), _w._popInt(), ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n - (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m : stdgo.GoInt));
                            };
                        } else {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L274"
                            _w._emit1((((24 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) + _lazy : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), _w._popInt());
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L277"
                        if ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m == ((0 : stdgo.GoInt))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L278"
                            _w._patchJump(_w._popInt(), _startJumpPos);
                        };
                        break;
                    } else if (__value__ == ((93 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((157 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        break;
                    } else if (__value__ == ((92 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L284"
                        _w._emit((31 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                        break;
                    } else if (__value__ == ((156 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L287"
                        _w._emit2((32 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), _w._mapCapnum((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m), _w._mapCapnum((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n));
                        break;
                    } else if (__value__ == ((94 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L292"
                        _w._emit((34 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L294"
                        _w._emit((31 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                        break;
                    } else if (__value__ == ((158 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L297"
                        _w._emit((33 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L301"
                        _w._emit((36 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                        break;
                    } else if (__value__ == ((95 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L304"
                        _w._emit((34 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L305"
                        _w._pushInt(_w._curPos());
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L306"
                        _w._emit1((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), (0 : stdgo.GoInt));
                        break;
                    } else if (__value__ == ((159 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L309"
                        _w._emit((35 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L310"
                        _w._patchJump(_w._popInt(), _w._curPos());
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L311"
                        _w._emit((36 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                        break;
                    } else if (__value__ == ((96 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L314"
                        _w._emit((34 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                        break;
                    } else if (__value__ == ((160 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L317"
                        _w._emit((36 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                        break;
                    } else if (__value__ == ((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((10 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L320"
                        _w._emit1((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t | _ntBits : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch : stdgo.GoInt));
                        break;
                    } else if (__value__ == ((4 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((7 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((3 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((6 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L323"
                        if (((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m > (0 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L324"
                            if ((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == (3 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == (6 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : Bool)) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L325"
                                _w._emit2(((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp) | _bits : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch : stdgo.GoInt), (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m);
                            } else {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L327"
                                _w._emit2(((1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp) | _bits : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch : stdgo.GoInt), (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m);
                            };
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L330"
                        if (((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n > (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m : Bool)) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L331"
                            if ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n == ((2147483647 : stdgo.GoInt))) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L332"
                                _w._emit2((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t | _ntBits : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch : stdgo.GoInt), (2147483647 : stdgo.GoInt));
                            } else {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L334"
                                _w._emit2((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t | _ntBits : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch : stdgo.GoInt), ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n - (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m : stdgo.GoInt));
                            };
                        };
                        break;
                    } else if (__value__ == ((5 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((8 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L339"
                        if (((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m > (0 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L340"
                            _w._emit2(((2 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp) | _bits : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), _w._setCode((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set), (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m);
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L342"
                        if (((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n > (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m : Bool)) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L343"
                            if ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n == ((2147483647 : stdgo.GoInt))) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L344"
                                _w._emit2((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t | _ntBits : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), _w._setCode((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set), (2147483647 : stdgo.GoInt));
                            } else {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L346"
                                _w._emit2((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t | _ntBits : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), _w._setCode((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set), ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n - (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m : stdgo.GoInt));
                            };
                        };
                        break;
                    } else if (__value__ == ((12 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L351"
                        _w._emit1((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t | _ntBits : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), _w._stringCode((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str));
                        break;
                    } else if (__value__ == ((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L354"
                        _w._emit1((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t | _ntBits : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), _w._setCode((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set));
                        break;
                    } else if (__value__ == ((13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L357"
                        _w._emit1((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t | _ntBits : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), _w._mapCapnum((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m));
                        break;
                    } else if (__value__ == ((22 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((14 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((15 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((16 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((17 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((41 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((42 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((18 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((19 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((20 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((21 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L360"
                        _w._emit(((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
                        break;
                    } else {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L363"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("unexpected opcode in regular expression generation: %v" : stdgo.GoString), new stdgo.AnyInterface(_nodetype, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_nodetypedott_nodetype.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_nodetypedotT_nodeType)));
                    };
                };
                break;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L366"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _codeFromTree( _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer>, _tree:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code>; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_writer.T_writer> = _w;
        var _curNode:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>), _curChild:stdgo.GoInt = (0 : stdgo.GoInt), _capsize:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L67"
        if ((((@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnumlist == null) || ((@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._captop == ((@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnumlist.length)) : Bool)) {
            _capsize = (@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._captop;
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        } else {
            _capsize = ((@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnumlist.length);
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps = (@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L73"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnumlist.length) : Bool)) {
                    (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps[(@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnumlist[(_i : stdgo.GoInt)]] = _i;
                    _i++;
                };
            };
        };
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counting = true;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L80"
        while (true) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L81"
            if (!(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counting) {
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emitted = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            };
            _curNode = (@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root;
            _curChild = (0 : stdgo.GoInt);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L88"
            _w._emit1((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp), (0 : stdgo.GoInt));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L90"
            while (true) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L91"
                if (((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L92"
                    _w._emitFragment((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t, _curNode, (0 : stdgo.GoInt));
                } else if ((_curChild < ((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L94"
                    _w._emitFragment(((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t | (64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), _curNode, _curChild);
                    _curNode = (@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_curChild : stdgo.GoInt)];
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L98"
                    _w._pushInt(_curChild);
                    _curChild = (0 : stdgo.GoInt);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L100"
                    continue;
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L103"
                if (_w._emptyStack()) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L104"
                    break;
                };
                _curChild = _w._popInt();
                _curNode = (@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L110"
                _w._emitFragment(((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t | (128 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), _curNode, _curChild);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L111"
                _curChild++;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L114"
            _w._patchJump((0 : stdgo.GoInt), _w._curPos());
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L115"
            _w._emit((40 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L117"
            if (!(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counting) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L118"
                break;
            };
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counting = false;
        };
        var _fcPrefix = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__getfirstcharsprefix._getFirstCharsPrefix(_tree);
        var _prefix = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__getprefix._getPrefix(_tree);
        var _rtl = @:assignType ((((@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) : Bool);
        var _bmPrefix:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L130"
        if (((({
            final value = _prefix;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (((@:checkr _prefix ?? throw stdgo.Error._nullPointerDereference.__underlying__()).prefixStr.length) > (0 : stdgo.GoInt) : Bool) : Bool) && true : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L131"
            if ((((@:checkr _prefix ?? throw stdgo.Error._nullPointerDereference.__underlying__()).prefixStr.length) > (50 : stdgo.GoInt) : Bool)) {
                (@:checkr _prefix ?? throw stdgo.Error._nullPointerDereference.__underlying__()).prefixStr = ((@:checkr _prefix ?? throw stdgo.Error._nullPointerDereference.__underlying__()).prefixStr.__slice__(0, (50 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            };
            _bmPrefix = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newbmprefix._newBmPrefix((@:checkr _prefix ?? throw stdgo.Error._nullPointerDereference.__underlying__()).prefixStr, (@:checkr _prefix ?? throw stdgo.Error._nullPointerDereference.__underlying__()).caseInsensitive, _rtl);
        } else {
            _bmPrefix = null;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/writer.go#L140"
        return { _0 : (stdgo.Go.setRef(({ codes : (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emitted, strings : (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stringtable, sets : (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._settable, trackCount : (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trackcount, caps : (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps, capsize : _capsize, fcPrefix : _fcPrefix, bmPrefix : _bmPrefix, anchors : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__getanchors._getAnchors(_tree), rightToLeft : _rtl } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_codedotcode.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_codedotCode })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code>), _1 : (null : stdgo.Error) };
    }
}
