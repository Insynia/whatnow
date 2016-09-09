class CreateWhatnowReviews < ActiveRecord::Migration
  def change
    create_table :whatnow_reviews do |t|
      t.string :url, index: true, null: false
      t.boolean :resolved, index: true, default: false
      t.text :uid, null: false
      t.text :comment, default: true
      t.timestamps
    end

    create_table :whatnow_review_replies do |t|
      t.belongs_to :whatnow_review
      t.text :comment, null: false
      t.timestamps
    end
  end
end