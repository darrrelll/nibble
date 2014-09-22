class LunchesController << ApplicationController


	private
	def lunch_params
  	params.require(:lunch).permit(:name, :proposed_date, :location, :google_map_link)
  end

end
