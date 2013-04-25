class CreateIssueLists < ActiveRecord::Migration
  def change
    create_table :issue_lists do |t|

      t.timestamps
    end
  end
end
