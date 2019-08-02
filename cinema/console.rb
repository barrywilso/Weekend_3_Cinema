require_relative('models/film.rb')
require_relative('models/customer.rb')
require_relative('models/ticket.rb')
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

ticket1 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer1.id})
ticket2 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer2.id})
ticket3 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer3.id})
ticket4 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer1.id})
ticket5 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer3.id})
ticket6 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer1.id})

ticket1.save()
ticket2.save()
ticket3.save()
ticket4.save()
ticket5.save()
ticket6.save()

binding.pry
nil
