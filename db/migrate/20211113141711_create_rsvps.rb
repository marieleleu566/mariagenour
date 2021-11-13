class CreateRsvps < ActiveRecord::Migration[6.0]
  def change
    create_table :rsvps do |t|
      t.string :guestonefirst
      t.string :guestonelast
      t.string :guesttwofirst
      t.string :guesttwolast
      t.string :children
      t.string :restrictions
      t.string :attending
      t.timestamps
    end
  end
end
