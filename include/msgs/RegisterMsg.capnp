@0xd9693c54d5510668;
using Cxx = import "/capnp/c++.capnp";
$Cxx.namespace("pkvr_broker::msgs");

annotation type(struct) :Text;
struct RegisterMsg $type("RegisterMsg"){
    type @0 : Text;
    id @1: Text;
    pw @2: Text;
}

#using Message = import "Message.capnp";

# interface Register {

#   msg @0 () -> (registerMsg: RegisterMsg);
#   id @01() -> (id: Text);
#   pw @2 () -> (pw: Text);
#     type @2: Text;
#    const ctype: Text = "RegisterMsg";
#}