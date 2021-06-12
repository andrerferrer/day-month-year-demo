class AddVisitedOnToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :visited_on, :date
  end
end
