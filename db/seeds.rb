car_1 = Car.create(:make => "Honda", :model => "Odyssey", :year => "2010", :user_id => "2")
car_2 = Car.create(:make => "Toyota", :model => "Camry", :year => "2004", :user_id => "1")
car_3 = Car.create(:make => "Volkswagen", :model => "Golf", :year => "2014", :user_id => "2")
car_4 = Car.create(:make => "Mercedes", :model => "Benz", :year => "2015", :user_id => "1")

alicia = User.create(:full_name => "Alicia Maribel", :username => "mira", :password => "vacation")
charlie = User.create(:full_name => "Charlie Day", :username => "charlie", :password => "birthday")