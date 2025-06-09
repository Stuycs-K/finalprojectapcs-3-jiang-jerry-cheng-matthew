# Dev Log:

This document must be updated daily every time you finish a work session.

## Jerry Jiang

### 2025-05-22 - Tile Class (5 minutes)
Added mutator, accessor, and constructor methods

Added instance variables x, y, and color

### 2025-05-23 - Tile Display and start of Board class (10 minutes)
Added display method for Tile, a 1x1 square with size SQUARE_SIZE a constant in Game

Added Board class with basic constructor and tileBoard instance variable, a tile[][]

### 2025-05-27 - Board mutator methods, clearing lines, clearing background, changed coordinate system (1 hour 15 minutes)
Added setTile() and setPiece() methods in the Board class to change tileBoard. setPiece calls the accessor method in Piece class and uses setTile.

Added clearLines() which removes a row if it is full, and add empty row to top, no score tracking yet

Added clearBackground() to reset the background to an empty board, should be called everytime board gets displayed

Added updateCoords() to change x and y of each Tile in tileBoard once clearLines is called

Added toString(), # for occupied tile, . for no tile for debugging purposes


Changed tileBoard to use an arrayList of tile[] instead of tile[][] to make clearLines easier to implement

Changed display in Tile and Board to use (y,x) pixel system to reflect (i, j) coordinates

### 2025-05-29 - Apply Gravity, collision checking, made Game setup/draw (1 hour)
Added applyGravity method in Piece which would shift every tile in piece down by one if it is not colliding or out of bounds. When collision of out of bounds, it snaps currentPiece to the board.

Added toString() in Piece and toString() in Tile, prints the x, y coords, for debugging purposes

Added isOccupied() in Board to check if given i and j is occupied by a tile, used to check collision

Added tick() in Board, currently calls applyGravity(), makes it so that applyGravity is called based on frameCount. Could call display functions in the future.

Changed Game to setup/draw

Draw is based on frameCount and only redraws the board every 15 frames for now

Added mouseClicked() in Game, currently changes currentPiece to a new random piece, implement this feature in applyGravity in the future.

### 2025-05-30 - Moving current Piece (45 minutes)
Added moveLeft in Piece, checks for out of bounds, moves every tile in Piece left, called when letter a is pressed

Added moveRight in Piece, checks for out of bounds, moves every tile in Piece right, called when letter d is pressed

Changed applyGravity so that when currentpiece snaps on, it reassigns currentpiece

### 2025-06-01 - gameOver (20 minutes)
Added boolean gameOver in Game, initially false

Made it so that when you click with the mouse and its gameOver, it runs setup again

Added a check in setTile in Board so when it tries setting an occupied tile, it makes gameOver true

Made it so that draw has extra check to tick()

Changed applyGravity to not set new currentPiece when gameOver

### 2025-06-02 - softDrop (10 minutes)
Added gameSpeed and originalGameSpeed variables in Game, higher means slower

Added softDrop implementation, would divide gameSpeed by 3 when s key is pressed, boolean isSoftDrop is added to help with this

Added keyReleased method, when s key is released, gameSpeed would be set back to normal

### 2025-06-03 - hardDrop (30 minutes)
Changed applyGravity in Piece to add any amount to x not just 1

Added gravityCollision method in Piece which returns whether applying an amount of gravity would cause a collision

Added hardDrop method in Piece which checks for the first gravity amount that causes a collision then applys gravity to currentPiece for that amount -1. This method calls tick() after to snap the currentPiece instantly

Added to keyPressed method in Game, when spacebar is pressed, it calls hardDrop when game is not over

### 2025-06-04 - holding Pieces (15 minutes)
Added hold() method in Game which would swap currentPiece with heldPiece, or just store currentPiece if there is no heldPiece

When h key is pressed, hold() is called

Added displayHeldPiece method in Board, attempted to display the tiles for the held piece, doesn't work currently

### 2025-06-05 - heldPiece Display (20 minutes)
Fixed displayHeldPiece to display the held piece on the side of the board properly, special cases for O and I Pieces so that it is centered on the display.

Made variables in Piece that corresponds to a certain piece (ex: T, L, I, O, J) static

Removed redundant code in draw(), since tick already calls clearBackground, display, etc

### 2025-06-06 - score implementation + display (20 minutes)
Added score instance variable in Game

Added displayScore method which displays a white rectangle with the current score

Changed clearLines to add score when a certain number of lines are cleared, 40 for single line, 100 for 2 lines, 300 for 3 lines, 1200 for 4 lines

### 2025-06-07 - score implementation + display (1 hour 45 minutes)
Instantiated score to be 0 at thes start of game

Changed clearLines, i-- added when removing from arrayList, this makes score work properly

Added ArrayList bag which stores one of every piece

Added nextPiece, when a piece snaps onto the board, currentPiece swaps with nextPiece and a new nextPiece is taken out of the bag

Added next() method in Board, swaps currentPiece and nextPiece then takes a random piece from bag, and makes it the new nextPiece. This method also reinstantiates bag with all 7 pieces when there are no more pieces in bag

Added displayNextPiece, similar to displayHeldPiece but displays the nextPiece

Changed displayHeldPiece to display it in the bottom right corner

Added ghostPiece instance variable in Game

Added ghostHardDrop() method in Piece which hardDrops but doesn't call tick

Added copyPiece() method in Piece which returns a new Piece with all of the piece's tiles. The copied piece has a lighter color, taken from https://mdigi.tools/lighten-color 

Changed Piece constructor to not call displayTiles()

Added displayGhostPiece which copies currentPiece into ghostPiece, then ghostHardDrops the ghostPiece, and displays the ghostPiece's tiles

Made it so that displayGhostPiece is called everytime displayCurrentPiece is called, so it matches the updates



I believe this document accurately reflects the contributions of my teammate - Matthew Cheng
