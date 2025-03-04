10USING "####.####"
20DIM HH(5):DIM CC(5):DIM CH(5):DIM CF(5):DIM B(5)
30HH(0)= PI :HH(1)=2* PI :HH(2)=9.425:HH(3)=12.566:HH(4)=5* PI :HH(5)=6* PI
40CC(0)=4.730:CC(1)=7.853:CC(2)=10.996:CC(3)=14.137:CC(4)=11/2* PI :CC(5)=13/2* PI
50CH(0)=3.927:CH(1)=7.069:CH(2)=10.210:CH(3)=13.352:CH(4)=21/4* PI :CH(5)=25/4* PI
60CF(0)=1.875:CF(1)=4.694:CF(2)=7.8550:CF(3)=10.996:CF(4)=9/2* PI :CF(5)=11/2* PI
70PRINT "Boundary conditions"
80PRINT "HH: Hinged/Hinged"
90PRINT "CC: Clamped/Clamped"
100PRINT "CH: Clamped/Hinged"
110PRINT "CF: Clamped/Free"
120INPUT "HH/CC/CH/CF: "; BC$
130INPUT "Young Modulus: ";E
140INPUT "Inertia: ";J
150INPUT "Length: ";L
160INPUT "Mass: ";M
170INPUT "Damping ratio: ";X
180INPUT "Second frequency: ";O2
190SWITCH BC$
200CASE "HH"
210FOR I=0 TO 5:B(I)=HH(I):NEXT I
220CASE "CC"
230FOR I=0 TO 5:B(I)=CC(I):NEXT I
240CASE "CH"
250FOR I=0 TO 5:B(I)=CH(I):NEXT I
260CASE "CF"
270FOR I=0 TO 5:B(I)=CF(I):NEXT I
280ENDSWITCH
290K1=B(0):K2=B(O2-1)
300F1=1/(2* PI )*(K1/L)^2* SQR (E*J/(M/L)):W1=F1/(2* PI )
310F2=1/(2* PI )*(K2/L)^2* SQR (E*J/(M/L)):W2=F2/(2* PI )
315PRINT ""
320PRINT "F1:"; MDF (F1);" Hz"
330PRINT "F2:"; MDF (F2);" Hz"
340A=2*X/(W2+W1)
350USING "###.####^"
360PRINT "Alpha:"; MDF (A);" s/rad"
370PRINT "Beta: "; MDF (B);" rad/s"
