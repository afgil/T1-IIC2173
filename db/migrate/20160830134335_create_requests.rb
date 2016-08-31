class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :ip
      t.datetime :date

      t.timestamps null: false
    end
  end
end
