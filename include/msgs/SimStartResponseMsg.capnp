@0x9bde6c9c3cf348fb;
using Cxx = import "/capnp/c++.capnp";
$Cxx.namespace("pkvr_broker::msgs");

struct SimStartResponseMsg {
  type @0 :Text;
  time @1 :Text;
  percept @2 :InitPercept;

  struct InitPercept {
      name @0 :Text;
      team @1 :Text;
      steps @2 :Int16;
      vision @3 :Int16;
  }
}