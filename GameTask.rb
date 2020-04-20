require_relative "./Character"
require_relative "./Hero"
require_relative "./Monster"

hero = Hero.new(hp:100, attack:20, defence:5)
monster = Monster.new(hp:50, attack:10, defence:5)

puts "ゲームを開始します。1を押してEnterしてください。"

start = gets.chomp.to_i
if start == 1
  while hero.hp > 0 && monster.hp >0
    puts "勇者はどうする？"
    puts "攻撃なら1を、茫然自失とするなら2を押してEnterしてください。"
    choice = gets.chomp.to_i
    #攻撃時の処理
    if choice == 1
      hero.giveDamage(monster)
      puts "勇者の攻撃！"
      puts "モンスターのHPが#{monster.hp}になった。"
      if monster.hp == 0
        break
      end
    elsif choice == 2
      puts "勇者は何もしていない。"
    end
    #攻撃される時の処理
    monster.giveDamage(hero)
    puts "モンスターの攻撃！"
    puts "勇者のHPが#{hero.hp}になった。"
  end
  #ゲーム終了時の処理
  if hero.hp == 0
    puts "勇者は力尽きた。"
    puts "世界は滅びた。"
  elsif monster.hp == 0
    puts "モンスターは斃れた。"
    puts "しかし世の中には依然として魑魅魍魎が跋扈しているのであった。"
    puts "結局世界は滅びた。"
  end
end
