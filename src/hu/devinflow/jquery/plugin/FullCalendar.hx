package hu.devinflow.jquery.plugin;
import haxe.extern.Rest;
extern class FullCalendar {
    static inline function fullCalendar( j:js.jquery.JQuery, ?arg:Dynamic, r:Rest<Dynamic>):Dynamic {
        return untyped j.fullCalendar(arg,r);
    }
}
