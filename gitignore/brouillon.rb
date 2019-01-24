@boardcase_array.each do |case_user|
			if case_user.value != ""
				puts "La partie est terminée"


				@boardcase_array = []
		9.times{@boardcase_array << BoardCase.new}