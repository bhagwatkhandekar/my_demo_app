class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      # t.string :firsr_name
      # t.string :string,
      # t.string :last_name
      # t.string :string,
      # t.string :email
      # t.string :string,
      # t.string :address
      # t.string :string

      t.timestamps
    end
  end
end
