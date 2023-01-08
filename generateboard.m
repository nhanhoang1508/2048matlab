%This function creates an empty 4 by 4 matrix and places a single "2"
% in a random spot. There are many ways to do this, most of which are
% probably better than this, but I figure I might as well do it this way
% because it seems more organized to me at the moment.

function newboard = generateboard
newboard = zeros(4);
i = 0;
a = coordgen;
newboard(a(1),a(2)) = 2;
newboard = addtwotile(newboard);
end