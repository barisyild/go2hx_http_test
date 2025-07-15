package stdgo._internal.testing.fstest;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.path.Path;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.testing.iotest.Iotest;
function _testFS(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error {
        var _expected = new stdgo.Slice<stdgo.GoString>(_expected.length, 0, ..._expected);
        var _t = ({ _fsys : _fsys } : stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L64"
        _t._checkDir(("." : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L65"
        _t._checkOpen(("." : stdgo.GoString));
        var _found = (({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L67"
        if (_t._dirs != null) for (__2 => _dir in _t._dirs) {
            _found[_dir] = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L70"
        if (_t._files != null) for (__3 => _file in _t._files) {
            _found[_file] = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L73"
        if (_found != null) _found.__remove__(("." : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L74"
        if (((_expected.length == (0 : stdgo.GoInt)) && ((_found.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _list:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L76"
            if (_found != null) for (_k => _ in _found) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L77"
                if (_k != (("." : stdgo.GoString))) {
                    _list = (_list.__append__(_k?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L81"
            stdgo._internal.sort.Sort_strings.strings(_list);
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L82"
            if (((_list.length) > (15 : stdgo.GoInt) : Bool)) {
                _list = ((_list.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>).__append__(("..." : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L85"
            _t._errorf(("expected empty file system but found files:\n%s" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.strings.Strings_join.join(_list, ("\n" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L87"
        if (_expected != null) for (__4 => _name in _expected) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L88"
            if (!(_found[_name] ?? false)) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L89"
                _t._errorf(("expected but not found: %s" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L92"
        if ((_t._errText.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L93"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L95"
        return stdgo._internal.errors.Errors_new_.new_((("TestFS found errors:\n" : stdgo.GoString) + (_t._errText : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
    }
