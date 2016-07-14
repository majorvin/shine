class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.jsonb :text, null: false
      t.uuid :uuid, default: 'uuid_generate_v4()'
      t.text :question_type, null: false
      t.boolean :required, default: true
      t.boolean :encrypt, default: true
      t.boolean :placeholder, default: true
      t.integer :position

      t.timestamps
    end
  end
end
