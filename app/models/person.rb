class Person < ApplicationRecord
  belongs_to :user
  scope :missing_persons, ->(user) { where(user:user, missing: true)}
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png", :storage => :cloudinary, :path => ':id/:style/:filename'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

# search method here
# install rspec
# academic channel - instructions to install rspec
# create first test, a mode test for the person model
# test that calls search function and returns some result
#
#end

  def search_for_missing_person
    []
    Person.where(:name => name, :town => town).where.not(:id => id)#after_create

  end
end
