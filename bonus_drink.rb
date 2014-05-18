class BonusDrink
  BONUS_COUNT = 3.freeze

  def self.total_count_for(amount)
    amount + self.bonus(amount)
  end

  def self.bonus(amount)
    bonus_amount = (amount / BONUS_COUNT).floor
    rest = (amount % BONUS_COUNT) + bonus_amount
    bonus_amount += self.bonus(rest) if rest >= BONUS_COUNT
    bonus_amount
  end
end
