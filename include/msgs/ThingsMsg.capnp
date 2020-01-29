@0xdd3b733c3b1f5996;
using Cxx = import "/capnp/c++.capnp";
$Cxx.namespace("pkvr_broker::msgs");

annotation type(struct) :Text;
struct ThingsMsg $type("ThingsMsg"){
    type @0    :Text;
    things @1  :List(Thing);

    struct Thing {
        x @0 :Int32;
        y @1 :Int32;
        type @2 :Text;
        details @3 :Text;
    }
}
