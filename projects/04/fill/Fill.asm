


// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// while(true){
//     int screen; 
//     if(screen!=0){
//         blackScreen();
//     }else{
//         clearScreen();
//     }
// }

// screen + (512 * 256) /16  || 8192
// last = 131072
// start = 0
// inc = 16 

@8191
D = A 
@last 
M = D

@1 
D = A 
@inc
M = D

//LOOP starts here
(LOOP)
@KBD
D = M 
@BLACK
D; JNE 
//clear the screen 

@start
M = 0 

(I1LOOP)
@last
D = M 
@start
D = D - M
@I1OUT
D; JLT

@start
D = M
@SCREEN
A = A + D
M = 0

@inc 
D = M 
@start
M = M + D

@I1LOOP
0;JMP

(I1OUT) // inner loop ends

@LOOP
0; JMP

(BLACK) // blacken the screen

@start
M = 0 

(ILOOP)
@last
D = M 
@start
D = D - M
@IOUT
D; JLT

@start
D = M
@SCREEN
A = A + D
M = -1

@inc 
D = M 
@start
M = M + D

@ILOOP
0;JMP

(IOUT) // inner loop ends


@LOOP
0;JMP