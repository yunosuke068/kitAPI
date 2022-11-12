class CreateFacilities < ActiveRecord::Migration[7.0]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :map_url, comment: 'google map url'
      t.string :business_hour, comment: '営業時間'
      t.string :holiday, comment: '土日祝、年末年始（２F専用席および宿泊のご利用は無休）'
      t.string :postcode, comment: '郵便番号'
      t.string :address, comment: '住所'
      t.string :tel, comment: '電話番号'
      t.string :mail, comment: 'メール'
      t.string :url, comment: 'サイト'
      t.string :instagram, comment: 'インスタグラム'
      t.string :settlement, comment: '決済方法'

      t.timestamps
    end
  end
end
