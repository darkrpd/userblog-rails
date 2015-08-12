class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :genre, inclusion:{ in: %w(horror adventure),
    message: "%{value} is not a valid" }

  validates :pages,  numericality: { greater_than: 20 }
end
