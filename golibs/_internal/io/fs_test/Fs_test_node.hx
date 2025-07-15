package _internal.io.fs_test;
@:structInit @:using(_internal.io.fs_test.Fs_test_node_static_extension.Node_static_extension) @:using(_internal.io.fs_test.Fs_test_node_static_extension.Node_static_extension) class Node {
    public var _name : stdgo.GoString = "";
    public var _entries : stdgo.Slice<stdgo.Ref<_internal.io.fs_test.Fs_test_node.Node>> = (null : stdgo.Slice<stdgo.Ref<_internal.io.fs_test.Fs_test_node.Node>>);
    public var _mark : stdgo.GoInt = 0;
    public function new(?_name:stdgo.GoString, ?_entries:stdgo.Slice<stdgo.Ref<_internal.io.fs_test.Fs_test_node.Node>>, ?_mark:stdgo.GoInt) {
        if (_name != null) this._name = _name;
        if (_entries != null) this._entries = _entries;
        if (_mark != null) this._mark = _mark;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_entries", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_nodedotnode.__type___internaldotiodotfs_testdotFs_test_nodedotNode }) }) }, optional : false }, { name : "_mark", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new Node(_name, _entries, _mark);
    }
}
