class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.string :body
    end
  end
end
