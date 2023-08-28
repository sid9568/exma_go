class SubCategory < ApplicationRecord
	belongs_to :category
	has_many :papper_donwloads
	enum program: {ug: "UG", pg: "PG"}
end
