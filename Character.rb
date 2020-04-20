class Character

  attr_accessor :hp, :attack, :defence

  def initialize(hp:hp, attack:attack, defence:defence)
    self.hp = hp
    self.attack = attack
    self.defence = defence
  end

  def giveDamage(character)
    character.hp = character.hp - self.attack + character.defence
    if character.hp <= 0
      character.hp = 0
    end
  end
end
