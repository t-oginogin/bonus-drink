class BonusDrink
  BONUS_COUNT = 3

  class << self
    def total_count_for(amount)
      amount + bonus(amount)
    end

    private
    def bonus(amount, total_bonus = 0)
      bonus_amount, rest = amount.divmod(BONUS_COUNT)
      rest_amount = rest + bonus_amount
      rest_amount >= BONUS_COUNT ? bonus(rest_amount, total_bonus + bonus_amount) : total_bonus + bonus_amount
    end
  end
end
