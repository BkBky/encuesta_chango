class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.belongs_to :user, index: true
      t.belongs_to :answer, index: true
      t.belongs_to :survey, index: true
      t.timestamps  
    end
  end
end
