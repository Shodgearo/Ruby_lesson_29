class CreateBarbers < ActiveRecord::Migration[5.2]
  def change
  	create_table :barbers do |t|
  		t.text :name

  		t.timestamps
  	end

  	Barber.create :name => 'Howard Volovez'
  	Barber.create :name => 'Sheldon Cuper'
  	Barber.create :name => 'Emy Farafauler'
  end
end
