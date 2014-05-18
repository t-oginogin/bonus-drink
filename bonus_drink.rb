class BonusDrink
  BONUS_COUNT = 3.freeze

  class << self
    def total_count_for(amount)
      amount + bonus(amount)
    end

    private
    def bonus(amount)
      bonus_amount = (amount / BONUS_COUNT).floor
      rest = (amount % BONUS_COUNT) + bonus_amount
      bonus_amount += bonus(rest) if rest >= BONUS_COUNT
      bonus_amount
    end
  end
end
