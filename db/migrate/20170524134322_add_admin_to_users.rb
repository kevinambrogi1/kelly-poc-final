# frozen_string_literal: true

# Missing top-level class documentation comment
class AddAdminToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin, :boolean, null: false, default: false
  end
end
