class CreateBnmmqConfigs < ActiveRecord::Migration
  def change
    create_table :bnmmq_configs do |t|
      t.string :email 
      t.string :tel
      t.timestamps
    end
  end
end
