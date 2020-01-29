@0xeb66b34509975a05;
using Cxx = import "/capnp/c++.capnp";
$Cxx.namespace("pkvr_broker::msgs");

annotation type(struct) :Text;
struct StatusMsg $type("StatusMsg"){
    type @0    :Text;
    disabled @1  :Bool;
}