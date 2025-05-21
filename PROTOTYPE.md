
# Technical Details:


PERIOD 3

Group member names: Jerry Jiang, Matthew Cheng

Group name: Devious Dumplings

Brief project description:
- This project would be a copy of the popular game Tetris. It would be a fully functional processing sketch. We will have a board size of 10 x 20, the screen size will be bigger to possibly display the next piece and display score. Game ends if top out. Random pieces, generated from a 7 piece bag system, would start falling down. You have to place pieces to avoid topping out. Complete lines would be deleted and whatever is on top would be shifted down.

Expanded description:
- Critical Features (MVP) :
  - rotations, several functional pieces, game over check, gravity, deletion of complete rows, keybinds
- Diagrams:

- Nice to have Features:
  - speed ramping up as game continues, point scoring system, storing a tetris piece to use later, showing what piece comes next, changing keybinds, custom pieces  

A description of your technical design. This should include:

How you will be using the topics covered in class in the project.

# Project Design

UML Diagrams and descriptions of key algorithms, classes, and how things fit together.

![uml diagram](tetrisUML.png?raw=true "Tetris UML Diagram" )

Tile:
- a 1x1 square, the building block of all pieces
- it contains a color, and a x and y coordinate indicating where it is

Piece:
- made up of tiles
- would most likely be abstract
- x and y would be the coordinates of the center of rotation tile
- it would contain a color, and a rotation array storing int[] for x and y translations relative to the center to help construct tiles
- rotateLeft and rotateRight change currentRotation to the next configuration
- T piece, S piece, Z piece, line piece, etc are children of this class and are the default tetris pieces

Game:
- it would consist of a board where the main game would be played, represented by charArray with # being occupied tile
- currentPiece would be the piece that is currently falling down
- storedPiece allows you to hold one piece and swaps with the currentPiece, instantiated to null at first
- nextPieces would be a queue implemented as an ArrayDeque showing the next few pieces. Everytime a piece is taken out of it, another piece is added randomly from the available 7 pieces
- heights is an int[] filled with the current highest tile in each column, it will be used to check if a piece is able to be placed and for gameOver
- score is an int displaying total number of points so far
- gravity is how many tiles the currentPiece drops each tick
- drawBoard will draw the background then draw the current state of the game
- applyGravity shifts currentPiece down
- clearLines removes full lines and shifts floating tiles down, it also increases score
- gameOverCheck checks if a height in heights is above the maximum height
- softDrop increases gravity until button is released
- hardDrop increases gravity by a lot to instantly place currentPiece


# Intended pacing:

How you are breaking down the project and who is responsible for which parts.

tile class : jerry by Sunday the 25th;
for tile implementing coordinate storage and possibly using coordinates to rotate;

piece class implementing tile class: Matthew by Monday the 26th after tile is done;
for piece class implement randomness of pieces, as well as rotation of pieces by Tuesday the 27th;

Score tracking, different points for different clears, higher score multi for higher thresholds reached;both by 28th;

clearing the board lines, max height and soft/hard drop implementation with height; - Thursday the 29th; Both of us;

game end, gravity , increasing gravity if score hits threshold: Friday the 30th; jerry;

Draw board and make design ( make it look good ) : Sunday the 1st; Both of us;
