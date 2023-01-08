%MOVE RIGHT!
function newboard = moveright(board)
%Splits every row up
row1 = board(1,:);
row2 = board(2,:);
row3 = board(3,:);
row4 = board(4,:);
%Removes zeros
row1(row1 == 0) = [];
row2(row2 == 0) = [];
row3(row3 == 0) = [];
row4(row4 == 0) = [];
% ADDING UP PAIRS AND REMOVING THINGS
for i = numel(row1):-1:2
    if i - 1 == 0
        break
    end    
    if row1(i) == row1(i - 1)
        row1(i) = row1(i).*2;
        row1(i-1) = [];
    end
end
for i = numel(row2):-1:2
    if i - 1 == 0
        break
    end
    if row2(i) == row2(i - 1)
        row2(i) = row2(i).*2;
        row2(i-1) = [];
    end
end
for i = numel(row3):-1:2
    if i - 1 == 0
        break
    end
    if row3(i) == row3(i - 1)
        row3(i) = row3(i).*2;
        row3(i-1) = [];
    end
end
for i = numel(row4):-1:2
    if i - 1 == 0
        break
    end
    if row4(i) == row4(i - 1)
        row4(i) = row4(i).*2;
        row4(i-1) = [];
    end
end
%NOW I NEED TO PAD ALL THE VECTORS AND VERTCAT THEM
row1 = padarray(row1,[0 4-length(row1)], 'pre');
row2 = padarray(row2,[0 4-length(row2)], 'pre');
row3 = padarray(row3,[0 4-length(row3)], 'pre');
row4 = padarray(row4,[0 4-length(row4)], 'pre');
newboard = [row1; row2; row3; row4];
newboard = addtwotile(newboard);