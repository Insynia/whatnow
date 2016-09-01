class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :url, index: true, null: false
      t.boolean :resolved, index: true, default: false
      t.text :uid, null: false
      t.text :comment, default: true
      t.timestamps
    end

    create_table :review_replies do |t|
      t.column :parent_id, index: true
      t.reference :review, foreign_key: true
      t.text :comment, null: false
      t.timestamps
    end
  end
end