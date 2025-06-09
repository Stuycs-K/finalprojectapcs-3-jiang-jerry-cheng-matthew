# Dev Log:

This document must be updated daily every time you finish a work session.

## Matthew Cheng

### 2025-05-27 - Edited Piece class to display pieces
Spent an hour figuring out the colors for the pieces as well as randomizing the process of choosing the pieces. I also stored the coordinates of each tile in an array, so when I displayed each tile, it would be easier to access. The scale of the square size to coordinates was also taken into account. 

The displayTile method was written to display each tile, and by showing each tile, the entire piece would be drawn/represented.

### 2025-05-28 - Edited Piece class by fixing coordinates
Spent time changing the coordinates of each pieces as some pieces had the wrong coordinates.
Also changed my coordinate scaling by adjusting based off of tile display method

### 2025-05-29 - Added the first two rotations for the t piece
After determining the coordinates for the rotation of the tpiece, I implemented
the first two and tested them.

### 2025-05-30 - More rotation stuff
I added the final two rotations for the tpiece and tested them, and I tried 
different methods/ways to implement them, but it didn't work while testing it.
Tried using keybinds to implement rotations.

### 2025-06-01 - Even more rotation stuff, including testing and centering about a point
I added the I piece rotations, and then I tested it. i also started using a system
of currentX and currentY fields to make the rotations more consistent. I then tested my code
After that, I added the rotations for the s and z pieces, which were then tested. For all the rotations, 
I used the currentX and currentY fields so the rotations would all be centered about a specific point.
I also attempted to fix collisions and out of bounds errors.

### 2025-06-02 - 180 Spins 
I added the keybind that corresponded to the 180 spin rotation, and then I tested it.
I also added a fix for the I-piece spin error off the borders of the board.

### 2025-06-03 - Collisions
added more attempts to fix collisions with rotating

### 2025-06-04 - More collisions
Added more attemtps to check for collisions when rotating and fixing that error

### 2025-06-06 - fixing read me and even more collisions
I added the project description in the read me. I also attempted to fix the rotation error with collisions

###$ 2025-06-08 - Finalizing changes for collisions as well as y-val changes
I finalized code for collision checking when rotating. First fix was by adding new methods to check for height,
including maxH, findMaxHeight, and editing fillRotations. then that was tested and eventually edited.
The collision error was fixed in the end by checking for collisions in filLRotations, then if there was a collision, 
in the rotate method(), the loop that changed the tiles was stopped. after that fix, the code was tested and worked.
I finally changed the initial y-val position of the pieces so the pieces started near the top.


I believe this document accurately reflects the contributions of my teamate. - Jerry Jiang
