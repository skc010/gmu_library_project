class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :reserved_on
      t.date :due_on
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
