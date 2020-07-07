class Airline < ApplicationRecord
  has_many :reviews

  before_create :slugify
  # before_create http://blog-fred.logdown.com/posts/303186-before-action
  def slugify
    self.slug = name.parameterize
    # slug https://medium.com/@hartaniyassir/creating-slug-urls-in-rails-without-gems-c693e0eeec8a
    # parameterize https://apidock.com/rails/String/parameterize
  end
end
