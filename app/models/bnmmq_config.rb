class BnmmqConfig < ActiveRecord::Base
  validates :tel, presence: true, :numericality => true,:length => { :in => 1..15 }
  validates :email, confirmation: true, presence: true
end
