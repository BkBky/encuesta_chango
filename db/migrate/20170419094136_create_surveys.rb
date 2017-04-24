class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.belongs_to :user, index: true
      t.integer :responder_id
      t.string :survey
      t.timestamps  
    end
  end
end
