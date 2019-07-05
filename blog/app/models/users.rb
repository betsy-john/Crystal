class Users < ApplicationRecord
	validates :name, :presence => {:message=>"is required."}
  validates :email, :email => true   # provided by email_validator gem
  validates :email, :presence=>{:message=>"is required."}, :uniqueness => {:message => "address already in use."}
  validates :password, :presence=>{:message=>"is required."}
  validates :phone_number, :presence=>{:message=> "is required"}
end
