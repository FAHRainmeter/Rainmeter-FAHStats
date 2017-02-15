function FormatNumber(varName, inNum, sepChar, decChar)
 
  local outNum = inNum
  local replaceCount = 0
 
  outNum = outNum:gsub('^(.-)%D(.-)$', '%1'..decChar..'%2')
 
  while true do
    outNum, replaceCount = outNum:gsub('^(-?%d+)(%d%d%d)', '%1'..sepChar..'%2')
    if (replaceCount == 0) then
      break
    end
  end
 
  SKIN:Bang('!SetVariable', varName, outNum)
 
end