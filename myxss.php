<?php
/*
$br = (php_sapi_name() == "cli")? "":"<br>";

if(!extension_loaded('myxss')) {
	dl('myxss.' . PHP_SHLIB_SUFFIX);
}
$module = 'myxss';
$functions = get_extension_funcs($module);
echo "Functions available in the test extension:$br\n";
foreach($functions as $func) {
    echo $func."$br\n";
}
echo "$br\n";
$function = 'confirm_' . $module . '_compiled';
if (extension_loaded($module)) {
	$str = $function($module);
} else {
	$str = "Module $module is not compiled into PHP";
}
echo "$str\n";
 */

/*
$t = microtime(true);
for ($i=0;$i<1000;$i++) {
$s = filter_xss('<javascript> more</javascript> onabort\\= <meta>than </meta>two hellos... hello!');
}
echo (microtime(true) - $t) . "\n";
 */
$o = new myXSSHandler();
var_dump($o);
$s = $o->filter_xss(' test <Javascript morept onabort\\= than two hellos... hello!', 1);
echo $s . "\n";
?>
