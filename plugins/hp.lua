﻿local cli_key = '+989216708235'
local function run(msg,matches)
    if is_sudo(msg) then
    local text = URL.escape(matches[2])
    local channel_id = matches[1]  
  local link_text = URL.escape(matches[3])
    local link = URL.escape(matches[4])
    local keyboard = '{"inline_keyboard":[[{"text":"'..link_text..'","url":"'..link..'"}]]}'
    local url = 'https://api.telegram.org/bot'..cli_key..'/sendMessage?chat_id='..channel_id..'&parse_mode=Markdown&text='..text..'&disable_web_page_preview=true&reply_markup='..keyboard
    local dat, res = https.request(url)
      if res == 400 then
         reply_msg(msg.id, 'Error !', ok_cb, true)    
         else
         reply_msg(msg.id, 'Sent !', ok_cb, true)    
      end
      end
  end
  return {
      patterns = {
          "^[!/#]channel (.*)+(.*)+(.*)+(.*)$"
          },
      run = run
  }
-- @specialteam_ch
-- tnx to beat bot
