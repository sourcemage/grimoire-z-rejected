INSTALL_PROGRAM=install -c -m755

OSTYPE := $(shell uname)
# Solaris Openwin 2.6 headers are not properly casted to for
# compilation with C++/g++. Three files Xlib.h, Xresource.h, Xutil.h
# need to be fixed to compile this. Or add a path to the X11R6 headers
ifeq ($(DEST),)
DEST=/usr/share
endif

ifeq ($(OSTYPE),Solaris)
SOLARIS_TYPECASTED_X11_HEADERS=-I/var/tmp/src
endif
ifndef CXXFLAGS
CXXFLAGS=-Wall -O2 $(SOLARIS_TYPECASTED_X11_HEADERS)
endif

CXXFLAGS+=-D_REENTRANT -D_POSIX_PTHREAD_SEMANTICS $(SOLARIS_TYPECASTED_X11_HEADERS) \
-DDEBUG_ALL
# -ggdb

export CXXFLAGS LOCALEDIR

NLS=-DENABLE_NLS # Remove or comment this line to disable gettext
OSS_SOUND=-DD4X_WITH_OSS # remove or comment this line to disable OSS sound

LOCALEDIR=$(DEST)/locale
PTHREAD=-lpthread
GTKCONFIG=gtk-config
GLIBCONFIG=glib-config

#next strings were added for BSD support
ifeq ($(OSTYPE),BSD)
PTHREAD=-pthread
GTKCONFIG=gtk12-config
endif

ifeq ($(OSTYPE),FreeBSD)
ifdef PTHREAD_LIBS
PTHREAD=$(PTHREAD_LIBS)
else
PTHREAD=-pthread
endif
ifdef GLIB_CONFIG
GLIBCONFIG=$(GLIB_CONFIG)
else
GLIBCONFIG=glib12-config
endif
ifdef GTK_CONFIG
GTKCONFIG=$(GTK_CONFIG)
else
GTKCONFIG=gtk12-config
endif
ifdef PTHREAD_CFLAGS
CXXFLAGS+=$(PTHREAD_CFLAGS)
else
CXXFLAGS+=-D_THREAD_SAFE
endif
ifdef BSD_INSTALL_PROGRAM
INSTALL_PROGRAM=$(BSD_INSTALL_PROGRAM)
endif
endif

GTKLIBS=$(shell $(GTKCONFIG) --libs) $(shell $(GLIBCONFIG) --libs)
GTKFLAGS=$(shell $(GTKCONFIG) --cflags) $(shell $(GLIBCONFIG) --cflags)

ifeq ($(OSTYPE),Irix)
CTKFLIBS += lintl
CXXFLAGS += -fpermissive
endif

LDFLAGS=$(PTHREAD) $(GTKLIBS)
CXXFLAGS += $(GTKFLAGS) $(NLS) $(OSS_SOUND) -DLOCALE=\"${LOCALEDIR}\"

FACE=face/lmenu.o face/list.o face/addd.o face/graph.o face/log.o \
	face/prefs.o face/buttons.o face/about.o face/edit.o \
	face/colors.o face/saveload.o face/limface.o face/misc.o \
	face/lod.o face/columns.o face/dndtrash.o face/passface.o \
	face/mywidget.o face/myclist.o face/fsface.o face/fsched.o \
	face/filtrgui.o
MODULES1=base64.o addr.o queue.o liststr.o dlist.o mdlist.o locstr.o \
	log.o  sort.o meter.o socket.o history.o  speed.o srvclt.o html.o \
	client.o ftp.o http.o download.o ftpd.o httpd.o hproxy.o signal.o \
	main.o config.o savelog.o mainlog.o var.o sortstr.o db.o cookie.o \
	pass.o eff.o segments.o memwl.o fsearch.o msgqueue.o ping.o \
	savedvar.o schedule.o socks.o filter.o sndserv.o sm.o autoadd.o \
	dqueue.o
MODULES = $(FACE) $(MODULES1)

D4X_SHARE = $(DEST)/d4x
export D4X_SHARE

all:
	-rm -f nt
	$(MAKE) nt
	[ -z "$(NLS)" ] || $(MAKE) -C po
	$(MAKE) strip

$(FACE):
	$(MAKE) -C face

nt: $(MODULES)
	$(MAKE) -C face
	$(CXX) -lstdc++ $(MODULES) nt.cc -o nt $(CXXFLAGS) \
$(GTKLIBS) $(PTHREAD) -DD4X_SHARE_PATH=\"${D4X_SHARE}\"

strip: nt
	strip nt

install: all
	$(INSTALL_PROGRAM) nt /usr/bin
	[ -z "$(NLS)" ] || $(MAKE) install -C po
	$(MAKE) install -C sounds

clean: 
	-rm -f *.o nt TAGS *~
	$(MAKE) clean -C face
	$(MAKE) clean -C po

tags:
	etags *.{cc,h} face/*.{cc,h}

uninstall:
	-rm -f /usr/bin/nt
	$(MAKE) uninstall -C po
	$(MAKE) uninstall -C sounds

Makefile.dep:
	$(CXX) $(CXXFLAGS) -MM *.cc > Makefile.dep

-include Makefile.dep
