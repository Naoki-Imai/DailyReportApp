class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :username, :teacher, :place
      t.text :body, :target
      t.date :date
      t.timestamps
    end
  end
end
