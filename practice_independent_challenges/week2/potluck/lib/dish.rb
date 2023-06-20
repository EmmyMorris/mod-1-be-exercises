class Dish
  attr_reader :name, :category

  def initialize(name, category)
    @name = name
    @category = category.to_sym
  end
end