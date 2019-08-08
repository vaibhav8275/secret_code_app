class CreateSecretCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :secret_codes do |t|
      t.string :secret_code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
