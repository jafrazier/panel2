class AddCredToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :password_digest, :string
    add_column :instructors, :email, :string
    add_column :instructors, :admin, :boolean , default: false
  end
end
