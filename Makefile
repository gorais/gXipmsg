gXipmsg : main.o udp.o pack.o appIcon.o sendDialog.o recvDialog.o
	cc -g -o gXipmsg main.o udp.o pack.o appIcon.o sendDialog.o recvDialog.o -lXm -lXt -lSM -lICE -lX11
             
main.o : main.c gXipmsg.h
	cc -g -c main.c
	
udp.o : udp.c udp.h 
	cc -g -c udp.c	
	
pack.o : pack.c pack.h 
	cc -g -c pack.c	
	
appIcon.o : appIcon.c appIcon.h 
	cc -g -c appIcon.c

sendDialog.o : sendDialog.c sendDialog.h 
	cc -g -c sendDialog.c

recvDialog.o : recvDialog.c recvDialog.h 
	cc -g -c recvDialog.c

clean : 
	rm -f gXipmsg *.s *.o *.exe *.stackdump
