class Post < ActiveRecord::Base
    enum mealtype: [:Breakfast, :Lunch, :Dinner, :Snack]
    validates_presence_of :title
    validates_presence_of :ingredients
    validates_presence_of :steps
    before_validation :preval
    private
  def preval
    if self.title
      self.title = self.title.strip
    end
end
end