##########################################################
#
#   Makefile for IGlib
#
#  (C)2007-01-01 J.Kjellander
#
##########################################################

INCFILES = ../include/IG.h             \
           ../include/futab.h

# The contents of IGlib.a

OBJECTS = ../lib/IGlib.a(iginit.o)     \
          ../lib/IGlib.a(igsurf.o)     \
          ../lib/IGlib.a(igview.o)     \
          ../lib/IGlib.a(igcurve.o)    \
          ../lib/IGlib.a(igpoint.o)    \
          ../lib/IGlib.a(igpart.o)     \
          ../lib/IGlib.a(igtext.o)     \
          ../lib/IGlib.a(igcsy.o)      \
          ../lib/IGlib.a(igbplane.o)   \
          ../lib/IGlib.a(igline.o)     \
          ../lib/IGlib.a(igarc.o)      \
          ../lib/IGlib.a(igsysdat.o)   \
          ../lib/IGlib.a(igdelete.o)   \
          ../lib/IGlib.a(igexpr.o)     \
          ../lib/IGlib.a(igstatem.o)   \
          ../lib/IGlib.a(igplot.o)     \
          ../lib/IGlib.a(igID.o)       \
          ../lib/IGlib.a(igdim.o)      \
          ../lib/IGlib.a(iggroup.o)    \
          ../lib/IGlib.a(igsymb.o)     \
          ../lib/IGlib.a(ighelp.o)     \
          ../lib/IGlib.a(igmodule.o)   \
          ../lib/IGlib.a(igprompt.o)   \
          ../lib/IGlib.a(igmenu.o)     \
          ../lib/IGlib.a(iginput.o)    \
          ../lib/IGlib.a(igjob.o)      \
          ../lib/IGlib.a(igset.o)      \
          ../lib/IGlib.a(igenvpath.o)  \
          ../lib/IGlib.a(igattedit.o)  \
          ../lib/IGlib.a(igerror.o)    \
          ../lib/IGlib.a(igmalloc.o)   \
          ../lib/IGlib.a(igPID.o)      \
          ../lib/IGlib.a(igtform.o)    \
          ../lib/IGlib.a(igfile.o)     \
          ../lib/IGlib.a(igdebug.o)

# IGlib.a depends on the objects.

distr : $(OBJECTS) ../lib/IGlib.a(varkon.o)

debug : $(OBJECTS) ../lib/IGlib.a(varkon.o)

# Objects depend on sources implicitly and sources depend
# on the following include-files.

$(OBJECTS) : $(INCFILES)

clean:
	rm -f ../lib/IGlib.a

../lib/IGlib.a(varkon.o): varkon.c $(INCFILES) ../include/svnversion.h
	$(COMPILE) varkon.c
	ar r ../lib/IGlib.a varkon.o
	$(RM) varkon.o
