package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.token.Token.File_asInterface) class File_static_extension {
    @:keep
    @:tdfield
    static public function position( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _p:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_position.Position {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var _pos = ({} : stdgo._internal.go.token.Token_position.Position);
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L356"
        return _pos = _f.positionFor(_p, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function positionFor( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _p:stdgo._internal.go.token.Token_pos.Pos, _adjusted:Bool):stdgo._internal.go.token.Token_position.Position {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var _pos = ({} : stdgo._internal.go.token.Token_position.Position);
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L344"
        if (_p != ((0 : stdgo._internal.go.token.Token_pos.Pos))) {
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L345"
            if ((((_p : stdgo.GoInt) < (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base : Bool) || ((_p : stdgo.GoInt) > ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base + (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L346"
                throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid Pos value %d (should be in [%d, %d])" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos)), new stdgo.AnyInterface((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base + (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            _pos = _f._position(_p, _adjusted)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L350"
        return _pos;
    }
    @:keep
    @:tdfield
    static public function _position( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _p:stdgo._internal.go.token.Token_pos.Pos, _adjusted:Bool):stdgo._internal.go.token.Token_position.Position {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var _pos = ({} : stdgo._internal.go.token.Token_position.Position);
        var _offset = @:assignType ((_p : stdgo.GoInt) - (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base : stdgo.GoInt);
        _pos.offset = _offset;
        {
            var __tmp__ = _f._unpack(_offset, _adjusted);
            _pos.filename = @:tmpset0 __tmp__._0?.__copy__();
            _pos.line = @:tmpset0 __tmp__._1;
            _pos.column = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L336"
        return _pos;
    }
    @:keep
    @:tdfield
    static public function _unpack( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _offset:stdgo.GoInt, _adjusted:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var _filename = ("" : stdgo.GoString), _line = (0 : stdgo.GoInt), _column = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L298"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.lock();
        _filename = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L300"
        {
            var _i = @:assignType (stdgo._internal.go.token.Token__searchints._searchInts((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines, _offset) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = ((_offset - (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines[(_i : stdgo.GoInt)] : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _line = @:binopAssign __tmp__0;
                    _column = @:binopAssign __tmp__1;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L303"
        if ((_adjusted && (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._infos.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L305"
            {
                var _i = @:assignType (stdgo._internal.go.token.Token__searchlineinfos._searchLineInfos((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._infos, _offset) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    var _alt = (stdgo.Go.setRef((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._infos[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_t_lineinfodott_lineinfo.__type__stdgodot_internaldotgodottokendotToken_t_lineinfodotT_lineInfo })) : stdgo.Ref<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>);
                    _filename = (@:checkr _alt ?? throw stdgo.Error._nullPointerDereference.__underlying__()).filename?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L308"
                    {
                        var _i = @:assignType (stdgo._internal.go.token.Token__searchints._searchInts((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines, (@:checkr _alt ?? throw stdgo.Error._nullPointerDereference.__underlying__()).offset) : stdgo.GoInt);
                        if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                            var _d = @:assignType (_line - ((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                            _line = ((@:checkr _alt ?? throw stdgo.Error._nullPointerDereference.__underlying__()).line + _d : stdgo.GoInt);
                            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L312"
                            if ((@:checkr _alt ?? throw stdgo.Error._nullPointerDereference.__underlying__()).column == ((0 : stdgo.GoInt))) {
                                _column = (0 : stdgo.GoInt);
                            } else if (_d == ((0 : stdgo.GoInt))) {
                                _column = ((@:checkr _alt ?? throw stdgo.Error._nullPointerDereference.__underlying__()).column + ((_offset - (@:checkr _alt ?? throw stdgo.Error._nullPointerDereference.__underlying__()).offset : stdgo.GoInt)) : stdgo.GoInt);
                            };
                        };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L328"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.unlock();
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L329"
        return { _0 : _filename, _1 : _line, _2 : _column };
    }
    @:keep
    @:tdfield
    static public function line( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _p:stdgo._internal.go.token.Token_pos.Pos):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L287"
        return _f.position(_p).line;
    }
    @:keep
    @:tdfield
    static public function offset( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _p:stdgo._internal.go.token.Token_pos.Pos):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L278"
        if ((((_p : stdgo.GoInt) < (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base : Bool) || ((_p : stdgo.GoInt) > ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base + (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L279"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid Pos value %d (should be in [%d, %d])" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos)), new stdgo.AnyInterface((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base + (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L281"
        return ((_p : stdgo.GoInt) - (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function pos( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _offset:stdgo.GoInt):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L268"
        if ((_offset > (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L269"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid file offset %d (should be <= %d)" : stdgo.GoString), new stdgo.AnyInterface(_offset, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L271"
        return (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base + _offset : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function addLineColumnInfo( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _offset:stdgo.GoInt, _filename:stdgo.GoString, _line:stdgo.GoInt, _column:stdgo.GoInt):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L257"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.lock();
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L258"
        {
            var _i = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._infos.length : stdgo.GoInt);
            if (((((_i == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._infos[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)].offset < _offset : Bool) : Bool)) && (_offset < (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size : Bool) : Bool)) {
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._infos = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._infos.__append__((new stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo(_offset, _filename?.__copy__(), _line, _column) : stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo)) : stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L261"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.unlock();
    }
    @:keep
    @:tdfield
    static public function addLineInfo( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _offset:stdgo.GoInt, _filename:stdgo.GoString, _line:stdgo.GoInt):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L245"
        _f.addLineColumnInfo(_offset, _filename?.__copy__(), _line, (1 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function lineStart( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _line:stdgo.GoInt):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L221"
            if ((_line < (1 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L222"
                throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid line number %d (should be >= 1)" : stdgo.GoString), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L224"
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.lock();
            {
                final __f__ = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L226"
            if ((_line > ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L227"
                throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid line number %d (should be < %d)" : stdgo.GoString), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L229"
            {
                final __ret__:stdgo._internal.go.token.Token_pos.Pos = (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base + (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines[(_line - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
            };
        };
    }
    @:keep
    @:tdfield
    static public function setLinesForContent( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _content:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var _lines:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _line = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L201"
        if (_content != null) for (_offset => _b in _content) {
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L202"
            if ((_line >= (0 : stdgo.GoInt) : Bool)) {
                _lines = (_lines.__append__(_line) : stdgo.Slice<stdgo.GoInt>);
            };
            _line = (-1 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L206"
            if (_b == ((10 : stdgo.GoUInt8))) {
                _line = (_offset + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L212"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.lock();
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines = _lines;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L214"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.unlock();
    }
    @:keep
    @:tdfield
    static public function setLines( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _lines:stdgo.Slice<stdgo.GoInt>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var _size = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L183"
        if (_lines != null) for (_i => _offset in _lines) {
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L184"
            if ((((_i > (0 : stdgo.GoInt) : Bool) && (_offset <= _lines[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool) || (_size <= _offset : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L185"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L190"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.lock();
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines = _lines;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L192"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.unlock();
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L193"
        return true;
    }
    @:keep
    @:tdfield
    static public function lines( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L166"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.lock();
        var _lines = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L168"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.unlock();
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L169"
        return _lines;
    }
    @:keep
    @:tdfield
    static public function mergeLine( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _line:stdgo.GoInt):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L146"
            if ((_line < (1 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L147"
                throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid line number %d (should be >= 1)" : stdgo.GoString), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L149"
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.lock();
            {
                final __f__ = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L151"
            if ((_line >= ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L152"
                throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid line number %d (should be < %d)" : stdgo.GoString), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L159"
            ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines.__slice__(_line) : stdgo.Slice<stdgo.GoInt>).__copyTo__(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines.__slice__((_line + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines.__slice__(0, (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function addLine( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _offset:stdgo.GoInt):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L134"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.lock();
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L135"
        {
            var _i = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines.length : stdgo.GoInt);
            if (((((_i == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] < _offset : Bool) : Bool)) && (_offset < (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size : Bool) : Bool)) {
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines.__append__(_offset) : stdgo.Slice<stdgo.GoInt>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L138"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.unlock();
    }
    @:keep
    @:tdfield
    static public function lineCount( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L124"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.lock();
        var _n = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lines.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L126"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.unlock();
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L127"
        return _n;
    }
    @:keep
    @:tdfield
    static public function size( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L119"
        return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size;
    }
    @:keep
    @:tdfield
    static public function base( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L114"
        return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base;
    }
    @:keep
    @:tdfield
    static public function name( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L109"
        return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__();
    }
}
