class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :code
      t.string :access_token
      t.string :refresh_token

      t.timestamps null: false
    end
  end
end
