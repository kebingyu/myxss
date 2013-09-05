PHP extension: a simple XSS handler

function signature:


string filter_attributes(string)  /* Filter bad attributes like onevent and onabort. */


string filter_tags(string) /* Filter bad tags like javascript and vbscript. */


string filter_characters(string) /* Filter bad characters like \x00. */


string filter_xss(string) /* Does all the three functions above. */
