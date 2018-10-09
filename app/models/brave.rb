class Brave < ApplicationRecord

  def self.braves_data
    path = File.join Rails.root, "db/brave_csv_data/brave_csv_data.csv"
    list = []
    CSV.foreach(path,headers: true) do |brave|
      list << {
        name: brave["name"],
        level: brave["level"],
        hp: brave["hp"],
        mp: brave["mp"]
      }
    end
    puts "インポート処理を開始"
    begin
      Brave.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end
end
