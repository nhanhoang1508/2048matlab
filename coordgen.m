%Generates random coordinates (to be used to add 2-tiles and generate new boards)
function a = coordgen
i = 0;
while i == 0
    i = round((randi([1 16])/4));
end
j = 0;
while j == 0
    j = round((randi([1 16])/4));
end
a = [i j];
end