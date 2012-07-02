class CreateArtifacts < ActiveRecord::Migration
  def change
    create_table :artifacts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
