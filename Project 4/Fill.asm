// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.
(KEYBOARD)
@KBD
D=M
@WHITE
D;JEQ
@i
M=-1
(BLACK)
@i
M=M+1
D=M
@SCREEN
A=D+A
M=-1
@8191
D=A-D
@KEYBOARD
D;JEQ
@BLACK
0;JMP
@j
M=-1
(WHITE)
@j
M=M+1
D=M
@SCREEN
A=D+A
M=0
@8191
D=A-D
@KEYBOARD
D;JEQ
@WHITE
0;JMP
