class CreateImpressions < ActiveRecord::Migration[5.1]
  def change
    create_table :impressions do |t|
      t.text :body
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
