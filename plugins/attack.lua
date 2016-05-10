do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = 212990316

  if matches[1] == "attack" then
    user = 'user#id'..user
  end

  -- The message must come from a chat group
  if msg.to.type == 'chat' then
    local chat = 'chat#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return "Heh"
  else 
    return 'This isnt a chat group!'
  end

end

return {
  description = "attack", 
  patterns = {
    "^[!/](attack)$"
  }, 
  run = run 
}

end
