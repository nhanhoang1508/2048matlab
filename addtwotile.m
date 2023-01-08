%ADD 2-TILE
%ADD A ONE IN 10 CHANCE OF SPAWNING a 4-TILE ? ? ?
function board = addtwotile(board)
a = 0;
while a == 0 %0 while slot is full, 1 when it is empty
    coords = coordgen;
    if board(coords(1),coords(2)) == 0
        a = 1;
    end
end
board(coords(1),coords(2)) = 2;
end
