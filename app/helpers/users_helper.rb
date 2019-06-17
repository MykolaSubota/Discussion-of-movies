module UsersHelper
	def avatar_for(user)
		if user.avatar?
			image_tag user.avatar
		else
			image_tag "avatar.png" 
		end
	end
end