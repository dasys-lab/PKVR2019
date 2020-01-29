@0xa84f3d4e73f25f7c;
using Cxx = import "/capnp/c++.capnp";
$Cxx.namespace("pkvr_broker::msgs");

struct Message {
  type @0 :Text;
}

#interface Message {
#  getType @0 () -> (type :Text);
#}