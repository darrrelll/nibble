class GroupsController << ApplicationController

  private
  def groups_params
  	params.require(:group).permit(:name, :section)
  end

end
