class Category < ApplicationRecord
	has_many :sub_categories
	enum university_name: { ccsuniversity: "ccs university", mashakumabriuniversity: "ma shakumabri university",  }
end
