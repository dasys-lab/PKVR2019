@0xb62f7a0406719c3d;
using Cxx = import "/capnp/c++.capnp";
$Cxx.namespace("pkvr_broker::msgs");

annotation type(struct) :Text;
struct StepInfoMsg $type("StepInfoMsg"){
    type @0    :Text;
    time @1 :Int64;
    id @2 :Int64;
    deadline @3 :Int64;
    step @4 :Int32;
    score @5 :Int32;
    lastAction @6 :Text;
    lastActionResult @7 :Text; 
}