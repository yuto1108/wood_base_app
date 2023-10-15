Rails.application.routes.draw do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
        get "/"                => "hoge#index"
        get "/interior"        => "hoge#interior"
        get "/headlight"       => "hoge#headlight"
        get "/wheel"           => "hoge#wheel"
        get "/indoor_cleaning" => "hoge#indoor_cleaning"
    # Defines the root path route ("/")
    # root "articles#index"
end
