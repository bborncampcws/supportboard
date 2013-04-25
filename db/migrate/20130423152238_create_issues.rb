class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :position
      t.text :desc
      t.integer :issue_list_id

      t.timestamps
    end
  end
end
