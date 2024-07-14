class Adminscolumns < ActiveRecord::Migration[7.0]
  def up
    add_column("admins","salary",:string)
  end
  def down
    remove_column("admins","salary")
  end
end
