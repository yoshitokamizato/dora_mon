require "csv"

class Boss < ApplicationRecord

  def self.import_csv
    list = []
    CSV.foreach("db/csv_data/boss_data.csv" , headers: true) do |boss|
      list << {
        name: boss["name"],
        tribe: boss["tribe"]
      }

      # puts "#{boss}を読み込み"
    end
    self.create!(list)
  end

  # def self.delete_all(password)
  #   if password == "delete"
  #     Boss.delete_all
  #   end
  # end

end
