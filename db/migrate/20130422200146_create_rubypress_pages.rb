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

# When rake rubypress:install:migrations is run, the following file will be created in the project:
#
# db/migrate/20130422200136_create_rubypress_pages.rubypress.rb
# This migration comes from rubypress (originally 20130422200146)
# class CreateRubypressPages < ActiveRecord::Migration
#   def change
#     create_table :rubypress_pages do |t|
#       t.string :name
#       t.string :path
#       t.string :content
#       t.timestamps
#     end
#   end
# end