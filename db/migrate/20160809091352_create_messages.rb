# a migration file create and change  a SQL database
# rake db:migrate command writes a scheme in db:schema.rb
# rake db:migrate command also creates a table in a SQL database

class CreateMessages < ActiveRecord::Migration
  def change

    # create_table method creates a messages table
    create_table :messages do |t|
      t.string :name
      t.string :body

      # records when a record is created, or updated
      # null is not allowed
      t.timestamps null: false
    end
  end
end
