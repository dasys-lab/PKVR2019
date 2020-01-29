@0xe0b9ecd469093295;
using Cxx = import "/capnp/c++.capnp";
$Cxx.namespace("pkvr_broker::msgs");

annotation type(struct) :Text;
struct TerrainMsg $type("TerrainMsg"){
    type @0    :Text;
    terrain @1 :Map(Text, List(Position));

    struct Position {
        x @0 :Int32;
        y @1 :Int32;
    }

    struct Map(Key, Value) {
        entries @0 :List(Entry);
       
        struct Entry {
            key @0 :Key;
            value @1 :Value;
        }
    }
}
