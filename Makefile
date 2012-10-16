prefix = /usr/local
bindir = $(prefix)/bin
mandir = $(prefix)/share/man

INSTALL = install

all:

installdirs:
	$(INSTALL) -d '$(DESTDIR)$(bindir)' '$(DESTDIR)$(mandir)/man1'

install: all installdirs
	$(INSTALL) -m 755 getent '$(DESTDIR)$(bindir)/getent'
	$(INSTALL) -m 644 getent.1 '$(DESTDIR)$(mandir)/man1/getent.1'

uninstall:
	$(RM) '$(DESTDIR)$(bindir)/getent' '$(DESTDIR)$(mandir)/man1/getent.1'

.PHONY: all installdirs install uninstall
