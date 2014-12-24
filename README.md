SAMP
====

PTPM for Grand Theft Auto: San Andreas Multiplayer (SA:MP)


if you're just running the server without editing the script, dont forget to put the irc.dll (or irc.so for linux) file in ./plugins and create the mapvote file and the userdb and stuff:

./scriptfiles/userdb/operators.txt (put the username of the admins on a seperate line to actually give them op)
./scriptfiles/userdb/<admin>.pwd (put the password in the file, the name of the file should be the username with .pwd appended)
./scriptfiles/userdb/transmap.txt (empty file, only on linux etc you have to make sure its chmodded to 0777)
./scriptfiles/mapvote.txt (same ^)


if you're also editing the script don't forget to
- add forward OnPlayerTeamPrivmsg(); somewhere at the top of a_samp.inc
- edit a_irc.inc (download it from samp forums), the first function "ircConnect" needs an extra parameter at the end called "conn". just add the parameter to the name of the function.
