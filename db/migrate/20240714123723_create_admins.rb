class CreateAdmins < ActiveRecord::Migration[7.0]
  def up
    create_table :admins do |t|
      t.string "first_name", :limit=>25,:null=>false
      t.string "last_name", :limit=>25
      t.integer "age", :default=>18
      t.datetime "person_dob"
      t.timestamps
    end

    def down
      drop_table:admins
    end
  end
end
