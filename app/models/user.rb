class User < ActiveRecord::Base

attr_accessor :full_name

# Associations

# Validations
validates :first_name, :presence => true
validates :last_name, :presence => true
validates :password, length: { minimum: 6 }

# Callbacks
before_save :set_full_name

private

  def set_full_name
    self.full_name = "#{self.first_name} #{self.last_name}"
  end
end
