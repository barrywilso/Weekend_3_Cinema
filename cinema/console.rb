require_relative('models/film.rb')
require_relative('models/customer.rb')

require('pry-byebug')

customer1 = Customer.new({
  'first_name' => 'Barry',
  'last_name' => 'Wilson'
})

customer1.save()

customer2 = Customer.new({
  'first_name' => 'Gregor',
  'last_name' => 'Johnstone'
})

customer2.save()

customer3 = Customer.new({
  'first_name' => 'Paul',
  'last_name' => 'Houston'
})

customer3.save()

film1 = Film.new({
  'title' => 'Return of the Jedi',
  'price' => 5
})

film1.save()

film2 = Film.new({
  'title' => 'Bladerunner',
  'price' => 6
})

film2.save()

film3 = Film.new({
  'title' => 'Arrival',
  'price' => 10
})

film3.save()

binding.pry
nil
