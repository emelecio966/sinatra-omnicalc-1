require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/howdy") do
  erb(:hello)
end 

get("/goodbye") do
   erb(:bye)
end

get("/square/new")do
   erb(:new_square_calc)
end

get("/square_new/results") do
  erb(:square_results)
end

get("/square_root/new") do
  erb(:new_square_root_calc)
end

get ("/square_root/results") do
   @the_num = params.fetch("users_number").to_f

  @the_result = @the_num **2

  erb(:square_results)
end

get("/payment/new") do

  erb(:new_payment_calc)
end

get ("/payment/results") do
  @apr = params.fetch("apr").to_f 
  @yrs_remain = params.fetch("yrs_remain").to_f
  @present_value = params.fetch("present_value").to_f
  @the_results = @the_num
  @r =(@apr / 100.0) /12.0
  @n = @yrs_remain + 12.0

 @numerator = (@r + @present_value)
 @denom = (1.0 - ((1.0 + @r)**-@n))
 @the_result = @numerator / @denom

   erb(:payment_results)
end

get ("/random/new") do
  erb(:new_random_calc)
end

get("/random/results") do

  erb(:random_results) 
end
