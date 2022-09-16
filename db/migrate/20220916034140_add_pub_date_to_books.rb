class AddPubDateToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :pub_date, :date
  end
end
