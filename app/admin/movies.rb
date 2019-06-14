ActiveAdmin.register Movie do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :title, :description, :genre, :image, movie_gallery: []
form do |f|
  f.inputs do
  	f.input :title
  	f.input :description
  	f.input :genre
  	f.input :image
    f.input :movie_gallery, as: :file, input_html: { multiple: true }
  end
  f.actions
end
end

