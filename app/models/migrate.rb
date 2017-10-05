Sequel.migration do                           # class AddImageDataToPhotos < ActiveRecord::Migration
  change do                                   #   def change
    add_column :photos, :image_data, :text    #     add_column :photos, :image_data, :text
  end                                         #   end
end                                           # end
