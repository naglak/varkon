/********************************************************************/
/*                                                                  */
/*  This file is part of the VARKON Geometry Library.               */
/*  URL:  http://varkon.sourceforge.net                             */
/*                                                                  */
/*  This library is free software; you can redistribute it and/or   */
/*  modify it under the terms of the GNU Library General Public     */
/*  License as published by the Free Software Foundation; either    */
/*  version 2 of the License, or (at your option) any later         */
/*  version.                                                        */
/*                                                                  */
/*  This library is distributed in the hope that it will be         */
/*  useful, but WITHOUT ANY WARRANTY; without even the implied      */
/*  warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR         */
/*  PURPOSE.  See the GNU Library General Public License for more   */
/*  details.                                                        */
/*                                                                  */
/*  You should have received a copy of the GNU Library General      */
/*  Public License along with this library; if not, write to the    */
/*  Free Software Foundation, Inc., 675 Mass Ave, Cambridge,        */
/*  MA 02139, USA.                                                  */
/*                                                                  */
/*  (C)Microform AB 1984-1999, Gunnar Liden, gunnar@microform.se    */
/*                                                                  */
/********************************************************************/

#include "../../DB/include/DB.h"
#include "../include/GE.h"

/********************************************************************/
/*!                                                                 */
/*  Function: varkon_pat_prirat                    File: sur234.c   */
/*  =============================================================   */
/*                                                                  */
/*  Purpose                                                         */
/*  -------                                                         */
/*                                                                  */
/*  Printout of rational bicubic patch data to Debug file.          */
/*                                                                  */
/*  Author: Gunnar Liden                                            */
/*                                                                  */
/*  Revisions                                                       */
/*                                                                  */
/*  1994-10-21   Originally written                                 */
/*  1996-05-28   Erased errbuf                                      */
/*  1999-12-01   Free source code modifications                     */
/*                                                                  */
/******************************************************************!*/

/* ------------- Short description of function -----------------*/
/*                                                              */
/*sdescr varkon_pat_prirat     Printout of rational patch data  */
/*                                                              */
/*------------------------------------------------------------- */

/*!-------------- Function calls (external) ------------------------*/
/*                                                                  */
/*                                                                  */
/*-----------------------------------------------------------------!*/

/*!------------ Error messages and warnings ------------------------*/
/*                                                                  */
/* SU2993 = Severe program error (  ) in varkon_pat_prirat (sur234) */
/*                                                                  */
/*-----------------------------------------------------------------!*/


/*!****************** Function **************************************/
/*                                                                  */
       DBstatus   varkon_pat_prirat (

/*-------------- Argument declarations -----------------------------*/
/*                                                                  */
/* In:                                                              */
  GMPATR  *p_p )         /* Rational geometric  patch         (ptr) */

/*                                                                  */
/*-----------------------------------------------------------------!*/


{ /* Start of function */

/* --------------- Internal variables ------------------------------*/
/*                                                                  */
/*                                                                  */
/*----------------------------------------------------------------- */


/*--------------end-of-declarations---------------------------------*/

/*!New-Page--------------------------------------------------------!*/

/*!                                                                 */
/* Algorithm                                                        */
/* =========                                                        */
/*                                                                 !*/

/*                                                                  */
/* 0. Check of input data and initiations                           */
/* ______________________________________                           */
/*                                                                  */
/*                                                                  */

#ifdef DEBUG
if ( dbglev(SURPAC) == 1 )
  {
  fprintf(dbgfil(SURPAC),
  "sur234 Enter ***** varkon_pat_prirat ******** p_p %d\n",p_p);
 fflush(dbgfil(SURPAC)); /* To file from buffer      */
  }
#endif
 
/*!                                                                 */
/* 1. Printout of patch data                                        */
/* _________________________                                        */
/*                                                                  */
/* For Debug On: Printout of patch data to Debug file               */
/*                                                                  */
/*                                                                 !*/


#ifdef DEBUG
  fprintf(dbgfil(SURPAC),"sur234 a00x %f a01x %f a02x %f a03x %f \n",
   p_p->a00x,p_p->a01x,p_p->a02x,p_p->a03x);
  fprintf(dbgfil(SURPAC),"sur234 a10x %f a11x %f a12x %f a13x %f \n",
   p_p->a10x,p_p->a11x,p_p->a12x,p_p->a13x);
  fprintf(dbgfil(SURPAC),"sur234 a20x %f a21x %f a22x %f a23x %f \n",
   p_p->a20x,p_p->a21x,p_p->a22x,p_p->a23x);
  fprintf(dbgfil(SURPAC),"sur234 a30x %f a31x %f a32x %f a33x %f \n",
   p_p->a30x,p_p->a31x,p_p->a32x,p_p->a33x);
  fprintf(dbgfil(SURPAC),"sur234 a00y %f a01y %f a02y %f a03y %f \n",
   p_p->a00y,p_p->a01y,p_p->a02y,p_p->a03y);
  fprintf(dbgfil(SURPAC),"sur234 a10y %f a11y %f a12y %f a13y %f \n",
   p_p->a10y,p_p->a11y,p_p->a12y,p_p->a13y);
  fprintf(dbgfil(SURPAC),"sur234 a20y %f a21y %f a22y %f a23y %f \n",
   p_p->a20y,p_p->a21y,p_p->a22y,p_p->a23y);
  fprintf(dbgfil(SURPAC),"sur234 a30y %f a31y %f a32y %f a33y %f \n",
   p_p->a30y,p_p->a31y,p_p->a32y,p_p->a33y);

  fprintf(dbgfil(SURPAC),"sur234 a00z %f a01z %f a02z %f a03z %f \n",
   p_p->a00z,p_p->a01z,p_p->a02z,p_p->a03z);
  fprintf(dbgfil(SURPAC),"sur234 a10z %f a11z %f a12z %f a13z %f \n",
   p_p->a10z,p_p->a11z,p_p->a12z,p_p->a13z);
  fprintf(dbgfil(SURPAC),"sur234 a20z %f a21z %f a22z %f a23z %f \n",
   p_p->a20z,p_p->a21z,p_p->a22z,p_p->a23z);
  fprintf(dbgfil(SURPAC),"sur234 a30z %f a31z %f a32z %f a33z %f \n",
   p_p->a30z,p_p->a31z,p_p->a32z,p_p->a33z);

  fprintf(dbgfil(SURPAC),"sur234 a00  %f a01  %f a02  %f a03  %f \n",
   p_p->a00 ,p_p->a01 ,p_p->a02 ,p_p->a03 );
  fprintf(dbgfil(SURPAC),"sur234 a10  %f a11  %f a12  %f a13  %f \n",
   p_p->a10 ,p_p->a11 ,p_p->a12 ,p_p->a13 );
  fprintf(dbgfil(SURPAC),"sur234 a20  %f a21  %f a22  %f a23  %f \n",
   p_p->a20 ,p_p->a21 ,p_p->a22 ,p_p->a23 );
  fprintf(dbgfil(SURPAC),"sur234 a30  %f a31  %f a32  %f a33  %f \n",
   p_p->a30 ,p_p->a31 ,p_p->a32 ,p_p->a33 );
 fflush(dbgfil(SURPAC));
#endif

/* 3. Exit                                                          */

#ifdef DEBUG                             /* Debug printout          */
if ( dbglev(SURPAC) == 1 )
  {
  fprintf(dbgfil(SURPAC),
  "sur234 Exit ****** varkon_pat_prirat ********\n");
 fflush(dbgfil(SURPAC)); 
  }
#endif


    return(SUCCED);

  }

/*********************************************************/
