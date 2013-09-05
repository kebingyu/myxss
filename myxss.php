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
$s = filter_attributes('test javascript more onabort= than two hellos... hello!');
echo $s . "\n";
$s = filter_characters('javascript \\x00 = than two hellos... hello!');
echo $s . "\n";
 */
$s = filter_xss('<javascript> more</javascript> onabort\\= <meta>than </meta>two hellos... hello!');
echo $s . "\n";
?>
