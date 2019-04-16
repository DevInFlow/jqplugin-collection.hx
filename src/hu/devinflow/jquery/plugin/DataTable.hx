package hu.devinflow.jquery.plugin;
import js.jquery.JQuery;
import haxe.extern.EitherType;
import js.html.Node;
extern class DataTable {
    static inline function DataTable( j:js.jquery.JQuery, ?args:DataTableOptions):Dynamic {
        if (args != null)
            return untyped j.DataTable(args);
        return untyped j.DataTable();
    }
}
typedef DataTableOptions = {
//Features
?autoWidth:Bool,
?deferRender:Bool,
?info:Bool,
?lengthChange:Bool,
?ordering:Bool,
?paging:Bool,
?processing:Bool,
?scrollX:Bool,
?scrollY:Bool,
?searching:Bool,
?serverSide:Bool,
?stateSave:Bool,
//Data
?ajax:EitherType<String, Dynamic>,
?data:Array<Dynamic>,
//Callbacks
?createdRow:Node -> EitherType<Array<Dynamic>, Dynamic> -> Int -> Null<Array<Node>> -> Void,
?drawCallback:DataTablesSetting -> Void,
?footerCallback:Node -> Array<Dynamic> -> Int -> Int -> Array<Dynamic> -> Void,
?formatNumber:Int -> String,
?headerCallback:Node -> Array<Dynamic> -> Int -> Int -> Array<Dynamic> -> Void,
?infoCallback:DataTablesSetting -> Int -> Int -> Int -> Int -> String -> String,
?initComplete:DataTablesSetting -> Dynamic -> Void,
?preDrawCallback:DataTablesSetting -> Void,
?rowCallback:Node -> EitherType<Array<Dynamic>, Dynamic> -> Int -> Int -> Int -> Void,
?stateLoadCallback:DataTablesSetting -> Callback -> Null<Dynamic>,
?stateLoaded:DataTablesSetting -> Dynamic -> Void,
?stateLoadParams:DataTablesSetting -> Dynamic -> Void,
?stateSaveCallback:DataTablesSetting -> Dynamic -> Void,
?stateSaveParams:DataTablesSetting -> Dynamic -> Void,
//Options
?deferLoading:EitherType<Int, Array<Int>>,
?destroy:Bool,
?displayStart:Int,
?dom:String,
?lengthMenu:EitherType<Array<Int>, Array<Array<Dynamic>>>,
?order:Array<Array<Dynamic>>,
?orderCellsTop:Bool,
?orderClasses:Bool,
?orderFixed:EitherType<Array<Dynamic>, {?pre:Array<Dynamic>, ?post:Array<Dynamic>}>,
?orderMulti:Bool,
?pageLength:Int,
?pagingType:EitherType<String, PagingType>,
?renderer:EitherType<String, Dynamic>,
?retrieve:Bool,
?rowId:String,
?scrollCollapse:Bool,
?search:{?caseInsensitive:Bool, ?regex:Bool, ?search:String, ?smart:Bool},
?searchCols:Array<Dynamic>,
?searchDelay:Int,
?stateDuration:Int,
?stripeClasses:Array<String>,
?tabIndex:Int,
//Columns
?columnDefs:Array<{>Column, ?targets:Dynamic}>,
?columns:Array<Column>,
//Internationalisation
?language:Language,
//AutoFill
?autoFill:AutoFill,
//Buttons
?buttons:Buttons,
//ColReorder
?colReorder:ColReorder,
//FixedColumns
?fixedColumns:FixedColumn,
//FixedHeader
?fixedHeader:FixedHeader,
//KeyTable
?keys:Keys,
//Responsive
?responsive:Responsive,
//RowReorder
?rowReorder:RowReorder,
//Scroller
?scroller:Scroller,
//Select
?select:Select
}


typedef Select = EitherType<Bool, {
?style:EitherType<String, SelectStyle>,
?selector:String,
?items:EitherType<String, SelectItems>,
?info:Bool,
?className:String,
?blurable:Bool
}>

typedef Scroller = EitherType<Bool, {
?serverWait:Int,
?rowHeight:EitherType<Int, String>,
?loadingIndicator:Bool,
?displayBuffer:Int,
?boundaryScale:Float
}>

typedef RowReorder = EitherType<Bool, {
?update:Bool,
?snapX:EitherType<Bool, Int>,
?selector:String,
?formOptions:Dynamic,
?enable:Bool,
?editor:Dynamic,
?dataSrc:EitherType<Int, Dynamic>
}>

typedef Responsive = EitherType<Bool, {
?breakpoints:Array<{name:String, width:Int}>,
?orthogonal:String,
?details:ResponsiveDetails
}>

typedef ResponsiveDetails = EitherType<Bool, {
?type:String,
?target:EitherType<Int, String>,
?renderer:ResponsiveRenderer,
?display:Api -> Bool -> ResponsiveRenderer -> Bool
}>


typedef Buttons = EitherType<EitherType<Bool, Array<String>>, {
?name:String,
?dom:{
?container:{?tag:String, ?className:String},
?collection:{?tag:String, ?className:String},
?buttonLiner:{?tag:String, ?className:String},
?buttonContainer:{?tag:String, ?className:String},
?button:{?tag:String, ?className:String, ?disabled:Bool, ?active:String},
?buttons:Array<EitherType<String, Button>>,
}
}>

typedef Button = {
?action:Dynamic -> Api -> JQuery -> Dynamic -> Void,
?className:String,
?enabled:Bool,
?extend:String,
?init:Api -> JQuery -> Dynamic -> Void,
?key:EitherType<String, {key:String, ?shiftKey:Bool, ?altKey:Bool, ?ctrlKey:Bool, ?metaKey:Bool}>,
?name:String,
?text:EitherType<String, Api -> JQuery -> Dynamic -> String>,
//
?titleAttr:EitherType<String, Api -> JQuery -> Dynamic -> String>,
?tag:String,
?namespace:String,
?destroy:Api -> JQuery -> Dynamic -> Void,
?available:Api -> Dynamic -> Bool,
?attr:Dynamic
}

typedef Keys = EitherType<Bool, {
?blurable:Bool,
?className:String,
?clipboard:Bool,
?clipboardOrthogonal:String,
?columns:Dynamic,
?editAutoSelect:Bool,
?editOnFocus:Bool,
?editor:Dynamic,
?editorKeys:EitherType<String, EditorKeys>,
?focus:Dynamic,
?keys:Null<Array<Int>>,
?tabIndex:Int
}>

typedef FixedColumn = EitherType<Bool, {
?heightMatch:EitherType<String, HeightMatch>,
?leftColumns:Int,
?rightColumns:Int
}>

typedef FixedHeader = EitherType<Bool, {
?footer:Bool,
?footerOffset:Int,
?header:Bool,
?headerOffest:Int
}>

typedef ColReorder = EitherType<Bool, {
?enable:Bool,
?fixedColumnsLeft:Int,
?fixedColumnsRight:Int,
?order:Array<Int>,
?realtime:Bool
}>

typedef Language = {
?aria:{?paginate:{?first:String, ?last:String, ?next:String, ?previous:String}, ?sortAscending:String, ?sortDescending:String},
?decimal:String,
?emptyTable:String,
?info:String,
?infoEmpty:String,
?infoFiltered:String,
?infoPostFix:String,
?lengthMenu:String,
?loadingRecords:String,
?processing:String,
?search:String,
?searchPlaceholder:String,
?thousands:String,
?url:String,
?zeroRecords:String,
?autoFill:{?button:String, ?cancel:String, ?fill:String, ?fillHorizontal:String, ?fillVertical:String, ?increment:String, ?info:String},
?select:{?rows:String, ?columns:String, ?cells:String}
};

typedef AutoFill = EitherType<Bool, {
?alwaysAsk:Bool,
?columns:Dynamic,
?editor:Dynamic,
?enable:Bool,
?focus:Null<EitherType<String, Focus>>,
?horizontal:Bool,
?update:Bool,
?vertical:Bool,
}>


typedef Column = {
?responsivePriority:Int,
?cellType:String,
?className:String,
?contentPadding:String,
?createdCell:Node -> Dynamic -> Dynamic -> Int -> Int -> Void,
?editField:EitherType<String, Array<String>>,
?data:Dynamic,
?defaultContent:String,
?name:String,
?orderable:Bool,
?orderData:EitherType<Int, Array<Int>>,
?orderDataType:String,
?orderSequence:Array<EitherType<String, Order>>,
?render:Dynamic,
?searchable:Bool,
?title:String,
?type:EitherType<String, ColumnType>,
?visible:Bool,
?width:EitherType<Int,String>
}

typedef ResponsiveRenderer = Api -> Int -> Array<Dynamic> -> EitherType<Bool, String>;
typedef Callback = Dynamic -> Void;
typedef DataTablesSetting = Dynamic;
typedef Api = Dynamic;

@:enum abstract EditorKeys(String) to String{
    var navigation_only = 'navigation-only';
    var tab_only = 'tab-only';
}
@:enum abstract HeightMatch(String) to String{
    var none = 'none';
    var semiauto = 'semiauto';
    var auto = 'auto';
}
@:enum abstract Focus(String) to String{
    var click = 'click';
    var focus = 'focus';
    var hover = 'hover';
}
@:enum abstract Order(String) to String{
    var asc = 'asc';
    var desc = 'desc';
}
@:enum abstract ColumnType(String) to String{
    var date = 'date';
    var num = 'num';
    var num_fmt = 'num-fmt';
    var html_num = 'html-num';
    var html_num_fmt = 'html-num-fmt';
    var html = 'html';
    var string = 'string';
}


@:enum abstract PagingType(String) to String{
    var numbers = 'numbers';
    var simple = 'simple';
    var simple_numbers = 'simple_numbers';
    var full = 'full';
    var full_numbers = 'full_numbers';
    var first_last_numbers = 'first_last_numbers';
}

@:enum abstract SelectItems(String) to String{
    var row = 'row';
    var column = 'column';
    var cell = 'cell';

}
@:enum abstract SelectStyle(String) to String{
    var api = 'api';
    var single = 'single';
    var multi = 'multi';
    var os = 'os';
    var multi_shift = 'multi+shift';
}
