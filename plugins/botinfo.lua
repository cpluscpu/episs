do
    function run(msg, matches)
        
  local text = [[
🚀 `DiMoN is best bot`

a Persian bot for Iranian 🇮🇷

Sudo : @MasTerPoKeR

Bot id : https://telegram.me/dimon_tg

]]
    return text
  end
end 

return {
  description = "about for bot.  ", 
  usage = {
    "Show bot about.",
  },
  patterns = {
    "^[!/]([Dd]imon)$",
  }, 
  run = run,
}
