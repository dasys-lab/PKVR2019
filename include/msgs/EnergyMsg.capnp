@0x8a6daeb09675f01f;
using Cxx = import "/capnp/c++.capnp";
$Cxx.namespace("pkvr_broker::msgs");

annotation type(struct) :Text;
struct EnergyMsg $type("EnergyMsg"){
    type @0    :Text;
    energy @1  :Int32;
}