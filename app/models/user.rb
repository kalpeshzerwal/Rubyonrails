class User < ApplicationRecord
	validates :email, presence: true
	before_validation do
    puts "hello,this before validated"
  end
  after_validation do
    puts "hello,this is after validate"
  end
  before_save do
  	puts "hello,this is for before save"
  end
  around_save do
  	puts "hello,this is for around save"
  end
  after_save do
      puts "hello,here is user details save after"
  end
  before_create do
  	puts "hello,here user is created before"
  end
  around_create do
  	puts "hello,here user is created around"
  end	
  after_create do
  	puts "hello,here user is created after"
  end	   
  after_commit do
      puts "user is sucrssfully created/commit"
  end
end
