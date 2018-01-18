Rails.application.routes.draw do
  get "/guess" => "params_example#query"
  get "/my_name" => "params_example#my_name"
end
