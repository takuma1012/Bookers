Rails.application.routes.draw do
	resources :blogs

	get '/top' => "blogs#top"
	get '/detail/:id' => "blogs#detail", as: 'show'
end
