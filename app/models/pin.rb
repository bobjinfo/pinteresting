class Pin < ActiveRecord::Base
	belongs_to :user
has_attached_file :image, :styles => {:thumb => 'x100', :croppable => '600x600>', :big => '1000x1000>'}
	#has_attached_file:image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
#validates_attachment :image, :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/gif", "image/png"] }
#validates_attachment_content_type :image, content_type: /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)/
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
#validates_something_else # Other validations that conflict with Paperclip's
#:content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end