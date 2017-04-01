class Image < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  has_attached_file :picture, styles: { large: '750x500>',medium: "400x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
