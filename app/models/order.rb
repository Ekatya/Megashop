# -*- coding: utf-8 -*-

class Order < ActiveRecord::Base

has_many :items, dependent: :destroy

validates :user_name, :adress, presence: true 
validates :email, :format => {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "неверный формат" }, :uniqueness => true

end
