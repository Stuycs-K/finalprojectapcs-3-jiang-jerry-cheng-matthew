# Dev Log:

This document must be updated daily every time you finish a work session.

## Jerry Jiang

### 2025-05-22 - Tile Class
Added mutator, accessor, and constructor methods

Added instance variables x, y, and color

### 2025-05-23 - Tile Display and start of Board class
Added display method for Tile, a 1x1 square with size SQUARE_SIZE a constant in Game

Added Board class with basic constructor and tileBoard instance variable, a tile[][]

### 2025-05-27 - Board mutator methods, clearing lines, clearing background, changed coordinate system
Added setTile() and setPiece() methods in the Board class to change tileBoard. setPiece calls the accessor method in Piece class and uses setTile.

Added clearLines() which removes a row if it is full, and add empty row to top, no score tracking yet

Added clearBackground() to reset the background to an empty board, should be called everytime board gets displayed

Added updateCoords() to change x and y of each Tile in tileBoard once clearLines is called

Added toString(), # for occupied tile, . for no tile for debugging purposes


Changed tileBoard to use an arrayList of tile[] instead of tile[][] to make clearLines easier to implement

Changed display in Tile and Board to use (y,x) pixel system to reflect (i, j) coordinates

### 2025-05-29 - Apply Gravity, collision checking, made Game setup/draw
Added applyGravity method in Piece which would shift every tile in piece down by one if it is not colliding or out of bounds. When collision of out of bounds, it snaps currentPiece to the board.

Added toString() in Piece and toString() in Tile, prints the x, y coords, for debugging purposes

Added isOccupied() in Board to check if given i and j is occupied by a tile, used to check collision

Added tick() in Board, currently calls applyGravity(), makes it so that applyGravity is called based on frameCount. Could call display functions in the future.

Changed Game to setup/draw

Draw is based on frameCount and only redraws the board every 15 frames for now

Added mouseClicked() in Game, currently changes currentPiece to a new random piece, implement this feature in applyGravity in the future.
