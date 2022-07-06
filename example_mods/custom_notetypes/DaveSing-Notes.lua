function onCreate()
addCharacterToList('DRIVING-Dave');
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'DaveSing-Notes' then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'DAVE_assets');
if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
end
end
end
end
function goodNoteHit(id,noteData,noteType,isSustainNote)
if noteType == 'DaveSing-Notes' then
triggerEvent('Change Character', 0, 'DRIVING-Dave');
end
end