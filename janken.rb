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
    return
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
    return true
  end
end

next_game = true

while next_game
  next_game = janken
end

#あっち向いてホイ
def direction
  puts "あっち向いて〜"
  puts "0(上)1(右)2(左)3(右)"

  player_direction = gets.to_i
  program_direction = rand(0..3)
  
  puts "ホイ！" 
  puts "-------------"
  
  case player_direction
  when 0
    puts "あなた:上"
  when 1
    puts "あなた:下"
  when 2
    puts "あなた:左"
  when 3
    puts "あなた:右"
  else
    puts "0~3までの数字を入力してください"
  end

  case program_direction
  when 0
    puts "相手:上"
  when 1
    puts "相手:下"
  when 2
    puts "相手:左"
  when 3
    puts "相手:右"
  else
    puts "0~3までの数字を入力してください"
  end
  puts "------------------"

  if player_direction != program_direction
    return true
  else
    puts "引き分け!また挑戦してください"  
  end
end

next_game = true

while next_game = direction
end