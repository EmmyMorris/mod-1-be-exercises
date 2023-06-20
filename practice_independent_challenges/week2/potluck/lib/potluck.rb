class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_catgory(category)
    @dishes.find_all do |dish|
      dish.category == category
    end
  end

  def menu
    menu = {}
    @dishes.each do |dish|
      menu[dish.category] = get_all_from_catgory(dish.category).map do |dish|
        dish.name
      end
    end
    menu
  end

  def ratio(category)
    (get_all_from_catgory(category).count.to_f / @dishes.count.to_f) * 100
  end
end
