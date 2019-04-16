package hu.devinflow.jquery.plugin;
extern class BlockUI {
    inline static public function blockUI( j:js.jquery.JQuery, ?arg:Dynamic ):Dynamic {
        return untyped j.blockUI(arg);
    }
    inline static public function unblockUI(j:js.jquery.JQuery):Dynamic {
        return untyped j.unblockUI();
    }
}

