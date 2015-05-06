class AddCitationToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :citation, :string
  end
end
