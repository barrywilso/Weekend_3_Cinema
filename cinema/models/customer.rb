require_relative("../db/sql_runner")

class Customer

  attr_reader :id
  attr_accessor :first_name, :last_name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
  end

  def save()
    sql = "INSERT INTO customers (first_name, last_name) VALUES ($1, $2) RETURNING id"
    values = [@first_name, @last_name]
    customers = SqlRunner.run(sql, values).first
    @id = customers['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM customers"
    customers = SqlRunner.run(sql)
    return customers.map {|customer| Customer.new(customer)}
  end

end
