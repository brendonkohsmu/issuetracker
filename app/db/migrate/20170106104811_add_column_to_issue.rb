class AddColumnToIssue < ActiveRecord::Migration[5.0]
  def change
  	add_column :issues, :IARecommendations, :text
  end
end
