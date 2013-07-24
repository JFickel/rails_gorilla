class CreateSurveysQuestionsChoicesAndResponses < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.belongs_to :user
    end
    create_table :questions do |t|
      t.string :content
      t.belongs_to :survey
    end
    create_table :responses do |t|
      t.belongs_to :choice
      t.belongs_to :question
      t.belongs_to :user
    end    
    create_table :choices do |t|
      t.string :content
      t.belongs_to :question
    end
  end
end
