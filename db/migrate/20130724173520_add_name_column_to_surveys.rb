class AddNameColumnToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :name, :string
  end
end
