class Post < ActiveRecord::Base
  
  validates :title,  :presence => true
  has_attached_file :photo,
                    :url => "/assets/:id/:style/:basename.:extension",
                    :path => ":rails_root/app/assets/images/:id/:style/:basename.:extension"
                    
  before_validation :clear_photo
   
  def delete_photo=(value)
    @delete_photo = !value.to_i.zero?
  end

  def delete_photo
    !!@delete_photo
  end
  alias_method :delete_photo?, :delete_photo

  def clear_photo
    self.photo = nil if delete_photo?
  end
end
