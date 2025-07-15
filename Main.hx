import stdgo.net.http.Http;
import stdgo.net.http.*;

function main() {
    var mux = Http.newServeMux();
    mux.handleFunc("/hello", (resp:ResponseWriter, request:Request) -> {
        resp.write("HELLO THERE");
    });
    Sys.println("starting!");
    Http.listenAndServe("127.0.0.1:8090", stdgo.Go.asInterface(mux));
}