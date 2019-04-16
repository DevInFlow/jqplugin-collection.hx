package hu.devinflow.jquery.plugin;
extern class SerializeObject {
    static inline function serializeObject( j:js.jquery.JQuery, ?arg:Dynamic ):Dynamic {
        return untyped j.serializeObject(arg);
    }
}
