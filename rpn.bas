10 CLEAR: DIM R(9),I(9)
11 *R: RADIAN: CLS: WAIT 0: USING: GOTO 40
15 LOCATE 0,0: WAIT 100: PRINT "ERROR!","": WAIT 0: GOTO 40
20 T=Z,Z=Y,Y=X,X=N,S=K,K=J,J=I,I=O: GOTO 50
30 Y=Z,Z=T,N=X,X=L,L=N,J=K,K=S,O=I,I=M,M=O
40 P=1
50 LOCATE 0,0: PRINT "    T,Z,Y,X:","    S,K,J,I:",T,S,Z,K,Y,J,X,I," ","": F=0,H=0: GOTO 90
60 D=2,E=0,AA$="0": GOTO 69
63 D=0,E=2,AA$="1": GOTO 69
66 D=0,E=0,AA$=""
69 F=1: IF P LET T=Z,Z=Y,Y=X,S=K,K=J,J=I: LOCATE 0,0: PRINT "    T,Z,Y,X:","    S,K,J,I:",T,S,Z,K,Y,J
70 GOTO 79
72 IF D OR E GOTO 90
73 D=LEN AA$+1: GOTO 79
75 IF E GOTO 90
76 E=LEN AA$+1
79 AA$=AA$+CHR$ A
80 N=12-LEN AA$: LOCATE 12*(F-1),4: PRINT LEFT$("           0",-N*(N>0));AA$;: IF N<=0 PRINT " ";
81 IF F=2 LET I=VAL AA$: GOTO 90
82 X=VAL AA$
90 W=1E4: LOCATE 0,0: PRINT " ";CHR$(32+H*40)
91 IF INKEY$<>"" GOTO 91
100 A=ASC INKEY$: W=W-1: IF W=0 CLS: WAIT: PRINT "Press ENTER to continue": WAIT 0: GOTO 50
101 ON A/16 GOTO 116,132,148,164,180,,,228,244,,,,,,340: IF A=0 GOTO 100
102 IF A=2 LET X=0,I=0,P=0: GOTO 50
104 IF A=4 LET N=T,T=Z,Z=Y,Y=X,X=N,O=S,S=K,K=J,J=I,I=O: GOTO 40
105 IF A=5 LET N=X,X=Y,Y=Z,Z=T,T=N,O=I,I=J,J=K,K=S,S=O: GOTO 40
107 IF A=7 GOTO 910
108 IF A<10 LET W=1: GOTO 100
111 IF A<12 GOTO 90
112 IF A=12 GOTO 900
113 IF A=13 LET N=X,O=I,P=0: GOTO 20
114 IF A=14 LET N=X,X=Y,Y=N,O=I,I=J,J=O: GOTO 40
115 A=23: GOTO 122
116 IF A=16 GOTO 390
122 IF A=23 IF F LET N=LEN AA$: IF N>1 LET AA$=LEFT$(AA$,N-1),D=-D*(D<N),E=-E*(E<N): GOTO 80
123 IF A=23 LET A=2: GOTO 102
124 IF A=24 LET N=L,O=M,P=1: GOTO 20
125 IF A=25 LET R(2)=R(2)+1,R(3)=R(3)+X,R(4)=R(4)+SQU X,R(5)=R(5)+Y,R(6)=R(6)+SQU Y,R(7)=R(7)+X*Y,X=R(2),I=0: GOTO 40
126 IF A<26 GOTO 90
127 IF F=0 LET X=-X: GOTO 40
128 IF E=0 IF ASC AA$=45 LET AA$=MID$(AA$,2,16),D=D+(D>0): GOTO 80
129 IF E=0 LET AA$="-"+AA$,D=D-(D>0): GOTO 80
130 IF MID$(AA$,E+1,1)="-" LET AA$=LEFT$(AA$,E)+MID$(AA$,E+2,16): GOTO 80
131 AA$=LEFT$(AA$,E)+"-"+MID$(AA$,E+1,16): GOTO 80
132 IF A=32 GOTO 127
142 IF A=42 LET L=X*Y-I*J,M=X*J+Y*I: GOTO 30
143 IF A=43 LET L=Y+X,M=J+I: GOTO 30
144 IF A<45 GOTO 90
145 IF A=45 LET L=Y-X,M=J-I: GOTO 30
146 IF A=46 ON F+1 GOTO 60,72,72
147 GOTO 720
148 IF A<58 ON F+1 GOTO 66,79,79
159 IF A<61 GOTO 90
161 IF P LET T=Z,Z=Y,Y=X,X=0,S=K,K=J,J=I: LOCATE 0,0: PRINT "    T,Z,Y,X:","    S,K,J,I:",T,S,Z,K,Y,J,X,I
162 LOCATE 0,4: INPUT "<Basic expr>",X: LOCATE 0,4: PRINT X,"": LOCATE 12,4: INPUT "<Basic expr>",I
163 GOTO 50
164 REM
165 IF A=65 GOSUB 820: X=N,I=0: GOTO 40
167 IF A=67 LET X=-INT -X,I=-INT -I: GOTO 40
169 IF A=69 ON F+1 GOTO 63,75,75
170 IF A=70 LET X=X-FIX X,I=I-FIX I: GOTO 40
171 IF A=71 GOTO 700
172 IF A=72 LET H=1-H: GOTO 90
174 IF A=73 OR A=74 LET F=1-(F<2),D=0,E=0,AA$="": GOTO 80
176 IF A=76 IF R(2)>0 LET X=(R(7)-R(3)*R(5)/R(2))/(R(4)-SQU R(3)/R(2)),I=0,N=(R(5)-X*R(3))/R(2),O=0,P=1: GOTO 20
177 IF A=77 IF R(2)>0 LET X=R(5)/R(2),I=0,N=R(3)/R(2),O=0,P=1: GOTO 20
178 IF A=78 LET X=INT X,I=INT I: GOTO 40
179 GOTO 90
180 REM
181 IF A=81 GOTO 830
182 IF A=82 GOTO 840
183 IF A=83 IF R(2)>1 LET X=SQR((R(6)-SQU R(5)/R(2))/(R(2)-1)),I=0,N=SQR((R(4)-SQU R(3)/R(2))/(R(2)-1)),O=0,P=1: GOTO 20
184 IF A=84 LET X=FIX X,I=FIX I: GOTO 40
186 IF A=86 IF R(2)>0 LET X=(R(6)-SQU R(5)/R(2))/R(2),I=0,N=(R(4)-SQU R(3)/R(2))/R(2),O=0,P=1: GOTO 20
189 IF A=89 IF R(2)>0 LET N=R(7)-R(3)*R(5)/R(2),O=R(4)-SQU R(3)/R(2),U=N/SQR(O*(R(6)-SQU R(5)/R(2))),N=(X-R(3)/R(2))*N/O+R(5)/R(2),O=0,X=U,I=0,P=1: GOTO 20
190 IF A<94 GOTO 90
194 IF Y=0 IF X<=0 GOTO 15
195 IF Y=0 LET L=0,M=0: GOTO 30
196 IF I=0 IF J=0 IF Y>0 OR X=INT X LET L=Y^X,M=0: GOTO 30
197 IF I=0 IF J=0 IF RCP X=2*INT RCP(2*X)+1 LET L=Y^X,M=0: GOTO 30
198 IF Y>0 IF J=0 LET N=Y^X,M=I*LN Y,L=N*COS M,M=N*SIN M: GOTO 30
199 IF I=0 GOSUB 800: N=X^Y,L=N*COS(Y*I),M=N*SIN(Y*I): GOTO 30
200 GOTO 15
228 REM
235 IF A=135 GOTO 730
236 N=X,X=X*X-I*I,I=2*N*I: GOTO 40
244 REM
245 IF A=145 GOSUB 810: IF X LET X=LN X: GOTO 40
246 IF A=146 GOSUB 810: IF X LET X=LOG X,I=I/2.302585093: GOTO 40
249 IF A=149 GOTO 740
250 IF A=150 GOTO 750
251 IF A=151 GOTO 760
255 IF A=155 LET X=DEG X,I=0: GOTO 40
256 IF A=156 LET O=X,X=I,I=O: GOTO 40
257 IF A=157 IF I=0 IF J=0 IF Y>0 IF Y=INT Y IF X>=0 IF X<=Y IF X=INT X LET L=NPR(Y,X),M=0: GOTO 30
258 IF A=158 LET X=INT(X+0.5),I=INT(I+0.5): GOTO 40
259 GOTO 15
340 REM
351 IF A=251 LET N=PI,O=0,P=1: GOTO 20
352 IF I=0 IF X>=0 LET X=SQR X: GOTO 40
353 IF I=0 LET I=SQR -X,X=0: GOTO 40
354 GOSUB 820: I=SGN I*SQR((N-X)/2),X=SQR((N+X)/2): GOTO 40
390 W=1E4: LOCATE 0,0: PRINT "S";CHR$(32+H*40)
391 IF INKEY$<>"" GOTO 391
400 A=ASC INKEY$: W=W-1: IF W=1 GOTO 100
401 ON A/16 GOTO 416,432,448,464,480,,,528,544,,,,,,640: IF A=0 GOTO 400
402 IF A=2 GOTO 10
405 IF A<8 GOTO 90
408 IF A<11 LET W=1: GOTO 100
412 IF A=12 GOTO 920
415 GOTO 90
416 REM
425 IF A=25 LET R(2)=R(2)-1,R(3)=R(3)-X,R(4)=R(4)-SQU X,R(5)=R(5)-Y,R(6)=R(6)-SQU Y,R(7)=R(7)-X*Y,X=R(2),I=0: GOTO 40
431 GOTO 90
432 REM
441 IF A=40 LET L=X*COS Y,M=X*SIN Y: GOTO 30
444 IF A=44 LET A=251: GOTO 651
445 IF A=45 GOTO 127
447 GOTO 90
448 REM
461 IF A=61 LET A=69: GOTO 169
463 GOTO 90
464 REM
472 IF A=72 LET H=1-H: GOTO 390
479 GOTO 90
480 REM
481 IF A=81 GOTO 710
484 IF A=84 LET I=X/100*J,X=X/100*Y: GOTO 40
494 IF A=94 GOSUB 810: N=X,O=0,X=I,I=0,P=1: GOTO 20
495 GOTO 90
528 REM
535 IF A=135 GOTO 710
536 N=SQU X,O=SQU I,X=X*(N-3*O),I=I*(3*N-O): GOTO 40
544 REM
545 IF A=145 IF X<231 LET N=EXP X,X=N*COS I,I=N*SIN I: GOTO 40
546 IF A=146 IF X<100 LET N=TEN X,I=2.302585093*I,X=N*COS I,I=N*SIN I: GOTO 40
547 IF A=145 OR A=146 GOTO 15
549 IF A=149 GOTO 770
550 IF A=150 GOTO 780
551 IF A=151 GOTO 790
555 IF A=155 LET X=DMS X,I=0: GOTO 40
557 IF A=157 IF I=0 IF J=0 IF Y>0 IF Y=INT Y IF X>=0 IF X<=Y IF X=INT X LET L=NCR(Y,X),M=0: GOTO 30
558 IF A=158 LET R(2)=0,I(2)=0,R(3)=0,I(3)=0,R(4)=0,I(4)=0,R(5)=0,I(5)=0,R(6)=0,I(6)=0,R(7)=0,I(7)=0: GOTO 90
559 GOTO 15
640 REM
651 IF A=251 LET N=RND 0,O=0,P=1: GOTO 20
652 IF I=0 LET X=CUR X: GOTO 40
653 GOSUB 810: N=CUR X,I=I/3,X=N*COS I,I=N*SIN I: GOTO 40
700 IF SGN I OR SGN J OR X<>INT X OR Y<>INT Y OR ABS X>=1E10 OR ABS Y>=1E10 GOTO 15
701 L=ABS X,M=ABS Y: IF L<M LET L=L+M
702 IF M LET N=L-M*INT(L/M),L=M,M=N: GOTO 702
703 M=0: GOTO 30
710 IF X<0 OR X>69 OR SGN I GOTO 15
711 IF X=INT X LET X=FACT X: GOTO 40
712 X=EXP(LN((1+76.18009173/(X+2)-86.50532033/(X+3)+24.01409824/(X+4)-1.231739572/(X+5)+1.208650974E-3/(X+6)-5.395239385E-6/(X+7))*2.506628275/(X+1))+(X+1.5)*LN(X+6.5)-X-6.5): GOTO 40
720 IF ABS X<ABS I LET N=X/I,M=X*N+I,L=(Y*N+J)/M,M=(J*N-Y)/M: GOTO 30
721 IF X LET N=I/X,M=X+I*N: IF M LET L=(Y+J*N)/M,M=(J-Y*N)/M: GOTO 30
722 GOTO 15
730 IF ABS X<ABS I LET N=X/I,I=-RCP(X*N+I),X=-N*I: GOTO 40
731 IF X LET N=I/X,X=RCP(X+I*N),I=-X*N: GOTO 40
732 GOTO 15
740 IF H IF X<231 LET N=EXP X,X=(N-RCP N)*COS I/2,I=(N+RCP N)*SIN I/2: GOTO 40
741 IF H=0 IF I<231 LET N=EXP I,I=(N-RCP N)*COS X/2,X=(N+RCP N)*SIN X/2: GOTO 40
742 GOTO 15
750 IF H IF X<231 LET N=EXP X,X=(N+RCP N)*COS I/2,I=(N-RCP N)*SIN I/2: GOTO 40
751 IF H=0 IF I<231 LET N=EXP I,I=(RCP N-N)*SIN X/2,X=(N+RCP N)*COS X/2: GOTO 40
752 GOTO 15
760 IF H IF X<116 LET N=EXP(2*X),O=COS(2*I)+(N+RCP N)/2: IF O LET X=(N-RCP N)/2/O,I=SIN(2*I)/O: GOTO 40
761 IF H=0 IF I<116 LET N=EXP(2*I),O=COS(2*X)+(N+RCP N)/2: IF O LET X=SIN(2*X)/O,I=(N-RCP N)/2/O: GOTO 40
762 GOTO 15
770 IF I GOTO 15
771 IF H LET X=AHS X: GOTO 40
772 IF ABS X<=1 LET X=ASN X: GOTO 40
773 GOTO 15
780 IF I GOTO 15
781 IF H IF X<1 GOTO 15
782 IF H LET X=AHC X: GOTO 40
783 IF ABS X<=1 LET X=ACS X: GOTO 40
784 GOTO 15
790 IF I GOTO 15
791 IF H IF ABS X>=1 GOTO 15
792 IF H LET X=AHT X: GOTO 40
793 X=ATN X: GOTO 40
800 N=X,X=Y,Y=N,O=I,I=J,J=O
810 IF X=0 LET X=ABS I,I=SGN I*PI/2: RETURN
811 IF I=0 LET I=-(X<0)*PI,X=ABS X: RETURN
812 IF ABS X<ABS I LET N=X/I,N=ABS I*SQR(1+N*N): GOTO 814
813 N=I/X,N=ABS X*SQR(1+N*N)
814 IF X>0 LET I=ATN(I/X),X=N: RETURN
815 I=SGN I*PI/2-ATN(X/I),X=N: RETURN
820 IF ABS X<ABS I LET N=X/I,N=ABS I*SQR(1+N*N): RETURN
821 N=I/X,N=ABS X*SQR(1+N*N): RETURN
830 IF SGN I OR SGN J OR X=0 OR X<>INT X OR Y<>INT Y OR ABS X>=1E10 OR ABS Y>=1E10 GOTO 15
831 N=X,X=SGN X*INT(Y/ABS X),Y=Y-N*X: GOTO 40
840 IF I GOTO 15
841 IF X=INT X LET N=1,O=0,P=1: GOTO 20
842 I=0,L=1,O=1,M=0,W=X
843 N=INT W,W=W-N,U=N*L+I,I=L,L=U,U=N*M+O,O=M,M=U,N=L/M: IF W IF ABS(N-X)>1E-10 LET W=RCP W: GOTO 843
844 X=L,I=0,N=M,O=0,P=1: GOTO 20
900 GOSUB 930
901 IF A=43 GOSUB 930: A=VAL CHR$ A,R(A)=R(A)+X,I(A)=I(A)+I: GOTO 40
902 IF A=45 GOSUB 930: A=VAL CHR$ A,R(A)=R(A)-X,I(A)=I(A)-I: GOTO 40
903 IF A=42 GOSUB 930: A=VAL CHR$ A,N=R(A),R(A)=R(A)*X-I(A)*I,I(A)=N*I+X*I(A): GOTO 40
904 IF A<>47 LET A=VAL CHR$ A,R(A)=X,I(A)=I: GOTO 40
905 GOSUB 930: A=VAL CHR$ A
906 IF ABS X<ABS I LET N=X/I,O=X*N+I,W=R(A),R(A)=(W*N+I(A))/O,I(A)=(I(A)*N-W)/O: GOTO 40
907 IF X LET N=I/X,O=X+I*N,W=R(A),R(A)=(W+I(A)*N)/O,I(A)=(I(A)-W*N)/O: GOTO 40
908 GOTO 15
910 GOSUB 930
911 IF A=43 GOSUB 930: A=VAL CHR$ A,X=X+R(A),I=I+I(A): GOTO 40
912 IF A=45 GOSUB 930: A=VAL CHR$ A,X=X-R(A),I=I-I(A): GOTO 40
913 IF A=42 GOSUB 930: A=VAL CHR$ A,N=X,X=X*R(A)-I*I(A),I=N*I(A)+R(A)*I: GOTO 40
914 IF A<>47 LET A=VAL CHR$ A,N=R(A),O=I(A),P=1: GOTO 20
915 GOSUB 930: A=VAL CHR$ A,W=R(A),O=I(A)
916 IF ABS W<ABS O LET N=W/O,O=W*N+O,W=X,X=(X*N+I)/O,I=(I*N-X)/O: GOTO 40
917 IF W LET N=O/W,O=W+O*N,W=X,X=(X+I*N)/O,I=(I-W*N)/O: GOTO 40
918 GOTO 15
920 CLS: PRINT "     R0..R4:","     I0..I4:",R(0),I(0),R(1),I(1),R(2),I(2),R(3),I(3),R(4),I(4)
921 GOSUB 931
922 CLS: PRINT "     R5..R9:","     I5..I9:",R(5),I(5),R(6),I(6),R(7),I(7),R(8),I(8),R(9),I(9)
923 GOSUB 931
924 CLS: GOTO 40
930 LOCATE 0,0: PRINT "R?"
931 W=1E4: IF INKEY$<>"" GOTO 931
932 A=ASC INKEY$: W=W-1: IF A OR W=0 RETURN
933 GOTO 932
