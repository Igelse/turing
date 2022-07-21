function my_drawdecision (w)

% randomizing position of choices
xpos = [300, 980]
r = randperm(2)
pos1 = xpos(r(1));
pos2 = xpos(r(2));


DrawFormattedText(w, 'Human', pos1, 'center', [255 255 255]);
DrawFormattedText(w, 'Robot', pos2, 'center', [255 255 255]);

%% response
key_set = {'RightArrow', 'LeftArrow'};

keyIsDown = false;
while keyIsDown == false | ismember(KbName(keyCode), key_set) == 0;
[keyIsDown, secs, keyCode, deltaSecs] = KbCheck;
end
response = KbName(keyCode); % unified key name
end
