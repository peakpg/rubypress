# db/migrate/20130422200146_create_rubypress_pages.rb
class CreateRubypressPages < ActiveRecord::Migration
  def change
    create_table :rubypress_pages do |t|
      t.string :name
      t.string :path
      t.string :content
      t.timestamps
    end
  end
end
