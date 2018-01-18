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

  def my_name
    input_name = params["query_name"]
    output_message = ""
    if input_name.upcase.starts_with?("A")
      output_message = "Hey, your name starts with A!"
    elsif 
      output_message = "Hey, your name doesn't start with an a! PHONEY"
    end 
    render json: {name: "#{input_name.upcase}", message: output_message}
  end 


end
