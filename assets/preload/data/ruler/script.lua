-- gotta sweep is replaced to make sense because bf gets pushed to baldi and doesn't die.
-- 1st prize however doesn't push any other character besides the player.
function onCreate()
         -- cache stuff! yay!

         addCharacterToList('pushed-bf-3d', 'boyfriend')
         addCharacterToList('run-bf', 'boyfriend')
         addCharacterToList('run-baldi', 'dad')
         addCharacterToList('angry-baldi3', 'dad')
         addCharacterToList('bestboiicons', 'dad')

         -- makeLuaSprite('sweep', 'sweep', 2000, 210);
         -- scaleObject('sweep', 2.5, 2.5);
         -- addLuaSprite('sweep', false);

         makeLuaSprite('prize', '1st-prize', -1500, 215);
         scaleObject('prize', 3, 3);
         addLuaSprite('prize', false);


        makeLuaSprite('priee', '1st-prize', 300, 215);
        scaleObject('priee', 3, 3);
        setScrollFactor('priee', 1, 1);
	setProperty('priee.visible', false);

	makeAnimatedLuaSprite('school2', 'SCHOOL-SPEEDING', -570, -290);
        addAnimationByPrefix('school2', 'state1', 'SCHOOL-SPEEDING idle0', 12, true);
        addAnimationByPrefix('school2', 'state2', 'SCHOOL-SPEEDING bang0', 24, false);
	scaleObject('school2', 2, 2);
	setScrollFactor('school2', 1.1, 1.2);
	setProperty('school2.visible', false);
	

	makeAnimatedLuaSprite('school2d', 'school_2d', -690, -290);
        addAnimationByPrefix('school2d', 'state1', 'school_2d idle0', 24, true);
	scaleObject('school2d', 1.5, 1);
	setScrollFactor('school2d', 1.1, 1.2);
	setProperty('school2d.visible', false);

	addLuaSprite('school2d', false);

	addLuaSprite('school2', false);

        addLuaSprite('priee', false);
end
function onStepHit()
   if curStep == 701 then
          doTweenX('prizeSPEED', 'prize', 2000, 0.8, 'linear');
   elseif curStep == 707 then
          doTweenX('bfTweenPositionX', 'boyfriend', 2000, 0.2, 'linear');
   end
-- dang epic 2d moment
   if curStep == 256 then
	setProperty('school2d.visible', true);
        triggerEvent('Change Character', 'boyfriend', 'run-bf')
        triggerEvent('Change Character', 'dad', 'run-baldi')
   elseif curStep == 383 then
	setProperty('school2d.visible', false);
        triggerEvent('Change Character', 'boyfriend', 'bf-3d')
        triggerEvent('Change Character', 'dad', 'angry-baldi3')
   end
end
function onBeatHit()
   if curBeat == 0 then 
          doTweenX('baldiTweenPositionX', 'dad', -3500, 0.1, 'linear');
   elseif curBeat == 4 then 
          doTweenX('baldiTweenPositionX', 'dad', -3000, 0.1, 'linear');
   elseif curBeat == 8 then 
          doTweenX('baldiTweenPositionX', 'dad', -2500, 0.1, 'linear');
   elseif curBeat == 12 then 
          doTweenX('baldiTweenPositionX', 'dad', -2000, 0.1, 'linear');
   elseif curBeat == 16 then 
          doTweenX('baldiTweenPositionX', 'dad', -1500, 0.1, 'linear');
   elseif curBeat == 20 then 
          doTweenX('baldiTweenPositionX', 'dad', -1000, 0.1, 'linear');
   elseif curBeat == 24 then 
          doTweenX('baldiTweenPositionX', 'dad', -500, 0.1, 'linear');
   elseif curBeat == 28 then 
          doTweenX('baldiTweenPositionX', 'dad', 0, 0.1, 'linear');
   end
-- the end part
   if curBeat == 176 then 
          doTweenX('baldiTweenPositionX', 'dad', 500, 0.1, 'linear');
   elseif curBeat == 178 then
          doTweenX('baldiTweenPositionX', 'dad', 1000, 0.1, 'linear');
   elseif curBeat == 180 then
          doTweenX('baldiTweenPositionX', 'dad', 1500, 0.1, 'linear');
   elseif curBeat == 182 then
          doTweenX('baldiTweenPositionX', 'dad', 2000, 0.1, 'linear');
   elseif curBeat == 184 then
          doTweenX('baldiTweenPositionX', 'dad', 2500, 0.1, 'linear');
   elseif curBeat == 186 then
          doTweenX('baldiTweenPositionX', 'dad', 3000, 0.1, 'linear');
   elseif curBeat == 188 then
          doTweenX('baldiTweenPositionX', 'dad', 3500, 0.1, 'linear');
   elseif curBeat == 190 then
          doTweenX('baldiTweenPositionX', 'dad', 4000, 0.1, 'linear');
   end
   -- 1st prize
   if curBeat == 191 then
          setProperty('school.visible', false);
   elseif curBeat == 192 then
          setCharacterX('boyfriend');
          --addLuaSprite('prize2', false);
          objectPlayAnimation('school2','state1', false);
          triggerEvent('Change Character', 'boyfriend', 'pushed-bf-3d')
          triggerEvent('Change Character', 'dad', 'bestboiicons')
	  setProperty('school2.visible', true);
          setProperty('priee.visible', true)
   elseif curBeat == 327 then
        objectPlayAnimation('school2','state2', false);
   elseif curBeat == 328 then
        triggerEvent('Change Character', 'boyfriend', 'bf-3d')
        setProperty('boyfriend.flipX', false);
          doTweenX('bfTweenPositionX', 'boyfriend', 920, 0.00001, 'linear');
   end
end