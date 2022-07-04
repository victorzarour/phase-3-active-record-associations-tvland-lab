require 'pry'
class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        actors.map do |a|
            "#{a.first_name} #{a.last_name}"
        end
        # binding.pry
    end
end