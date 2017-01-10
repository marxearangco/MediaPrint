class Image < ActiveRecord::Base
	belongs_to :particular, :dependent => :destroy
	has_attached_file :image, styles: { medium: "300x300>", thumb: "120x120#" }, default_url: "/images/thumb/no-image.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
