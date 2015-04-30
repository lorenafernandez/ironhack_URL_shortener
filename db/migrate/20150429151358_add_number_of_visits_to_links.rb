class AddNumberOfVisitsToLinks < ActiveRecord::Migration
  def change
  	add_column :links, :number_of_visits, :integer, :default => 0
  end
end
