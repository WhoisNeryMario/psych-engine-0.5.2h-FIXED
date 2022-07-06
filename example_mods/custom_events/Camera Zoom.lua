function onEvent(name, value1, value2)
    if name == 'Camera Zoom' then
	EVENT(value1,value2)
    end
end

function EVENT(a, b)
setProperty('defaultCamZoom',a)
--doTweenZoom('zoom', 'camGame', a, b, 'circInOut')
end