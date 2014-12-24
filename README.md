SAMP
====

PTPM for Grand Theft Auto: San Andreas Multiplayer (SA:MP)

If you are running the AMX file (the compiled script), make sure to put the irc.dll (or irc.so for linux) file in ./plugins. Create the following files:

- ./scriptfiles/userdb/operators.txt (put the username of the admins on a seperate line to actually give them op)
- ./scriptfiles/userdb/*admin*.pwd (put the password in the file, the name of the file should be the username with .pwd appended)
- ./scriptfiles/userdb/transmap.txt (empty file, only on linux etc you have to make sure its chmodded to 0777)
- ./scriptfiles/mapvote.txt (empty file, only on linux etc you have to make sure its chmodded to 0777)

If you are running a modified script (the PWN file). Take care of the following:
- Edit the SA:MP include file "a_samp.inc" and type "forward OnPlayerTeamPrivmsg(); " at the top of the file. This disables the build-in team chat. If you leave it unchanged, the Y-key will open TeamChat, which will transmit the message to all players.
- Disable IRC relay functionality. If you wish to enable it, find the "a_irc.inc" include. The first function "ircConnect" needs an extra parameter at the end called "conn". Just add the parameter to the name of the function.
