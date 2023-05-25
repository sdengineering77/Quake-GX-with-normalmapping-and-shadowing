/*
Copyright (C) 1996-1997 Id Software, Inc.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/
// cvar.c -- dynamic variable tracking

#include "quakedef.h"

cvar_t	*cvar_vars;
char	*cvar_null_string = "";

/*
============
Cvar_FindVar
============
*/
cvar_t *Cvar_FindVar (char *var_name)
{
	cvar_t	*var;
	
	for (var=cvar_vars ; var ; var=var->next)
		if (!Q_strcmp (var_name, var->name))
			return var;

	return NULL;
}

/*
============
Cvar_VariableValue
============
*/
float	Cvar_VariableValue (char *var_name)
{
	cvar_t	*var;
	
	var = Cvar_FindVar (var_name);
	if (!var)
		return 0;
	return Q_atof (var->string);
}


/*
============
Cvar_VariableString
============
*/
char *Cvar_VariableString (char *var_name)
{
	cvar_t *var;
	
	var = Cvar_FindVar (var_name);
	if (!var)
		return cvar_null_string;
	return var->string;
}


/*
============
Cvar_CompleteVariable
============
*/
char *Cvar_CompleteVariable (char *partial)
{
	cvar_t		*cvar;
	int			len;
	
	len = Q_strlen(partial);
	
	if (!len)
		return NULL;
		
// check functions
	for (cvar=cvar_vars ; cvar ; cvar=cvar->next)
		if (!Q_strncmp (partial,cvar->name, len))
			return cvar->name;

	return NULL;
}

/*
============
Cvar_CompleteCountPossible
============
*/
int Cvar_CompleteCountPossible (char *partial)
{
	cvar_t	*cvar;
	int	len;
	int	h;

	h=0;

	len = Q_strlen(partial);
	
	if (!len)
		return 0;
		
	// Loop through the cvars and count all partial matches
	for (cvar=cvar_vars ; cvar ; cvar=cvar->next)
		if (!Q_strncmp (partial,cvar->name, len))
			h++;
	return h;
}

/*
============
Cvar_CompletePrintPossible
============
*/
void Cvar_CompletePrintPossible (char *partial)
{
	cvar_t	*cvar;
	int	len;
	int	lpos;
	int	out;
	int	con_linewidth;
	char	sout[32];
	char	lout[2048];

	len = Q_strlen(partial);
	lpos = 0;
	Q_strcpy(lout,"");

	// Determine the width of the console
	con_linewidth = (vid.width >> 3) - 3;

	// Loop through the cvars and print all matches
	for (cvar=cvar_vars ; cvar ; cvar=cvar->next)
		if (!Q_strncmp (partial,cvar->name, len))
		{
			Q_strcpy(sout, cvar->name);

			out = Q_strlen(sout);
			lpos += out;

			// Pad with spaces
			for (out; out<20; out++)		
			{
				if (lpos < con_linewidth)
					Q_strcat (sout, " ");
				
				lpos++;
			}

			Q_strcat (lout, sout);

			if (lpos > con_linewidth - 24)
				for  (lpos; lpos < con_linewidth; lpos++)
					Q_strcat(lout, " ");

			if (lpos >= con_linewidth)
				lpos = 0;
		}
	Con_Printf ("%s\n\n", lout);
}

/*
============
Cvar_Set
============
*/
void Cvar_Set (char *var_name, char *value)
{
	cvar_t	*var;
	qboolean changed;
	
	var = Cvar_FindVar (var_name);
	if (!var)
	{	// there is an error in C code if this happens
		Con_Printf ("Cvar_Set: variable %s not found\n", var_name);
		return;
	}
	
	//START - coop and dm flag fix - Eradicator
	/*PENTA: This is buggy: https://sourceforge.net/tracker/index.php?func=detail&aid=760120&group_id=62057&atid=499289
	if ( (var->value != 0) && (!Q_strcmp (var->name, deathmatch.name)) )
		Cvar_Set ("coop", "0");

	if ( (var->value != 0) && (!Q_strcmp (var->name, coop.name)) )
		Cvar_Set ("deathmatch", "0");
	*/
	//END - coop and dm flag fix - Eradicator

	changed = Q_strcmp(var->string, value);

	if(!changed) //Cvar Speedup - Eradicator
		return;
	//Don't reallocate when the buffer is the same size
Sys_Printf("var->string %s \n", var->string);
	if (!var->string || strlen(var->string) != strlen(value))
	{
		Z_Free (var->string);
		var->string = Z_Malloc (strlen(value)+1);
	}
	//Z_Free (var->string);	// free the old value string
	//var->string = Z_Malloc (Q_strlen(value)+1);

	Q_strcpy (var->string, value);
	var->value = Q_atof (var->string);
	if (var->server && changed)
	{
		if (sv.active)
			SV_BroadcastPrintf ("\"%s\" changed to \"%s\"\n", var->name, var->string);
	}
}

/*
============
Cvar_SetValue
============
*/
void Cvar_SetValue (char *var_name, float value)
{
	char	val[32];
	
	if (value == (int)value) //decimal fix - Eradicator
		sprintf (val, "%d", (int)value);
	else
		sprintf (val, "%f",value);

	Cvar_Set (var_name, val);
}


/*
============
Cvar_RegisterVariable

Adds a freestanding variable to the variable list.
============
*/
void Cvar_RegisterVariable (cvar_t *variable)
{
	char	*oldstr;
	
// first check to see if it has allready been defined
	if (Cvar_FindVar (variable->name))
	{
		Con_Printf ("Can't register variable %s, allready defined\n", variable->name);
		return;
	}
	
// check for overlap with a command
	if (Cmd_Exists (variable->name))
	{
		Con_Printf ("Cvar_RegisterVariable: %s is a command\n", variable->name);
		return;
	}
		
// copy the value off, because future sets will Z_Free it
	oldstr = variable->string;
	variable->string = Z_Malloc (Q_strlen(variable->string)+1);	
	Q_strcpy (variable->string, oldstr);
	variable->value = Q_atof (variable->string);

Sys_Printf("Cvar register: %s %s %p\n", variable->name, variable->string, variable->string);
	
// link the variable in
	variable->next = cvar_vars;
	cvar_vars = variable;
}

/*
============
Cvar_Command

Handles variable inspection and changing from the console
============
*/
qboolean	Cvar_Command (void)
{
	cvar_t			*v;

// check variables
	v = Cvar_FindVar (Cmd_Argv(0));
	if (!v)
		return false;
		
// perform a variable print or set
	if (Cmd_Argc() == 1)
	{
		Con_Printf ("\"%s\" is \"%s\"\n", v->name, v->string);
		return true;
	}

	Cvar_Set (v->name, Cmd_Argv(1));
	return true;
}


/*
============
Cvar_WriteVariables

Writes lines containing "set variable value" for all variables
with the archive flag set to true.
============
*/
void Cvar_WriteVariables (FILE *f)
{
	cvar_t	*var;
	
	for (var = cvar_vars ; var ; var = var->next)
		if (var->archive)
			fprintf (f, "%s \"%s\"\n", var->name, var->string);
}

/*
=========
Cvar_List

Displays a list of all cvars similar to Quake3 cvarlist - Eradicator
=========
*/
void Cvar_List_f (void)
{
	cvar_t		*cvar;
	char 		*partial;
	int		len;
	int		count;

	if (Cmd_Argc() > 1)
	{
		partial = Cmd_Argv (1);
		len = Q_strlen(partial);
	}
	else
	{
		partial = NULL;
		len = 0;
	}

	count=0;
	for (cvar=cvar_vars ; cvar ; cvar=cvar->next)
	{
		if (partial && Q_strncmp (partial,cvar->name, len))
		{
			continue;
		}
		Con_Printf ("\"%s\" is \"%s\"\n", cvar->name, cvar->string);
		count++;
	}

	Con_Printf ("%i cvar(s)", count);
	if (partial)
	{
		Con_Printf (" beginning with \"%s\"", partial);
	}
	Con_Printf ("\n");
}

