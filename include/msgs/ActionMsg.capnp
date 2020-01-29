@0xbeea161b9b580efd;
using Cxx = import "/capnp/c++.capnp";
$Cxx.namespace("pkvr_broker::msgs");

annotation type(struct) :Text;
struct ActionMsg $type("ActionMsg"){
    type @0    :Text;
    content @1 :Content;

    struct Content{
        id @0   :Int32;
        type @1 :Text;
        p @2    :List(String);
    }

    struct String {
        text @0 :Text;
    }
}