module UsersHelper
	def avatar_for(user, id)
		if user.avatar?
			image_tag user.avatar, id
		else
			image_tag "avatar.png" 
		end
	end
end