class CreateSnippets < ActiveRecord::Migration[5.1]
  def change
    create_table :snippets do |t|
      t.string :name
      t.string :group_name
      t.boolean :draft
      t.string :compatibility
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
