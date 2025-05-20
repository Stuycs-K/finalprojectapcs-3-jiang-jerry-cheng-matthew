
# Technical Details:

(CHANGE THIS!!!!!)
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
