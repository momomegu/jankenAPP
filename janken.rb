puts "じゃんけん..."

#じゃんけん
def janken
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  player_hand = gets.to_i
  #３までの乱数
  program_hand = rand(0..2)
  jankens = ["グー","チョキ","パー"]

  puts "ホイ！"
  puts "--------------"

  case player_hand
  when 0
    puts "あなた:グーを出しました"
  when 1
    puts "あなた:チョキを出しました"
  when 2
    puts "あなた:パーを出しました"
  when 3
    puts "あっち向いてホイを終了します"
    exit
  else
    puts "0~3までの数字を入力してください"
    puts "----------------"
    return true
  end

  case program_hand
  when 0
    puts "相手:グーを出しました"
  when 1
    puts "相手:チョキを出しました"
  when 2
    puts "相手:パーを出しました"
  when 3
    puts "あっち向いてホイを終了します"
    return
  else
    puts "0~3までの数字を入力してください"
    puts "----------------"
    return true
  end

  if player_hand == program_hand
    puts "あいこで..."
    janken
    return true
  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちですjanken"
    directions
  else
    puts "あなたの負け!janken"
    result_lose
  end
end



next_game = true

while next_game
  next_game = janken
end

#あっち向いてホイlose
def result_lose
  puts "あっち向いて〜lose"
  puts "0(上)1(下)2(左)3(右)"

  player_face = gets.to_i
  program_points = rand(0..3)
  
  direction = ["上","下","左","右"]

  puts "ホイ！" 
  puts "--------------------"
  puts "あなた:#{direction[player_face]}"
  puts "相手:#{direction[program_points]}"
  puts "--------------------"

  if player_face == program_points
    puts "あなたの負け！あっち"
  elsif 
    puts "引き分け〜..."
    janken
  end  
end


#あっち向いてホイwin
def directions
  puts "あっち向いて〜win"
  puts "0(上)1(下)2(左)3(右)"

  player_points = gets.to_i
  program_face = rand(0..3)
  
  direction = ["上","下","左","右"]

  puts "ホイ！" 
  puts "--------------------"
  puts "あなた:#{direction[player_points]}"
  puts "相手:#{direction[program_face]}"
  puts "--------------------"
 

  if player_points == program_face
    puts "あなたの勝ち！hoi"
    return false
  else
    puts "じゃんけん~~..."
    janken
    return false 
  end
end






next_game = true

while next_game = directions
end