function onCreate()
makeLuaText('bruh','Play on Normal or Hard please.', 250,500,230);
setTextSize('bruh',0)
setObjectCamera('bruh','other');
addLuaText('bruh');
end

function EVENT(a, b)
if a == 'TEXT' then
setTextSize('bruh',b)
elseif a == 'DED' then
setProperty('health',0);
end

end
function onEvent(name, value1, value2)
    if name == 'What' then
	EVENT(value1, value2)
    end
end