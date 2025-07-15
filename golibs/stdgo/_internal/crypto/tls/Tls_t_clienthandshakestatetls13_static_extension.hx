package stdgo._internal.crypto.tls;
import stdgo._internal.internal.cpu.Cpu;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.rc4.Rc4;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.internal.boring.Boring;
import _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305;
import stdgo._internal.container.list.List;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.x509.X509;
import stdgo._internal.runtime.Runtime;
import _internal.golangdotorg.x.crypto.hkdf.Hkdf;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.time.Time;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
import _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_clientHandshakeStateTLS13_asInterface) class T_clientHandshakeStateTLS13_static_extension {
    @:keep
    @:tdfield
    static public function _sendClientFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        var _finished = (stdgo.Go.setRef(({ _verifyData : (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._finishedHash((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._trafficSecret, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript) } : stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L701"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_finished, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L702"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L705"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._setTrafficSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, (3 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trafficSecret);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L707"
        if ((!(@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketsDisabled && ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientSessionCache != null) : Bool)) {
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resumptionSecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret, ("res master" : stdgo.GoString), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L712"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L713"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.len() != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L714"
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L716"
            _c._quicSetWriteSecret((3 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trafficSecret);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L719"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _sendClientCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L630"
        if (({
            final value = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certReq;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L631"
            return (null : stdgo.Error);
        };
        var __tmp__ = _c._getClientCertificate((stdgo.Go.setRef(({ acceptableCAs : (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities, signatureSchemes : (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms, version : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, _ctx : (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx } : stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificaterequestinfodotcertificaterequestinfo.__type__stdgodot_internaldotcryptodottlsdotTls_certificaterequestinfodotCertificateRequestInfo })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo>)), _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L640"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L641"
            return _err;
        };
        var _certMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgtls13dott_certificatemsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgtls13dotT_certificateMsgTLS13 })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13>);
        (@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificate = (_cert : stdgo._internal.crypto.tls.Tls_certificate.Certificate)?.__copy__();
        (@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts = ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts && (((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signedCertificateTimestamps.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        (@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling = ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling && (((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).oCSPStaple.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L650"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_certMsg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgtls13dott_certificatemsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgtls13dotT_certificateMsgTLS13 })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L651"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L655"
        if (((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificate.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L656"
            return (null : stdgo.Error);
        };
        var _certVerifyMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>);
        (@:checkr _certVerifyMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasSignatureAlgorithm = true;
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__selectsignaturescheme._selectSignatureScheme((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, _cert, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms);
            (@:checkr _certVerifyMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signatureAlgorithm = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L663"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L666"
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L667"
            return _err;
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme((@:checkr _certVerifyMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signatureAlgorithm), _sigType:stdgo.GoUInt8 = __tmp__._0, _sigHash:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L671"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L672"
            return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        var _signed = stdgo._internal.crypto.tls.Tls__signedmessage._signedMessage(_sigHash, (stdgo.Go.str("TLS 1.3, client CertificateVerify", 0) : stdgo.GoString)?.__copy__(), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        var _signOpts = @:assignType (stdgo.Go.asInterface(_sigHash, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_hashdothash.__type__stdgodot_internaldotcryptodotCrypto_hashdotHash) : stdgo._internal.crypto.Crypto_signeropts.SignerOpts);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L677"
        if (_sigType == ((226 : stdgo.GoUInt8))) {
            _signOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _sigHash } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pssoptionsdotpssoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pssoptionsdotPSSOptions })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pssoptionsdotpssoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pssoptionsdotPSSOptions }));
        };
        var __tmp__ = (stdgo.Go.typeAssert((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_signerdotsigner.__type__stdgodot_internaldotcryptodotCrypto_signerdotSigner) : stdgo._internal.crypto.Crypto_signer.Signer).sign((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._rand(), _signed, _signOpts), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L681"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L682"
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L683"
            return stdgo._internal.errors.Errors_new_.new_((("tls: failed to sign handshake: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
        };
        (@:checkr _certVerifyMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signature = _sig;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L687"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_certVerifyMsg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L688"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L691"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readServerFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L583"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L584"
            return _err;
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>), _1 : false };
        }, _finished = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L588"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L589"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L590"
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_finished, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg }))), _msg);
        };
        var _expectedMAC = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._finishedHash((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._trafficSecret, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L594"
        if (!stdgo._internal.crypto.hmac.Hmac_equal.equal(_expectedMAC, (@:checkr _finished ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifyData)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L595"
            _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L596"
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid server finished hash" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L599"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface(_finished, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L600"
                return _err;
            };
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trafficSecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret, ("c ap traffic" : stdgo.GoString), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        var _serverSecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret, ("s ap traffic" : stdgo.GoString), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L609"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setTrafficSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, (3 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _serverSecret);
        _err = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._writeKeyLog(("CLIENT_TRAFFIC_SECRET_0" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trafficSecret);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L612"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L613"
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L614"
            return _err;
        };
        _err = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._writeKeyLog(("SERVER_TRAFFIC_SECRET_0" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, _serverSecret);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L617"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L618"
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L619"
            return _err;
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ekm = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._exportKeyingMaterial((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L624"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readServerCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L490"
        if ((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._usingPSK) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L494"
            if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyConnection != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L495"
                {
                    var _err = @:assignType ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyConnection(_c._connectionStateLocked()?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L496"
                        _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L497"
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L500"
            return (null : stdgo.Error);
        };
        var __tmp__ = _c._readHandshake((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L504"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L505"
            return _err;
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificaterequestmsgtls13dott_certificaterequestmsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificaterequestmsgtls13dotT_certificateRequestMsgTLS13 })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13>), _1 : false };
        }, _certReq = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L509"
        if (_ok) {
            (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certReq = _certReq;
            {
                var __tmp__ = _c._readHandshake((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L513"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L514"
                return _err;
            };
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgtls13dott_certificatemsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgtls13dotT_certificateMsgTLS13 })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13>), _1 : false };
        }, _certMsg = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L519"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L520"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L521"
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_certMsg, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgtls13dott_certificatemsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgtls13dotT_certificateMsgTLS13), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgtls13dott_certificatemsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgtls13dotT_certificateMsgTLS13 }))), _msg);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L523"
        if (((@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificate.certificate.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L524"
            _c._sendAlert((50 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L525"
            return stdgo._internal.errors.Errors_new_.new_(("tls: received empty certificates message" : stdgo.GoString));
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts = (@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificate.signedCertificateTimestamps;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse = (@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificate.oCSPStaple;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L531"
        {
            var _err = @:assignType (_c._verifyServerCertificate((@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificate.certificate) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L532"
                return _err;
            };
        };
        {
            var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash));
            _msg = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L539"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L540"
            return _err;
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>), _1 : false };
        }, _certVerify = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L544"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L545"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L546"
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_certVerify, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg }))), _msg);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L550"
        if (!stdgo._internal.crypto.tls.Tls__issupportedsignaturealgorithm._isSupportedSignatureAlgorithm((@:checkr _certVerify ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signatureAlgorithm, stdgo._internal.crypto.tls.Tls__supportedsignaturealgorithms._supportedSignatureAlgorithms())) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L551"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L552"
            return stdgo._internal.errors.Errors_new_.new_(("tls: certificate used with invalid signature algorithm" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme((@:checkr _certVerify ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signatureAlgorithm), _sigType:stdgo.GoUInt8 = __tmp__._0, _sigHash:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L555"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L556"
            return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L558"
        if (((_sigType == (225 : stdgo.GoUInt8)) || (_sigHash == (3u32 : stdgo._internal.crypto.Crypto_hash.Hash)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L559"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L560"
            return stdgo._internal.errors.Errors_new_.new_(("tls: certificate used with invalid signature algorithm" : stdgo.GoString));
        };
        var _signed = stdgo._internal.crypto.tls.Tls__signedmessage._signedMessage(_sigHash, (stdgo.Go.str("TLS 1.3, server CertificateVerify", 0) : stdgo.GoString)?.__copy__(), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L563"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__verifyhandshakesignature._verifyHandshakeSignature(_sigType, ({
                final __t__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _sigHash, _signed, (@:checkr _certVerify ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signature) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L565"
                _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L566"
                return stdgo._internal.errors.Errors_new_.new_((("tls: invalid signature by the server certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L569"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface(_certVerify, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L570"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L573"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readServerParameters( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        var __tmp__ = _c._readHandshake((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L430"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L431"
            return _err;
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_encryptedextensionsmsgdott_encryptedextensionsmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_encryptedextensionsmsgdotT_encryptedExtensionsMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg>), _1 : false };
        }, _encryptedExtensions = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L435"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L436"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L437"
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_encryptedExtensions, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_encryptedextensionsmsgdott_encryptedextensionsmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_encryptedextensionsmsgdotT_encryptedExtensionsMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_encryptedextensionsmsgdott_encryptedextensionsmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_encryptedextensionsmsgdotT_encryptedExtensionsMsg }))), _msg);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L440"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__checkalpn._checkALPN((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols, (@:checkr _encryptedExtensions ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol?.__copy__(), ({
                final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L445"
                _c._sendAlert((120 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L446"
                return _err;
            };
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientProtocol = (@:checkr _encryptedExtensions ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L450"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L451"
            if ((@:checkr _encryptedExtensions ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quicTransportParameters == null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L453"
                _c._sendAlert((109 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L454"
                return stdgo._internal.errors.Errors_new_.new_(("tls: server did not send a quic_transport_parameters extension" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L456"
            _c._quicSetTransportParameters((@:checkr _encryptedExtensions ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quicTransportParameters);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L458"
            if ((@:checkr _encryptedExtensions ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quicTransportParameters != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L459"
                _c._sendAlert((110 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L460"
                return stdgo._internal.errors.Errors_new_.new_(("tls: server sent an unexpected quic_transport_parameters extension" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L464"
        if ((!(@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData && (@:checkr _encryptedExtensions ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L465"
            _c._sendAlert((110 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L466"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent an unexpected early_data extension" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L468"
        if (((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData && !(@:checkr _encryptedExtensions ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L469"
            _c._quicRejectedEarlyData();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L471"
        if ((@:checkr _encryptedExtensions ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L472"
            if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite != ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L473"
                _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L474"
                return stdgo._internal.errors.Errors_new_.new_(("tls: server accepted 0-RTT with the wrong cipher suite" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L476"
            if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol != ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientProtocol)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L477"
                _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L478"
                return stdgo._internal.errors.Errors_new_.new_(("tls: server accepted 0-RTT with the wrong ALPN" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L482"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _establishHandshakeKeys( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ecdheKey.curve().newPublicKey((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverShare._data), _peerKey:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L376"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L377"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L378"
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid server key share" : stdgo.GoString));
        };
        var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ecdheKey.eCDH(_peerKey), _sharedKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L381"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L382"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L383"
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid server key share" : stdgo.GoString));
        };
        var _earlySecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlySecret;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L387"
        if (!(@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._usingPSK) {
            _earlySecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._extract((null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _handshakeSecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._extract(_sharedKey, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret(_earlySecret, ("derived" : stdgo.GoString), (null : stdgo._internal.hash.Hash_hash.Hash)));
        var _clientSecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret(_handshakeSecret, ("c hs traffic" : stdgo.GoString), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L396"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._setTrafficSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, (2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _clientSecret);
        var _serverSecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret(_handshakeSecret, ("s hs traffic" : stdgo.GoString), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L399"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setTrafficSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, (2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _serverSecret);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L401"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L402"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.len() != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L403"
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L405"
            _c._quicSetWriteSecret((2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, _clientSecret);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L406"
            _c._quicSetReadSecret((2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, _serverSecret);
        };
        _err = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._writeKeyLog(("CLIENT_HANDSHAKE_TRAFFIC_SECRET" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, _clientSecret);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L410"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L411"
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L412"
            return _err;
        };
        _err = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._writeKeyLog(("SERVER_HANDSHAKE_TRAFFIC_SECRET" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, _serverSecret);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L415"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L416"
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L417"
            return _err;
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._extract((null : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret(_handshakeSecret, ("derived" : stdgo.GoString), (null : stdgo._internal.hash.Hash_hash.Hash)));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L423"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processServerHello( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L317"
        if (stdgo._internal.bytes.Bytes_equal.equal((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, stdgo._internal.crypto.tls.Tls__helloretryrequestrandom._helloRetryRequestRandom)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L318"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L319"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent two HelloRetryRequest messages" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L322"
        if (((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cookie.length) != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L323"
            _c._sendAlert((110 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L324"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent a cookie in a normal ServerHello" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L327"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._selectedGroup != ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L328"
            _c._sendAlert((50 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L329"
            return stdgo._internal.errors.Errors_new_.new_(("tls: malformed key_share extension" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L332"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverShare._group == ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L333"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L334"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server did not send a key share" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L336"
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__curveidforcurve._curveIDForCurve((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ecdheKey.curve()), _sentID:stdgo._internal.crypto.tls.Tls_curveid.CurveID = __tmp__._0, __3:Bool = __tmp__._1;
            if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverShare._group != (_sentID)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L337"
                _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L338"
                return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported group" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L341"
        if (!(@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._selectedIdentityPresent) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L342"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L345"
        if ((((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._selectedIdentity : stdgo.GoInt) >= ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskIdentities.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L346"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L347"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected an invalid PSK" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L350"
        if ((((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskIdentities.length != (1 : stdgo.GoInt)) || ({
            final value = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L351"
            return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        var _pskSuite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L354"
        if (({
            final value = _pskSuite;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L355"
            return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L357"
        if ((@:checkr _pskSuite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash != ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L358"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L359"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected an invalid PSK and cipher suite pair" : stdgo.GoString));
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._usingPSK = true;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._didResume = true;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeCertHandles = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeCertHandles;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L369"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processHelloRetryRequest( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        var _chHash = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L196"
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript.reset();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L197"
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript.write((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(254 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (_chHash.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L198"
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript.write(_chHash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L199"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L200"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L206"
        if ((((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._selectedGroup == (0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID)) && ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cookie == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L207"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L208"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent an unnecessary HelloRetryRequest message" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L211"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cookie != null) {
            (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cookie = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cookie;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L215"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverShare._group != ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L216"
            _c._sendAlert((50 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L217"
            return stdgo._internal.errors.Errors_new_.new_(("tls: received malformed key_share extension" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L223"
        {
            var _curveID = @:assignType ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._selectedGroup : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
            if (_curveID != ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
                var _curveOK = @:assignType (false : Bool);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L225"
                if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves != null) for (__3 => _id in (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L226"
                    if (_id == (_curveID)) {
                        _curveOK = true;
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L228"
                        break;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L231"
                if (!_curveOK) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L232"
                    _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L233"
                    return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported group" : stdgo.GoString));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L235"
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__curveidforcurve._curveIDForCurve((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ecdheKey.curve()), _sentID:stdgo._internal.crypto.tls.Tls_curveid.CurveID = __tmp__._0, __4:Bool = __tmp__._1;
                    if (_sentID == (_curveID)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L236"
                        _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L237"
                        return stdgo._internal.errors.Errors_new_.new_(("tls: server sent an unnecessary HelloRetryRequest key_share" : stdgo.GoString));
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L239"
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__curveforcurveid._curveForCurveID(_curveID), __5:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L240"
                        _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L241"
                        return stdgo._internal.errors.Errors_new_.new_(("tls: CurvePreferences includes unsupported curve" : stdgo.GoString));
                    };
                };
                var __tmp__ = stdgo._internal.crypto.tls.Tls__generateecdhekey._generateECDHEKey((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._rand(), _curveID), _key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L244"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L245"
                    _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L246"
                    return _err;
                };
                (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ecdheKey = _key;
                (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keyShares = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare>(1, 1, ...[({ _group : _curveID, _data : _key.publicKey().bytes() } : stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare>);
            };
        };
        (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L253"
        if ((((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskIdentities.length) > (0 : stdgo.GoInt) : Bool)) {
            var _pskSuite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L255"
            if (({
                final value = _pskSuite;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L256"
                return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L258"
            if ((@:checkr _pskSuite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash == ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash)) {
                var _ticketAge = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._time().sub(stdgo._internal.time.Time_unix.unix(((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._createdAt : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__()) : stdgo._internal.time.Time_duration.Duration);
                (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskIdentities[(0 : stdgo.GoInt)]._obfuscatedTicketAge = (((_ticketAge / (1000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) : stdgo.GoUInt32) + (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ageAdd : stdgo.GoUInt32);
                var _transcript = @:assignType ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.new_() : stdgo._internal.hash.Hash_hash.Hash);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L264"
                _transcript.write((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(254 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (_chHash.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L265"
                _transcript.write(_chHash);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L266"
                {
                    var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg })), _transcript) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L267"
                        return _err;
                    };
                };
                var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello._marshalWithoutBinders(), _helloBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L270"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L271"
                    return _err;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L273"
                _transcript.write(_helloBytes);
                var _pskBinders = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(1, 1, ...[(@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._finishedHash((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._binderKey, _transcript)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L275"
                {
                    var _err = @:assignType ((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello._updateBinders(_pskBinders) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L276"
                        return _err;
                    };
                };
            } else {
                (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskIdentities = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity>);
                (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L285"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData) {
            (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData = false;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L287"
            _c._quicRejectedEarlyData();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L290"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L291"
                return _err;
            };
        };
        var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L296"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L297"
            return _err;
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>), _1 : false };
        }, _serverHello = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L301"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L302"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L303"
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_serverHello, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg }))), _msg);
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello = _serverHello;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L307"
        {
            var _err = @:assignType (_hs._checkServerHelloOrHRR() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L308"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L311"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _sendDummyChangeCipherSpec( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L176"
        if (({
            final value = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L177"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L179"
        if ((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentDummyCCS) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L180"
            return (null : stdgo.Error);
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentDummyCCS = true;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L184"
        return (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeChangeCipherRecord();
    }
    @:keep
    @:tdfield
    static public function _checkServerHelloOrHRR( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L122"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersion == ((0 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L123"
            _c._sendAlert((109 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L124"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected TLS 1.3 using the legacy version field" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L127"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersion != ((772 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L128"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L129"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected an invalid version after a HelloRetryRequest" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L132"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers != ((771 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L133"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L134"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent an incorrect legacy version" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L137"
        if ((((((((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling || (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketSupported : Bool) || (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extendedMasterSecret : Bool) || (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiationSupported : Bool) || ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiation.length) != ((0 : stdgo.GoInt)) : Bool) || ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol.length) != ((0 : stdgo.GoInt)) : Bool) || ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts.length != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L144"
            _c._sendAlert((110 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L145"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent a ServerHello extension forbidden in TLS 1.3" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L148"
        if (!stdgo._internal.bytes.Bytes_equal.equal((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L149"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L150"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server did not echo the legacy session ID" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L153"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionMethod != ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L154"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L155"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported compression format" : stdgo.GoString));
        };
        var _selectedSuite = stdgo._internal.crypto.tls.Tls__mutualciphersuitetls13._mutualCipherSuiteTLS13((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L159"
        if ((({
            final value = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (_selectedSuite != (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L160"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L161"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server changed cipher suite after a HelloRetryRequest" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L163"
        if (({
            final value = _selectedSuite;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L164"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L165"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server chose an unconfigured cipher suite" : stdgo.GoString));
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite = _selectedSuite;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L170"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _handshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L44"
        if (stdgo._internal.crypto.tls.Tls__needfips._needFIPS()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L45"
            return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: TLS 1.3 reached in FIPS mode" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L50"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakes > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L51"
            _c._sendAlert((70 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L52"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server selected TLS 1.3 in a renegotiation" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L56"
        if ((({
            final value = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ecdheKey;
            (value == null || (value : Dynamic).__nil__);
        }) || ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keyShares.length != (1 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L57"
            return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L60"
        {
            var _err = @:assignType (_hs._checkServerHelloOrHRR() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L61"
                return _err;
            };
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.new_();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L66"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L67"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L70"
        if (stdgo._internal.bytes.Bytes_equal.equal((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, stdgo._internal.crypto.tls.Tls__helloretryrequestrandom._helloRetryRequestRandom)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L71"
            {
                var _err = @:assignType (_hs._sendDummyChangeCipherSpec() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L72"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L74"
            {
                var _err = @:assignType (_hs._processHelloRetryRequest() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L75"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L79"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L80"
                return _err;
            };
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buffering = true;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L84"
        {
            var _err = @:assignType (_hs._processServerHello() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L85"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L87"
        {
            var _err = @:assignType (_hs._sendDummyChangeCipherSpec() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L88"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L90"
        {
            var _err = @:assignType (_hs._establishHandshakeKeys() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L91"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L93"
        {
            var _err = @:assignType (_hs._readServerParameters() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L94"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L96"
        {
            var _err = @:assignType (_hs._readServerCertificate() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L97"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L99"
        {
            var _err = @:assignType (_hs._readServerFinished() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L100"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L102"
        {
            var _err = @:assignType (_hs._sendClientCertificate() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L103"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L105"
        {
            var _err = @:assignType (_hs._sendClientFinished() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L106"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L108"
        {
            var __tmp__ = _c._flush(), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L109"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L112"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHandshakeComplete.store(true);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L114"
        return (null : stdgo.Error);
    }
}
