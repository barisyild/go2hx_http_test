package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _summary(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):stdgo.GoString {
        var _b_229:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _comment_226:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
        var _group_224:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        var _buf_222:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _i_228:stdgo.GoInt = (0 : stdgo.GoInt);
        var _bytes_227:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _iterator_5059572_225:stdgo.GoInt = (0 : stdgo.GoInt);
        var _iterator_5059383_223:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxLen_221 = 40i64;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 5059360i64;
                } else if (__value__ == (5059360i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L277"
                    if ((0i64 : stdgo.GoInt) < (_list.length)) {
                        _gotoNext = 5059676i64;
                    } else {
                        _gotoNext = 5059706i64;
                    };
                } else if (__value__ == (5059371i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L277"
                    _iterator_5059383_223++;
                    _gotoNext = 5059677i64;
                } else if (__value__ == (5059394i64)) {
                    _group_224 = _list[(_iterator_5059383_223 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L281"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _group_224 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list.length)) {
                        _gotoNext = 5059673i64;
                    } else {
                        _gotoNext = 5059371i64;
                    };
                } else if (__value__ == (5059589i64)) {
                    _comment_226 = (@:checkr _group_224 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list[(_iterator_5059572_225 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L282"
                    if ((_buf_222.len() >= (40 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5059617i64;
                    } else {
                        _gotoNext = 5059642i64;
                    };
                } else if (__value__ == (5059617i64)) {
                    stdgo._internal.go.ast.Ast__loopbreak._loopBreak = true;
                    _gotoNext = 5059677i64;
                } else if (__value__ == (5059642i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L285"
                    _buf_222.writeString((@:checkr _comment_226 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).text?.__copy__());
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L281"
                    _iterator_5059572_225++;
                    _gotoNext = 5059674i64;
                } else if (__value__ == (5059673i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (@:checkr _group_224 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list[(0i64 : stdgo.GoInt)];
                        _iterator_5059572_225 = @:binopAssign __tmp__0;
                        _comment_226 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5059674i64;
                } else if (__value__ == (5059674i64)) {
                    //"file://#L0"
                    if (_iterator_5059572_225 < ((@:checkr _group_224 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list.length)) {
                        _gotoNext = 5059589i64;
                    } else {
                        _gotoNext = 5059371i64;
                    };
                } else if (__value__ == (5059676i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _list[(0i64 : stdgo.GoInt)];
                        _iterator_5059383_223 = @:binopAssign __tmp__0;
                        _group_224 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5059677i64;
                } else if (__value__ == (5059677i64)) {
                    //"file://#L0"
                    if (_iterator_5059383_223 < (_list.length)) {
                        _gotoNext = 5059394i64;
                    } else {
                        _gotoNext = 5059706i64;
                    };
                } else if (__value__ == (5059706i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L290"
                    if ((_buf_222.len() > (40 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5059728i64;
                    } else {
                        _gotoNext = 5059826i64;
                    };
                } else if (__value__ == (5059728i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L291"
                    _buf_222.truncate((37 : stdgo.GoInt));
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L292"
                    _buf_222.writeString(("..." : stdgo.GoString));
                    _gotoNext = 5059826i64;
                } else if (__value__ == (5059826i64)) {
                    _bytes_227 = _buf_222.bytes();
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L297"
                    if ((0i64 : stdgo.GoInt) < (_bytes_227.length)) {
                        _gotoNext = 5059934i64;
                    } else {
                        _gotoNext = 5059939i64;
                    };
                } else if (__value__ == (5059852i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L297"
                    _i_228++;
                    _gotoNext = 5059935i64;
                } else if (__value__ == (5059872i64)) {
                    _b_229 = _bytes_227[(_i_228 : stdgo.GoInt)];
                    _gotoNext = 5059876i64;
                } else if (__value__ == (5059876i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L298"
                    {
                        final __value__ = _b_229;
                        if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8))) {
                            _gotoNext = 5059889i64;
                        } else {
                            _gotoNext = 5059852i64;
                        };
                    };
                } else if (__value__ == (5059889i64)) {
                    _bytes_227[(_i_228 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                    _gotoNext = 5059852i64;
                } else if (__value__ == (5059934i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _bytes_227[(0i64 : stdgo.GoInt)];
                        _i_228 = @:binopAssign __tmp__0;
                        _b_229 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5059935i64;
                } else if (__value__ == (5059935i64)) {
                    //"file://#L0"
                    if (_i_228 < (_bytes_227.length)) {
                        _gotoNext = 5059872i64;
                    } else {
                        _gotoNext = 5059939i64;
                    };
                } else if (__value__ == (5059939i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L304"
                    return (_bytes_227 : stdgo.GoString)?.__copy__();
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
