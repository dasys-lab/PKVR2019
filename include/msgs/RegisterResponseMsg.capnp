@0xc7fe3199d1b576e8;
using Cxx = import "/capnp/c++.capnp";
$Cxx.namespace("pkvr_broker::msgs");

struct RegisterResponseMsg {
  type @0: Text;
  result @1: Text;
}