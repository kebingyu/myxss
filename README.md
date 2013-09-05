PHP extension: a simple XSS handler

function signature:

/* 
 * Filter bad attributes like onevent and onabort.
 * /
string filter_attributes(string)

/* 
 * Filter bad tags like javascript and vbscript.
 * /
string filter_tags(string)

/* 
 * Filter bad characters like \x00.
 * /
string filter_characters(string)

/* 
 * Does all the three functions above.
 * /
string filter_xss(string)
