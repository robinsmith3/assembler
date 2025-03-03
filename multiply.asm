10 REM Acorn Electron BASIC program to multiply two positive numbers
20 DIM code 100       
30 P%=&8000           
40 [                  
50 .start
60 LDA #5             
70 STA &70            
80 LDA #3             
90 STA &71            
100 LDX &71        
110 LDA #0            
120 STA &72           
130 .multiply
140 CPX #0            
150 BEQ done          
160 .loop
170 CLC               
180 ADC &70           
190 DEX               
200 BNE loop          
210 STA &72            
220 .done
230 RTS                
240 ]
250 PRINT "Calling assembly to multiply 5 and 3..."
260 CALL &8000          : REM Run the code
270 PRINT "NUM1 (&70): ";?(&70)     : REM Show 5
280 PRINT "NUM2 (&71): ";?(&71)     : REM Show 3
290 PRINT "RESULT (&72): ";?(&72)   : REM Show 15