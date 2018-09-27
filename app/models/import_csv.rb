class ImportCsv < ApplicationRecord

  #CSVデータのパスを引数として受け取り、インポート処理を実行
  def self.monsters_data
    # インポートするファイルのパスを取得
    path = File.join Rails.root, "db/monster_csv_data/monster_csv_data.csv"
    # [] == array
    list = []
    # CSVファイルからインポートするデータを取得して、配列[]に格納
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
end
