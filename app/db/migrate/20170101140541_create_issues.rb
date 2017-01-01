class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.text :issueno
      t.text :fy
      t.text :project
      t.text :risk
      t.text :status
      t.text :controlarea
      t.text :description
      t.date :duedate
      t.text :actionowner
      t.text :lob

      t.timestamps
    end
  end
end
