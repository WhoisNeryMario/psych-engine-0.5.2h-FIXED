function onEvent(name, value1, value2)
    if name == '1stPrize' then
	EVENT(value1, value2)
    end
end

function EVENT(a,b)
   if curStep == 701 then
          doTweenX('prizeSPEED', 'prize', 2000, 0.8, 'linear');
   elseif curStep == 707 then
          doTweenX('bfTweenPositionX', 'boyfriend', 2000, 0.2, 'linear');
   end
-- the end part
   -- 1st prize
   if curBeat == 191 then
          setProperty('school.visible', false);
   elseif curBeat == 192 then
          setCharacterX('boyfriend');
          addLuaSprite('prize2', false);
          objectPlayAnimation('school2','state1', false);
          triggerEvent('Change Character', 'boyfriend', 'pushed-bf-3d')
          triggerEvent('Change Character', 'dad', 'bestboiicons')
          setProperty('school.visible', false);
	  setProperty('school2.visible', true);
   elseif curBeat == 327 then
        objectPlayAnimation('school2','state2', false);
   elseif curBeat == 328 then
        triggerEvent('Change Character', 'boyfriend', 'bf-3d')
        setProperty('boyfriend.flipX', false);
          doTweenX('bfTweenPositionX', 'boyfriend', 920, 0.00001, 'linear');
   end
end
-- gotta sweep is replaced to make sense because bf gets pushed to baldi and doesn't die.
-- 1st prize however doesn't push any other character besides the player.
function onCreate()
         -- cache stuff! yay!
         addCharacterToList('bestboiicons', 'dad')

         makeLuaSprite('prize2', '1st-prize', 300, 215);
         scaleObject('prize2', 3, 3);

	makeAnimatedLuaSprite('school2', 'SCHOOL-SPEEDING', -570, -290);
        addAnimationByPrefix('school2', 'state1', 'SCHOOL-SPEEDING idle0', 12, true);
        addAnimationByPrefix('school2', 'state2', 'SCHOOL-SPEEDING bang0', 24, false);
	scaleObject('school2', 2, 2);
	setScrollFactor('school2', 1.1, 1.2);
	setProperty('school2.visible', false);

	addLuaSprite('school2', false);
end