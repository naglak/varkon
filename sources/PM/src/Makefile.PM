##########################################################
#
#   Makefile for PMlib
#
#  (C)Microform AB 1999-02-15 J.Kjellander
#  1999-04-26 Modif. whith new files,  R.Svedin
#
##########################################################

# Include files

INCFILES = ../include/PM.h         \
           ../include/pmstru.h     \
           ../include/mbsrout.h    \
           ../include/stdef.h      \
           ../include/indef.h      \
           ../include/ppdef.h      \
           ../include/newrout.h      \
           ../../AN/include/AN.h

OBJS = ../lib/PMlib.a(evact.o)     \
       ../lib/PMlib.a(eval1.o)     \
       ../lib/PMlib.a(evarc.o)     \
       ../lib/PMlib.a(evarea.o)    \
       ../lib/PMlib.a(evbpln.o)    \
       ../lib/PMlib.a(evcray.o)    \
       ../lib/PMlib.a(evcsy.o)     \
       ../lib/PMlib.a(evcsys.o)    \
       ../lib/PMlib.a(evcur.o)     \
       ../lib/PMlib.a(evdim.o)     \
       ../lib/PMlib.a(evdll.o)     \
       ../lib/PMlib.a(evoru.o)     \
       ../lib/PMlib.a(evexit.o)    \
       ../lib/PMlib.a(evexst.o)    \
       ../lib/PMlib.a(evfile.o)    \
       ../lib/PMlib.a(evget.o)     \
       ../lib/PMlib.a(evgfuncs.o)  \
       ../lib/PMlib.a(evgprocs.o)  \
       ../lib/PMlib.a(evgrid.o)    \
       ../lib/PMlib.a(evgrp.o)     \
       ../lib/PMlib.a(evlev.o)     \
       ../lib/PMlib.a(evlin.o)     \
       ../lib/PMlib.a(evmath.o)    \
       ../lib/PMlib.a(evmatrix.o)  \
       ../lib/PMlib.a(evmbs.o)     \
       ../lib/PMlib.a(evmesh.o)    \
       ../lib/PMlib.a(evos.o)      \
       ../lib/PMlib.a(evodbc.o)    \
       ../lib/PMlib.a(evpart.o)    \
       ../lib/PMlib.a(evplot.o)    \
       ../lib/PMlib.a(evpoi.o)     \
       ../lib/PMlib.a(evtime.o)    \
       ../lib/PMlib.a(evset.o)     \
       ../lib/PMlib.a(evcolor.o)   \
       ../lib/PMlib.a(evstr.o)     \
       ../lib/PMlib.a(evsur.o)     \
       ../lib/PMlib.a(evsymb.o)    \
       ../lib/PMlib.a(evtcp.o)     \
       ../lib/PMlib.a(evrap.o)     \
       ../lib/PMlib.a(evtext.o)    \
       ../lib/PMlib.a(evtform.o)   \
       ../lib/PMlib.a(evui.o)      \
       ../lib/PMlib.a(evvec.o)     \
       ../lib/PMlib.a(evvfile.o)   \
       ../lib/PMlib.a(evview.o)    \
       ../lib/PMlib.a(evwin.o)     \
       ../lib/PMlib.a(evxht.o)     \
       ../lib/PMlib.a(inac10.o)    \
       ../lib/PMlib.a(inac11.o)    \
       ../lib/PMlib.a(inac13.o)    \
       ../lib/PMlib.a(inac17.o)    \
       ../lib/PMlib.a(inac19.o)    \
       ../lib/PMlib.a(inac20.o)    \
       ../lib/PMlib.a(inacc.o)     \
       ../lib/PMlib.a(infunc.o)    \
       ../lib/PMlib.a(ingeop.o)    \
       ../lib/PMlib.a(ingpar.o)    \
       ../lib/PMlib.a(innpar.o)    \
       ../lib/PMlib.a(inproc.o)    \
       ../lib/PMlib.a(inrts.o)     \
       ../lib/PMlib.a(pmac1.o)     \
       ../lib/PMlib.a(pmac2.o)     \
       ../lib/PMlib.a(pmac3.o)     \
       ../lib/PMlib.a(pmac4.o)     \
       ../lib/PMlib.a(pmac5.o)     \
       ../lib/PMlib.a(pmac6.o)     \
       ../lib/PMlib.a(pmallo.o)    \
       ../lib/PMlib.a(pmlist.o)    \
       ../lib/PMlib.a(pretty.o)    \
       ../lib/PMlib.a(stacc.o)     \
       ../lib/PMlib.a(stac10.o)    \
       ../lib/PMlib.a(calext.o)    \
       ../lib/PMlib.a(anaexp.o)    \
       ../lib/PMlib.a(anascan.o)   \
       ../lib/PMlib.a(annaml.o)    \
       ../lib/PMlib.a(anpar11.o)   \
       ../lib/PMlib.a(anpar12.o)   \
       ../lib/PMlib.a(anpar31.o)   \
       ../lib/PMlib.a(anpar51.o)   \
       ../lib/PMlib.a(anpar52.o)   \
       ../lib/PMlib.a(anlog.o)     \
       ../lib/PMlib.a(evpinc.o)    

# Targets

distr : $(OBJS)

debug : $(OBJS)

clean:
	$(RM) *.o ../lib/PMlib.a

# Rules

../lib/PMlib.a(evact.o): evact.c $(INCFILES)
	$(COMPILE) evact.c
	ar r ../lib/PMlib.a evact.o
	$(RM) evact.o

../lib/PMlib.a(eval1.o): eval1.c $(INCFILES)
	$(COMPILE) eval1.c
	ar r ../lib/PMlib.a eval1.o
	$(RM) eval1.o

../lib/PMlib.a(evarc.o): evarc.c $(INCFILES)
	$(COMPILE) evarc.c
	ar r ../lib/PMlib.a evarc.o
	$(RM) evarc.o

../lib/PMlib.a(evarea.o): evarea.c $(INCFILES)
	$(COMPILE) evarea.c
	ar r ../lib/PMlib.a evarea.o
	$(RM) evarea.o

../lib/PMlib.a(evbpln.o): evbpln.c $(INCFILES)
	$(COMPILE) evbpln.c
	ar r ../lib/PMlib.a evbpln.o
	$(RM) evbpln.o

../lib/PMlib.a(evcray.o): evcray.c $(INCFILES)
	$(COMPILE) evcray.c
	ar r ../lib/PMlib.a evcray.o
	$(RM) evcray.o

../lib/PMlib.a(evcsy.o): evcsy.c $(INCFILES)
	$(COMPILE) evcsy.c
	ar r ../lib/PMlib.a evcsy.o
	$(RM) evcsy.o

../lib/PMlib.a(evcsys.o): evcsys.c $(INCFILES)
	$(COMPILE) evcsys.c
	ar r ../lib/PMlib.a evcsys.o
	$(RM) evcsys.o

../lib/PMlib.a(evcur.o): evcur.c $(INCFILES)
	$(COMPILE) evcur.c
	ar r ../lib/PMlib.a evcur.o
	$(RM) evcur.o

../lib/PMlib.a(evdim.o): evdim.c $(INCFILES)
	$(COMPILE) evdim.c
	ar r ../lib/PMlib.a evdim.o
	$(RM) evdim.o

../lib/PMlib.a(evdll.o): evdll.c $(INCFILES)
	$(COMPILE) evdll.c
	ar r ../lib/PMlib.a evdll.o
	$(RM) evdll.o

../lib/PMlib.a(evfile.o): evfile.c $(INCFILES)
	$(COMPILE) evfile.c
	ar r ../lib/PMlib.a evfile.o
	$(RM) evfile.o

../lib/PMlib.a(evget.o): evget.c $(INCFILES)
	$(COMPILE) evget.c
	ar r ../lib/PMlib.a evget.o
	$(RM) evget.o

../lib/PMlib.a(evgfuncs.o): evgfuncs.c $(INCFILES)
	$(COMPILE) evgfuncs.c
	ar r ../lib/PMlib.a evgfuncs.o
	$(RM) evgfuncs.o

../lib/PMlib.a(evgprocs.o): evgprocs.c $(INCFILES)
	$(COMPILE) evgprocs.c
	ar r ../lib/PMlib.a evgprocs.o
	$(RM) evgprocs.o

../lib/PMlib.a(evgrid.o): evgrid.c $(INCFILES)
	$(COMPILE) evgrid.c
	ar r ../lib/PMlib.a evgrid.o
	$(RM) evgrid.o

../lib/PMlib.a(evgrp.o): evgrp.c $(INCFILES)
	$(COMPILE) evgrp.c
	ar r ../lib/PMlib.a evgrp.o
	$(RM) evgrp.o

../lib/PMlib.a(evlev.o): evlev.c $(INCFILES)
	$(COMPILE) evlev.c
	ar r ../lib/PMlib.a evlev.o
	$(RM) evlev.o

../lib/PMlib.a(evlin.o): evlin.c $(INCFILES)
	$(COMPILE) evlin.c
	ar r ../lib/PMlib.a evlin.o
	$(RM) evlin.o

../lib/PMlib.a(evmath.o): evmath.c $(INCFILES)
	$(COMPILE) evmath.c
	ar r ../lib/PMlib.a evmath.o
	$(RM) evmath.o

../lib/PMlib.a(evmbs.o): evmbs.c $(INCFILES)
	$(COMPILE) evmbs.c
	ar r ../lib/PMlib.a evmbs.o
	$(RM) evmbs.o

../lib/PMlib.a(evmisc.o): evmisc.c $(INCFILES)
	$(COMPILE) evmisc.c
	ar r ../lib/PMlib.a evmisc.o
	$(RM) evmisc.o

../lib/PMlib.a(evodbc.o): evodbc.c $(INCFILES)
	$(COMPILE) evodbc.c
	ar r ../lib/PMlib.a evodbc.o
	$(RM) evodbc.o

../lib/PMlib.a(evpart.o): evpart.c $(INCFILES)
	$(COMPILE) evpart.c
	ar r ../lib/PMlib.a evpart.o
	$(RM) evpart.o

../lib/PMlib.a(evplot.o): evplot.c $(INCFILES)
	$(COMPILE) evplot.c
	ar r ../lib/PMlib.a evplot.o
	$(RM) evplot.o

../lib/PMlib.a(evpoi.o): evpoi.c $(INCFILES)
	$(COMPILE) evpoi.c
	ar r ../lib/PMlib.a evpoi.o
	$(RM) evpoi.o

../lib/PMlib.a(evset.o): evset.c $(INCFILES)
	$(COMPILE) evset.c
	ar r ../lib/PMlib.a evset.o
	$(RM) evset.o

../lib/PMlib.a(evshade.o): evshade.c $(INCFILES)
	$(COMPILE) evshade.c
	ar r ../lib/PMlib.a evshade.o
	$(RM) evshade.o

../lib/PMlib.a(evstr.o): evstr.c $(INCFILES)
	$(COMPILE) evstr.c
	ar r ../lib/PMlib.a evstr.o
	$(RM) evstr.o

../lib/PMlib.a(evsur.o): evsur.c $(INCFILES)
	$(COMPILE) evsur.c
	ar r ../lib/PMlib.a evsur.o
	$(RM) evsur.o

../lib/PMlib.a(evsymb.o): evsymb.c $(INCFILES)
	$(COMPILE) evsymb.c
	ar r ../lib/PMlib.a evsymb.o
	$(RM) evsymb.o

../lib/PMlib.a(evtext.o): evtext.c $(INCFILES)
	$(COMPILE) evtext.c
	ar r ../lib/PMlib.a evtext.o
	$(RM) evtext.o

../lib/PMlib.a(evtform.o): evtform.c $(INCFILES)
	$(COMPILE) evtform.c
	ar r ../lib/PMlib.a evtform.o
	$(RM) evtform.o

../lib/PMlib.a(evui.o): evui.c $(INCFILES)
	$(COMPILE) evui.c
	ar r ../lib/PMlib.a evui.o
	$(RM) evui.o

../lib/PMlib.a(evvec.o): evvec.c $(INCFILES)
	$(COMPILE) evvec.c
	ar r ../lib/PMlib.a evvec.o
	$(RM) evvec.o

../lib/PMlib.a(evvfile.o): evvfile.c $(INCFILES)
	$(COMPILE) evvfile.c
	ar r ../lib/PMlib.a evvfile.o
	$(RM) evvfile.o

../lib/PMlib.a(evview.o): evview.c $(INCFILES)
	$(COMPILE) evview.c
	ar r ../lib/PMlib.a evview.o
	$(RM) evview.o

../lib/PMlib.a(evwin.o): evwin.c $(INCFILES)
	$(COMPILE) evwin.c
	ar r ../lib/PMlib.a evwin.o
	$(RM) evwin.o

../lib/PMlib.a(evxht.o): evxht.c $(INCFILES)
	$(COMPILE) evxht.c
	ar r ../lib/PMlib.a evxht.o
	$(RM) evxht.o

../lib/PMlib.a(inac10.o): inac10.c $(INCFILES)
	$(COMPILE) inac10.c
	ar r ../lib/PMlib.a inac10.o
	$(RM) inac10.o

../lib/PMlib.a(inac11.o): inac11.c $(INCFILES)
	$(COMPILE) inac11.c
	ar r ../lib/PMlib.a inac11.o
	$(RM) inac11.o

../lib/PMlib.a(inac13.o): inac13.c $(INCFILES)
	$(COMPILE) inac13.c
	ar r ../lib/PMlib.a inac13.o
	$(RM) inac13.o

../lib/PMlib.a(inac17.o): inac17.c $(INCFILES)
	$(COMPILE) inac17.c
	ar r ../lib/PMlib.a inac17.o
	$(RM) inac17.o

../lib/PMlib.a(inac19.o): inac19.c $(INCFILES)
	$(COMPILE) inac19.c
	ar r ../lib/PMlib.a inac19.o
	$(RM) inac19.o

../lib/PMlib.a(inac20.o): inac20.c $(INCFILES)
	$(COMPILE) inac20.c
	ar r ../lib/PMlib.a inac20.o
	$(RM) inac20.o

../lib/PMlib.a(inacc.o): inacc.c $(INCFILES)
	$(COMPILE) inacc.c
	ar r ../lib/PMlib.a inacc.o
	$(RM) inacc.o

../lib/PMlib.a(infunc.o): infunc.c $(INCFILES) ../include/evfuncs.h
	$(COMPILE) infunc.c
	ar r ../lib/PMlib.a infunc.o
	$(RM) infunc.o

../lib/PMlib.a(ingeop.o): ingeop.c $(INCFILES) ../include/evfuncs.h
	$(COMPILE) ingeop.c
	ar r ../lib/PMlib.a ingeop.o
	$(RM) ingeop.o

../lib/PMlib.a(ingpar.o): ingpar.c $(INCFILES)
	$(COMPILE) ingpar.c
	ar r ../lib/PMlib.a ingpar.o
	$(RM) ingpar.o

../lib/PMlib.a(innpar.o): innpar.c $(INCFILES)
	$(COMPILE) innpar.c
	ar r ../lib/PMlib.a innpar.o
	$(RM) innpar.o

../lib/PMlib.a(inproc.o): inproc.c $(INCFILES) ../include/evfuncs.h
	$(COMPILE) inproc.c
	ar r ../lib/PMlib.a inproc.o
	$(RM) inproc.o

../lib/PMlib.a(inrts.o): inrts.c $(INCFILES)
	$(COMPILE) inrts.c
	ar r ../lib/PMlib.a inrts.o
	$(RM) inrts.o

../lib/PMlib.a(pmac1.o): pmac1.c $(INCFILES)
	$(COMPILE) pmac1.c
	ar r ../lib/PMlib.a pmac1.o
	$(RM) pmac1.o

../lib/PMlib.a(pmac2.o): pmac2.c $(INCFILES)
	$(COMPILE) pmac2.c
	ar r ../lib/PMlib.a pmac2.o
	$(RM) pmac2.o

../lib/PMlib.a(pmac3.o): pmac3.c $(INCFILES)
	$(COMPILE) pmac3.c
	ar r ../lib/PMlib.a pmac3.o
	$(RM) pmac3.o

../lib/PMlib.a(pmac4.o): pmac4.c $(INCFILES)
	$(COMPILE) pmac4.c
	ar r ../lib/PMlib.a pmac4.o
	$(RM) pmac4.o

../lib/PMlib.a(pmac5.o): pmac5.c $(INCFILES)
	$(COMPILE) pmac5.c
	ar r ../lib/PMlib.a pmac5.o
	$(RM) pmac5.o

../lib/PMlib.a(pmac6.o): pmac6.c $(INCFILES)
	$(COMPILE) pmac6.c
	ar r ../lib/PMlib.a pmac6.o
	$(RM) pmac6.o

../lib/PMlib.a(pmallo.o): pmallo.c $(INCFILES)
	$(COMPILE) pmallo.c
	ar r ../lib/PMlib.a pmallo.o
	$(RM) pmallo.o

../lib/PMlib.a(pmlist.o): pmlist.c $(INCFILES)
	$(COMPILE) pmlist.c
	ar r ../lib/PMlib.a pmlist.o
	$(RM) pmlist.o

../lib/PMlib.a(pretty.o): pretty.c $(INCFILES)
	$(COMPILE) pretty.c
	ar r ../lib/PMlib.a pretty.o
	$(RM) pretty.o

../lib/PMlib.a(stacc.o): stacc.c $(INCFILES)
	$(COMPILE) stacc.c
	ar r ../lib/PMlib.a stacc.o
	$(RM) stacc.o

../lib/PMlib.a(stac10.o): stac10.c $(INCFILES) ../include/formpar.h
	$(COMPILE) stac10.c
	ar r ../lib/PMlib.a stac10.o
	$(RM) stac10.o

../lib/PMlib.a(calext.o): calext.c $(INCFILES)
	$(COMPILE) calext.c
	ar r ../lib/PMlib.a calext.o
	$(RM) calext.o

../lib/PMlib.a(anaexp.o): ../../AN/src/anaexp.c $(INCFILES)
	$(COMPILE) ../../AN/src/anaexp.c
	ar r ../lib/PMlib.a anaexp.o
	$(RM) anaexp.o

../lib/PMlib.a(anascan.o): ../../AN/src/anascan.c $(INCFILES)
	$(COMPILE) ../../AN/src/anascan.c
	ar r ../lib/PMlib.a anascan.o
	$(RM) anascan.o

../lib/PMlib.a(annaml.o): ../../AN/src/annaml.c $(INCFILES)
	$(COMPILE) ../../AN/src/annaml.c
	ar r ../lib/PMlib.a annaml.o
	$(RM) annaml.o

../lib/PMlib.a(anpar11.o): ../../AN/src/anpar11.c $(INCFILES)
	$(COMPILE) ../../AN/src/anpar11.c
	ar r ../lib/PMlib.a anpar11.o
	$(RM) anpar11.o

../lib/PMlib.a(anpar12.o): ../../AN/src/anpar12.c $(INCFILES)
	$(COMPILE) ../../AN/src/anpar12.c
	ar r ../lib/PMlib.a anpar12.o
	$(RM) anpar12.o

../lib/PMlib.a(anpar31.o): ../../AN/src/anpar31.c $(INCFILES)
	$(COMPILE) ../../AN/src/anpar31.c
	ar r ../lib/PMlib.a anpar31.o
	$(RM) anpar31.o

../lib/PMlib.a(anpar51.o): ../../AN/src/anpar51.c $(INCFILES)
	$(COMPILE) ../../AN/src/anpar51.c
	ar r ../lib/PMlib.a anpar51.o
	$(RM) anpar51.o

../lib/PMlib.a(anpar52.o): ../../AN/src/anpar52.c $(INCFILES)
	$(COMPILE) ../../AN/src/anpar52.c
	ar r ../lib/PMlib.a anpar52.o
	$(RM) anpar52.o

../lib/PMlib.a(anlog.o): ../../AN/src/anlog.c $(INCFILES)
	$(COMPILE) ../../AN/src/anlog.c
	ar r ../lib/PMlib.a anlog.o
	$(RM) anlog.o

################################################################
