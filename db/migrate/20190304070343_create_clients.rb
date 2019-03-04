class CreateClients < ActiveRecord::Migration[5.2]
  def change
  	create_table :client do |t|
  		t.text :name
  		t.text :phone
  		t.text :date
  		t.text :date
  		t.text :color

  		t.timestamps
  	end
  end
end
