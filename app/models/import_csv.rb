class ImportCsv < ApplicationRecord
  path = File.join Rails.root, "db/monster_csv_data/monster_csv_data.csv"

  list = []

  CSV.foreach(path, headers: true) do |row|
    list << {
      name: row["name"],
      tribe: row["tribe"]
    }
  end
  puts "インポートを開始"
  #インポートができなかった場合の例外処理
  begin
    Monster.create!(list)
    puts "インポート完了"
  rescue ActiveModel::UnknownAttirbuteError => invalid
    puts "インポートに失敗： UnknownAttirbuteError"
  end
end
