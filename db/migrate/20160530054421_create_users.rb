class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :msisdn
      t.string :uuid
      t.boolean :verified
    end
  end
end
