package net.dns.dnsmessage;
var typeA : Type_ = 1i64;
var typeNS : Type_ = 2i64;
var typeCNAME : Type_ = 5i64;
var typeSOA : Type_ = 6i64;
var typePTR : Type_ = 12i64;
var typeMX : Type_ = 15i64;
var typeTXT : Type_ = 16i64;
var typeAAAA : Type_ = 28i64;
var typeSRV : Type_ = 33i64;
var typeOPT : Type_ = 41i64;
var typeWKS : Type_ = 11i64;
var typeHINFO : Type_ = 13i64;
var typeMINFO : Type_ = 14i64;
var typeAXFR : Type_ = 252i64;
var typeALL : Type_ = 255i64;
var classINET : Class_ = 1i64;
var classCSNET : Class_ = 2i64;
var classCHAOS : Class_ = 3i64;
var classHESIOD : Class_ = 4i64;
var classANY : Class_ = 255i64;
var rCodeSuccess : RCode = 0i64;
var rCodeFormatError : RCode = 1i64;
var rCodeServerFailure : RCode = 2i64;
var rCodeNameError : RCode = 3i64;
var rCodeNotImplemented : RCode = 4i64;
var rCodeRefused : RCode = 5i64;
var errNotStarted(get, set) : stdgo.Error;
private function get_errNotStarted():stdgo.Error return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted;
private function set_errNotStarted(v:stdgo.Error):stdgo.Error {
    _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted = v;
    return v;
}
var errSectionDone(get, set) : stdgo.Error;
private function get_errSectionDone():stdgo.Error return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
private function set_errSectionDone(v:stdgo.Error):stdgo.Error {
    _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone = v;
    return v;
}
typedef ResourceBody = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourcebody.ResourceBody;
typedef Header = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header;
typedef Message = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_message.Message;
typedef Resource = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource;
typedef Parser = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser;
typedef Builder = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder;
typedef ResourceHeader = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader;
typedef Name = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name;
typedef Question = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question;
typedef CNAMEResource = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresource.CNAMEResource;
typedef MXResource = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource;
typedef NSResource = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource;
typedef PTRResource = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresource.PTRResource;
typedef SOAResource = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource;
typedef TXTResource = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource;
typedef SRVResource = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource.SRVResource;
typedef AResource = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource;
typedef AAAAResource = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource;
typedef OPTResource = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource;
typedef Option = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_option.Option;
typedef UnknownResource = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource;
typedef Type_ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_;
typedef Class_ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_class_.Class_;
typedef OpCode = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_opcode.OpCode;
typedef RCode = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode;
typedef HeaderPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_headerpointer.HeaderPointer;
typedef MessagePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_messagepointer.MessagePointer;
typedef ResourcePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourcepointer.ResourcePointer;
typedef ParserPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parserpointer.ParserPointer;
typedef BuilderPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builderpointer.BuilderPointer;
typedef ResourceHeaderPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheaderpointer.ResourceHeaderPointer;
typedef NamePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_namepointer.NamePointer;
typedef QuestionPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_questionpointer.QuestionPointer;
typedef CNAMEResourcePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresourcepointer.CNAMEResourcePointer;
typedef MXResourcePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresourcepointer.MXResourcePointer;
typedef NSResourcePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresourcepointer.NSResourcePointer;
typedef PTRResourcePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresourcepointer.PTRResourcePointer;
typedef SOAResourcePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresourcepointer.SOAResourcePointer;
typedef TXTResourcePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresourcepointer.TXTResourcePointer;
typedef SRVResourcePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresourcepointer.SRVResourcePointer;
typedef AResourcePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresourcepointer.AResourcePointer;
typedef AAAAResourcePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresourcepointer.AAAAResourcePointer;
typedef OPTResourcePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresourcepointer.OPTResourcePointer;
typedef OptionPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optionpointer.OptionPointer;
typedef UnknownResourcePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresourcepointer.UnknownResourcePointer;
typedef Type_Pointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_pointer.Type_Pointer;
typedef Class_Pointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_class_pointer.Class_Pointer;
typedef OpCodePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_opcodepointer.OpCodePointer;
typedef RCodePointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcodepointer.RCodePointer;
typedef HeaderPointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_headerpointerpointer.HeaderPointerPointer;
typedef MessagePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_messagepointerpointer.MessagePointerPointer;
typedef ResourcePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourcepointerpointer.ResourcePointerPointer;
typedef ParserPointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parserpointerpointer.ParserPointerPointer;
typedef BuilderPointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builderpointerpointer.BuilderPointerPointer;
typedef ResourceHeaderPointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheaderpointerpointer.ResourceHeaderPointerPointer;
typedef NamePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_namepointerpointer.NamePointerPointer;
typedef QuestionPointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_questionpointerpointer.QuestionPointerPointer;
typedef CNAMEResourcePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresourcepointerpointer.CNAMEResourcePointerPointer;
typedef MXResourcePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresourcepointerpointer.MXResourcePointerPointer;
typedef NSResourcePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresourcepointerpointer.NSResourcePointerPointer;
typedef PTRResourcePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresourcepointerpointer.PTRResourcePointerPointer;
typedef SOAResourcePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresourcepointerpointer.SOAResourcePointerPointer;
typedef TXTResourcePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresourcepointerpointer.TXTResourcePointerPointer;
typedef SRVResourcePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresourcepointerpointer.SRVResourcePointerPointer;
typedef AResourcePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresourcepointerpointer.AResourcePointerPointer;
typedef AAAAResourcePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresourcepointerpointer.AAAAResourcePointerPointer;
typedef OPTResourcePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresourcepointerpointer.OPTResourcePointerPointer;
typedef OptionPointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optionpointerpointer.OptionPointerPointer;
typedef UnknownResourcePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresourcepointerpointer.UnknownResourcePointerPointer;
typedef Type_PointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_pointerpointer.Type_PointerPointer;
typedef Class_PointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_class_pointerpointer.Class_PointerPointer;
typedef OpCodePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_opcodepointerpointer.OpCodePointerPointer;
typedef RCodePointerPointer = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcodepointerpointer.RCodePointerPointer;
/**
    * Package dnsmessage provides a mostly RFC 1035 compliant implementation of
    * DNS message packing and unpacking.
    * 
    * The package also supports messages with Extension Mechanisms for DNS
    * (EDNS(0)) as defined in RFC 6891.
    * 
    * This implementation is designed to minimize heap allocations and avoid
    * unnecessary packing and unpacking as much as possible.
**/
class Dnsmessage {
    /**
        * NewBuilder creates a new builder with compression disabled.
        * 
        * Note: Most users will want to immediately enable compression with the
        * EnableCompression method. See that method's comment for why you may or may
        * not want to enable compression.
        * 
        * The DNS message is appended to the provided initial buffer buf (which may be
        * nil) as it is built. The final message is returned by the (*Builder).Finish
        * method, which includes buf[:len(buf)] and may return the same underlying
        * array if there was sufficient capacity in the slice.
    **/
    static public inline function newBuilder(_buf:stdgo.Slice<stdgo.GoUInt8>, _h:Header):_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_newbuilder.newBuilder(_buf, _h);
    /**
        * NewName creates a new Name from a string.
    **/
    static public inline function newName(_name:stdgo.GoString):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name; var _1 : stdgo.Error; } return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_newname.newName(_name);
    /**
        * MustNewName creates a new Name from a string and panics on error.
    **/
    static public inline function mustNewName(_name:stdgo.GoString):_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mustnewname.mustNewName(_name);
}
