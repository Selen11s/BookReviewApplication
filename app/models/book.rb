class Book < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews



  has_attached_file :avatar, styles: { medium: "250x350>", thumb: "325x475>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


end
