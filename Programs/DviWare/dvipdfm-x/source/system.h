/* This is dvipdfmx, an eXtended version of dvipdfm by Mark A. Wicks.

    Copyright (C) 2002-2020 by Jin-Hwan Cho and Shunsaku Hirata,
    the dvipdfmx project team.
    
    Copyright (C) 1998, 1999 by Mark A. Wicks <mwicks@kettering.edu>

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.
    
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.
*/

#ifndef _SYSTEM_H_
#define _SYSTEM_H_

#if defined(MIKTEX)
#  if defined(__cplusplus)
#    include <miktex/Core/Core>
#  else
#    include <miktex/Core/c/api.h>
#  endif
#  include <miktex/KPSE/Emulation>
#else
#ifdef MIKTEX
#include <miktex/Core/Core>
#include "gnu-miktex.h"
#include <miktex/KPSE/Emulation>
#else
#include <kpathsea/kpathsea.h>
#endif
#endif

#ifdef WIN32
#ifdef _MSC_VER
#  pragma warning(disable : 4101 4018)
#endif /* _MSC_VER */
#endif /* WIN32 */

#endif /* _SYSTEM_H_ */
