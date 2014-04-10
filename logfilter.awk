# use regex to define lines to skip; anything not skipped is printed
/maint_prune/ { next }; 
/maint_functions/ { next }; 
/emitters/ { next }; 
{ print }

