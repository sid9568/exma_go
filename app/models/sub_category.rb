class SubCategory < ApplicationRecord
	belongs_to :category
	enum program: {ug: "UG", pg: "PG"}
end
