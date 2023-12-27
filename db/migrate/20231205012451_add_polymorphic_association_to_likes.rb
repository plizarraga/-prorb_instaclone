class AddPolymorphicAssociationToLikes < ActiveRecord::Migration[7.0]
    def change
    change_table :likes do |t|
      t.remove :post_id
      t.references :likeable, polymorphic: true, index: true
    end
  end
end
