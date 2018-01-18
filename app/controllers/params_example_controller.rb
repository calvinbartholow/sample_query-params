class ParamsExampleController < ApplicationController

  def query
    message = params["first_guess"]
    if message != nil
      if message.to_i == 36 
        render json: {message: "YOU WIN!"}
      end 
      if message.to_i > 36 
        render json: {message: "GUESS LOWER"}
      end 
      if message.to_i < 36 
        render json: {message: "GUESS HIGHER"}
      end 
    else 
      render json: {message: "GUESSS A QUERY"}
    end 
  end 


end
