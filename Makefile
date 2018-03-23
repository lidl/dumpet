PROG=dumpet
BINDIR?=${DESTDIR}/usr/local/bin
MANDIR?=${BINDIR}/../man/man

XML_CFLAGS!=pkg-config --cflags libxml-2.0
POPT_CFLAGS!=pkg-config --cflags popt
CFLAGS+=${XML_CFLAGS} ${POPT_CFLAGS}

CFLAGS+=-g3 -O2 -Wall -Werror

XML_LDADD!=pkg-config --libs libxml-2.0
POPT_LDADD!=pkg-config --libs popt
LDADD+=${XML_LDADD} ${POPT_LDADD}

.include <bsd.prog.mk>
