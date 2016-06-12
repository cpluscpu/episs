do
 function run(msg, matches)
 local reply_id = msg['id']
 local text = 'nerkh'
 local text1 ="  قيمت گروه هاي آنتي اسپم :\n\n\n  ماهيانه سوپرگروه 3000 تومان\n  دو ماهه سوپرگروه6000 تومان\n   سه ماهه سوپرگروه 9000 تومان\n\n —-----------------------------\n\n سفارش : @MaStErPoKeR"
   reply_msg(reply_id, text1, ok_cb, false)
 end
 return {
  description = "!nerkh",
  usage = " !nerkh",
  patterns = {
    "^[#/!][Nn]erkh$",
  },
  run = run
}
end
