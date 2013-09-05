dnl $Id$
dnl config.m4 for extension myxss

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(myxss, for myxss support,
dnl Make sure that the comment is aligned:
dnl [  --with-myxss             Include myxss support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(myxss, whether to enable myxss support,
Make sure that the comment is aligned:
[  --enable-myxss           Enable myxss support])

if test "$PHP_MYXSS" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-myxss -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/myxss.h"  # you most likely want to change this
  dnl if test -r $PHP_MYXSS/$SEARCH_FOR; then # path given as parameter
  dnl   MYXSS_DIR=$PHP_MYXSS
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for myxss files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       MYXSS_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$MYXSS_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the myxss distribution])
  dnl fi

  dnl # --with-myxss -> add include path
  dnl PHP_ADD_INCLUDE($MYXSS_DIR/include)

  dnl # --with-myxss -> check for lib and symbol presence
  dnl LIBNAME=myxss # you may want to change this
  dnl LIBSYMBOL=myxss # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $MYXSS_DIR/lib, MYXSS_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_MYXSSLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong myxss lib version or lib not found])
  dnl ],[
  dnl   -L$MYXSS_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(MYXSS_SHARED_LIBADD)

  PHP_NEW_EXTENSION(myxss, myxss.c, $ext_shared)
fi
