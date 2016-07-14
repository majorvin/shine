class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.string :name, null: false
      t.uuid :uuid, default: 'uuid_generate_v4()'

      t.timestamps
    end
  end
end
