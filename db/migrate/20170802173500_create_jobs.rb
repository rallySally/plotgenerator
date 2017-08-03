class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
  def self.up
      Job.create(:name => "IT-Specialist")
      Job.create(:name => "Unemployed")
      Job.create(:name => "Doctor")
    end
    def self.down
      Job.delete_all()
    end
end
