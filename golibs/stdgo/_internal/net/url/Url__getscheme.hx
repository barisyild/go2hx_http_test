package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function _getScheme(_rawURL:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _scheme = ("" : stdgo.GoString), _path = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L437"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_rawURL.length) : Bool)) {
                var _c = @:assignType (_rawURL[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L439"
                if (((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {} else if (((((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool) || _c == ((43 : stdgo.GoUInt8)) : Bool) || _c == ((45 : stdgo.GoUInt8)) : Bool) || (_c == (46 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L443"
                    if (_i == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L444"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : _rawURL.__copy__(), _2 : (null : stdgo.Error) };
                            _scheme = __tmp__._0;
                            _path = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                } else if (_c == ((58 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L447"
                    if (_i == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L448"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _2 : stdgo._internal.errors.Errors_new_.new_(("missing protocol scheme" : stdgo.GoString)) };
                            _scheme = __tmp__._0;
                            _path = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L450"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (_rawURL.__slice__(0, _i) : stdgo.GoString).__copy__(), _1 : (_rawURL.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__(), _2 : (null : stdgo.Error) };
                        _scheme = __tmp__._0;
                        _path = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L454"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : _rawURL.__copy__(), _2 : (null : stdgo.Error) };
                        _scheme = __tmp__._0;
                        _path = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L457"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _rawURL?.__copy__(), _2 : (null : stdgo.Error) };
            _scheme = __tmp__._0;
            _path = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
