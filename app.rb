require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  erb(:hello)
end 

get("/goodbye") do
   erb(:bye)
end

get("/square/new") do
  erb(:new_square_calc)
end

get ("/square_root/results") do
   @the_num = params.fetch("users_number").to_f

  @the_result = @the_num **2

  erb(:square_results)
end

get ("/payment/results") do
  @apr = params.fetch ("apr").to_f
  @yrs_remain = params.fetch("yrs_remain").to_f
  @present_value = params.fetch("present_value").to_f
  
  @the_results = @the_num
  erb(:payment_results)
end


get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
