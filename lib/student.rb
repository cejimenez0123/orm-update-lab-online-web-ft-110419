require_relative "../config/environment.rb"

class Student
  attr_accessor :name, :grade
  attr_reader :id
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def initialize(id=nil,name,grade)
    @name = name
    @grade = grade
    @id = id
  end
  def self.create_table
    sql = <<-SQL 
     CREATE TABLE IF NOT EXISTS students (name,grade)
    SQL
    DB[:conn].execute(sql)
  end
end
