package stdgo.container.list;
typedef Element = stdgo._internal.container.list.List_element.Element;
typedef List_ = stdgo._internal.container.list.List_list.List;
typedef ElementPointer = stdgo._internal.container.list.List_elementpointer.ElementPointer;
typedef ListPointer = stdgo._internal.container.list.List_listpointer.ListPointer;
typedef ElementPointerPointer = stdgo._internal.container.list.List_elementpointerpointer.ElementPointerPointer;
typedef ListPointerPointer = stdgo._internal.container.list.List_listpointerpointer.ListPointerPointer;
/**
    * Package list implements a doubly linked list.
    * 
    * To iterate over a list (where l is a *List):
    * 
    * 	for e := l.Front(); e != nil; e = e.Next() {
    * 		// do something with e.Value
    * 	}
**/
class List {
    /**
        * New returns an initialized list.
    **/
    static public inline function new_():stdgo.Ref<stdgo._internal.container.list.List_list.List> return stdgo._internal.container.list.List_new_.new_();
}
