%Main File. This runs and uses other functions.
%Welcome to my version of 2048! Hope you like it!
% - Nima Boscarino
%Started at 8:02 on March 24, 2014

%Start off with a clean slate

board = generateboard;
endgame = 0;
win = 0;
disp(board)
while endgame == 0
    menuval = optionmenu;
    switch menuval
        case 1
            board = moveup(board);
        case 2
            board = movedown(board);
        case 3
            board = moveright(board);
        case 4
            board = moveleft(board);
        case 5
            board = generateboard;
        case 6
            endgame = 1;
            win = 2;
    end
    disp(board)
    if sum(sum(a==2048)) > 0
        endgame = 1;
        win = 1;
    end
    if sum(sum(a==0)) ~= 0
        endgame = 1;
        win = 0;
    end
end
switch win
    case 1
        disp('CONGRATULATIONS! YOU WIN!');
    case 0
        disp('Nice try, better luck next time');
    case 2
        disp('See ya later, alligator')
end