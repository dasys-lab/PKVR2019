@0xdfc96683c3451759;
using Cxx = import "/capnp/c++.capnp";
$Cxx.namespace("pkvr_broker::msgs");

annotation type(struct) :Text;
struct TasksMsg $type("TasksMsg"){
    type @0    :Text;
    tasks @1   :List(TaskInfo);


    struct TaskInfo {
        name @0 :Text;
        deadline @1 :Int32;
        reward @2 :Int32;
        requirements @3 :List(Thing);
    }

    struct Thing {
        x @0 :Int32;
        y @1 :Int32;
        type @2 :Text;
        details @3 :Text;
    }
}
