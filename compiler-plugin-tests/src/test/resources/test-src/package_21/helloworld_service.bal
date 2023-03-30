import ballerina/grpc;

listener grpc:Listener ep = new (9090);

@grpc:Descriptor {value: HELLOWORLDSTRING_DESC}
service "helloWorld" on ep {

    remote function hello(string caller = "caller", stream<string, grpc:Error?> clientStream = new) returns error? {
        return ();
    }
}

