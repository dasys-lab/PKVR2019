@0x9bde6c9c3cf348fb;
using Cxx = import "/capnp/c++.capnp";
$Cxx.namespace("pkvr_broker::msgs");

struct RequestActionResponseMsg {
  type @0 :Text;
  time @1 :Int64;
  id @2 :Int64;
  deadline @3 :Int64;
  step @4 :Int32;
  percept @5 :StepPercept;

  struct StepPercept {
    score @0 :Int32;
    lastAction @1 :Text;
    lastActionResult @2 :Text;
    energy @3 :Int32;
    disabled @4 :Bool;
    things @5 :List(Thing);
    tasks @6 :List(TaskInfo);
    #std::unordered_map<std::string, std::set<position>> terrain;
    #terrain @7 :List(Pair);
    terrain @7 :Map(Text, List(Position));
    lastActionParams @8 :List(String);
    attachedThings @9 :List(Position);
  }
  
    struct String {
        text @0 :Text;
    }

  struct Map(Key, Value) {
    entries @0 :List(Entry);
    struct Entry {
      key @0 :Key;
      value @1 :Value;
    }
  }

  struct Thing {
    x @0 :Int32;
    y @1 :Int32;
    type @2 :Text;
    details @3 :Text;
  }

  struct TaskInfo {
    name @0 :Text;
    deadline @1 :Int32;
    reward @2 :Int32;
    requirements @3 :List(Thing);
  }
            
  struct Position {
    x @0 :Int32;
    y @1 :Int32;
  }
}