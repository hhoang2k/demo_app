class CreateMicrobloggings < ActiveRecord::Migration
  def change
    create_table :microbloggings do |t|
      t.string :name
      t.string :email
      t.string :contents

      t.timestamps
    end
  end
end
