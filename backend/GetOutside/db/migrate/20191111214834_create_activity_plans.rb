class CreateActivityPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :activity_plans do |t|
      t.references :plan, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
