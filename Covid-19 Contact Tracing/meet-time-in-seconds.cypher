//Meet Time in seconds
MATCH p=()-[r:MEETS]->() 
set r.meettimeinseconds=r.meettime.seconds;