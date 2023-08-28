class CreateIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :issues do |t|
      t.string :title
      t.string :url
      t.string :state
      t.string :assignee
      t.string :type
      t.references :repository, null: false, foreign_key: true

      t.timestamps
    end
  end
end
