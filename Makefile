PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin
MANDIR ?= $(PREFIX)/share/man

install:
	@echo Installing the executable to $(DESTDIR)$(BINDIR)
	@mkdir -p     $(DESTDIR)$(BINDIR)
	@cp -f track   $(DESTDIR)$(BINDIR)/track
	@chmod 755    $(DESTDIR)$(BINDIR)/track
	@echo Installing the manual page to $(DESTDIR)$(MANDIR)/man1
	@mkdir -p     $(DESTDIR)$(MANDIR)
	@cp -f track.1 $(DESTDIR)$(MANDIR)/man1/track.1
	@chmod 644    $(DESTDIR)$(MANDIR)/man1/track.1

uninstall:
	@echo Removing the executable from $(DESTDIR)$(BINDIR)
	@rm -f $(DESTDIR)$(BINDIR)/track
	@echo Removing the manual page from $(DESTDIR)$(MANDIR)/man1
	@rm -f $(DESTDIR)$(BINDIR)/man1/track.1

.PHONY: install uninstall
