import ballerina/grpc;
import ballerina/time;

listener grpc:Listener ep = new (9090);

@grpc:ServiceDescriptor {descriptor: DURATION_TYPE2_DESC}
service "DurationHandler" on ep {

    remote function unaryCall(time:Seconds value) returns time:Seconds|error {
    }
    remote function clientStreaming(stream<time:Seconds, grpc:Error?> clientStream) returns time:Seconds|error {
    }
    remote function serverStreaming(time:Seconds value) returns stream<time:Seconds, error?>|error {
    }
    remote function bidirectionalStreaming(stream<time:Seconds, grpc:Error?> clientStream) returns stream<time:Seconds, error?>|error {
    }
}

