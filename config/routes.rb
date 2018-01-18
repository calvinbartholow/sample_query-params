Rails.application.routes.draw do
  get "/guess" => "params_example#query"
end
