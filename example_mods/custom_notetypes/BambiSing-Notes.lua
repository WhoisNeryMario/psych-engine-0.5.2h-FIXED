function onCreate()
addCharacterToList('DRIVING-Bambi');
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'BambiSing-Notes' then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'BAMBI_assets');
if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
end
end
end
end
function goodNoteHit(id,noteData,noteType,isSustainNote)
if noteType == 'BambiSing-Notes' then
triggerEvent('Change Character', 0, 'DRIVING-Bambi');
end
end