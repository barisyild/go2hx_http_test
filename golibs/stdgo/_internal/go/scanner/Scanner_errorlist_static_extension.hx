package stdgo._internal.go.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.go.scanner.Scanner.ErrorList_asInterface) class ErrorList_static_extension {
    @:keep
    @:tdfield
    static public function err( _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList):stdgo.Error {
        @:recv var _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L103"
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L104"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L106"
        return stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type__stdgodot_internaldotgodotscannerdotscanner_errorlistdoterrorlist.__type__stdgodot_internaldotgodotscannerdotScanner_errorlistdotErrorList);
    }
    @:keep
    @:tdfield
    static public function error( _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList):stdgo.GoString {
        @:recv var _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L91"
        {
            final __value__ = (_p.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L93"
                return ("no errors" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L95"
                return (@:checkr _p[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).error()?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L97"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s (and %d more errors)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_p[(0 : stdgo.GoInt)], _internal.gotype.Gotype___type__stdgodot_internaldotgodotscannerdotscanner_errordoterror.__type__stdgodot_internaldotgodotscannerdotScanner_errordotError), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotscannerdotscanner_errordoterror.__type__stdgodot_internaldotgodotscannerdotScanner_errordotError }))), new stdgo.AnyInterface(((_p.length) - (1 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function removeMultiples( _p:stdgo.Ref<stdgo._internal.go.scanner.Scanner_errorlist.ErrorList>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.scanner.Scanner_errorlist.ErrorList> = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L76"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotscannerdotscanner_errorlistdoterrorlist.__type__stdgodot_internaldotgodotscannerdotScanner_errorlistdotErrorList })));
        var _last:stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L79"
        if ((_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList) != null) for (__0 => _e in (_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList)) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L80"
            if ((((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).pos.filename != _last.filename) || ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).pos.line != _last.line) : Bool)) {
                _last = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).pos?.__copy__();
                ((_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList))[(_i : stdgo.GoInt)] = _e;
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L83"
                _i++;
            };
        };
        @:_1 (_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList).__setData__((((_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList)).__slice__((0 : stdgo.GoInt), _i) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList));
    }
    @:keep
    @:tdfield
    static public function sort( _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList):Void {
        @:recv var _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L71"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type__stdgodot_internaldotgodotscannerdotscanner_errorlistdoterrorlist.__type__stdgodot_internaldotgodotscannerdotScanner_errorlistdotErrorList));
    }
    @:keep
    @:tdfield
    static public function less( _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = _p;
        var _e = (stdgo.Go.setRef((@:checkr _p[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).pos, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_positiondotposition.__type__stdgodot_internaldotgodottokendotToken_positiondotPosition })) : stdgo.Ref<stdgo._internal.go.token.Token_position.Position>);
        var _f = (stdgo.Go.setRef((@:checkr _p[(_j : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).pos, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_positiondotposition.__type__stdgodot_internaldotgodottokendotToken_positiondotPosition })) : stdgo.Ref<stdgo._internal.go.token.Token_position.Position>);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L55"
        if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).filename != ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).filename)) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L56"
            return ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).filename < (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).filename : Bool);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L58"
        if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).line != ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).line)) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L59"
            return ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).line < (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).line : Bool);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L61"
        if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).column != ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).column)) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L62"
            return ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).column < (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).column : Bool);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L64"
        return ((@:checkr _p[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).msg < (@:checkr _p[(_j : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).msg : Bool);
    }
    @:keep
    @:tdfield
    static public function swap( _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = _p;
        {
            final __tmp__0 = _p[(_j : stdgo.GoInt)];
            final __tmp__1 = _p[(_i : stdgo.GoInt)];
            final __tmp__2 = _p;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _p;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function len( _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList):stdgo.GoInt {
        @:recv var _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/errors.go#L46"
        return (_p.length);
    }
    @:keep
    @:tdfield
    static public function reset( _p:stdgo.Ref<stdgo._internal.go.scanner.Scanner_errorlist.ErrorList>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.scanner.Scanner_errorlist.ErrorList> = _p;
        @:_1 (_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList).__setData__((((_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList)).__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList));
    }
    @:keep
    @:tdfield
    static public function add( _p:stdgo.Ref<stdgo._internal.go.scanner.Scanner_errorlist.ErrorList>, _pos:stdgo._internal.go.token.Token_position.Position, _msg:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.scanner.Scanner_errorlist.ErrorList> = _p;
        @:_1 (_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList).__setData__(((_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList).__append__((stdgo.Go.setRef((new stdgo._internal.go.scanner.Scanner_error.Error(_pos?.__copy__(), _msg?.__copy__()) : stdgo._internal.go.scanner.Scanner_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotscannerdotscanner_errordoterror.__type__stdgodot_internaldotgodotscannerdotScanner_errordotError })) : stdgo.Ref<stdgo._internal.go.scanner.Scanner_error.Error>)) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList));
    }
}
