PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
MANDIR ?= $(PREFIX)/share/man

# Attempt to find bash completion dir in order of preference
ifneq ($(wildcard /etc/bash_completion.d/.),)
  CPLDIR ?= /etc/bash_completion.d
endif

HAS_BREW := $(shell command -v brew 2> /dev/null)
ifdef HAS_BREW
  CPLDIR ?= $$(brew --prefix)/etc/bash_completion.d
endif

HAS_PKGCONFIG := $(shell command -v pkg-config 2> /dev/null)
ifdef HAS_PKGCONFIG
  CPLDIR ?= $$(pkg-config --variable=completionsdir bash-completion 2> /dev/null)
endif

install:
	@echo Installing the executable to $(BINDIR)
	@mkdir -p $(BINDIR)
	@cp -f track $(BINDIR)/track
	@chmod 755 $(BINDIR)/track
	@echo Installing the manual page to $(MANDIR)/man1
	@mkdir -p $(MANDIR)
	@cp -f track.1 $(MANDIR)/man1/track.1
	@chmod 644 $(MANDIR)/man1/track.1
ifdef CPLDIR
	@echo Installing the command completion to $(CPLDIR)
	@mkdir -p $(CPLDIR)
	@cp -f track.d $(CPLDIR)/track
	@chmod 644 $(CPLDIR)/track
endif

uninstall:
	@echo Removing the executable from $(BINDIR)
	@rm -f $(BINDIR)/track
	@echo Removing the manual page from $(MANDIR)/man1
	@rm -f $(BINDIR)/man1/track.1
ifdef CPLDIR
	@echo Removing the command completion from $(CPLDIR)
	@rm -f $(CPLDIR)/track
endif

.PHONY: install uninstall
