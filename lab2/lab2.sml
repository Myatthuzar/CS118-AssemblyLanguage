val x = 2;
val y = 3;
val z = 4;
val w = 6;
val s = 5;
val r = x + y + z;
val r = r + s;
val r = r + w;
Reading symbols from labc...(no debugging symbols found)...done.
Breakpoint 1 at 0x804840a

Breakpoint 1, 0x0804840a in main ()
eax            0x1	1
ecx            0xbffff560	-1073744544
edx            0xbffff584	-1073744508
ebx            0xb7fcc000	-1208172544
esp            0xbffff540	0xbffff540
ebp            0xbffff548	0xbffff548
esi            0x0	0
edi            0x0	0
eip            0x804840a	0x804840a <main+15>
eflags         0x286	[ PF SF IF ]
cs             0x73	115
ss             0x7b	123
ds             0x7b	123
es             0x7b	123
fs             0x0	0
gs             0x33	51
(gdb) quit
A debugging session is active.

	Inferior 1 [process 1059] will be killed.

