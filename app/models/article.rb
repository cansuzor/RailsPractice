class Article < ApplicationRecord
    validates :title, presence: true
    #title must be present 
    validates :body, presence: true, length: {minimum: 10}
    #body must be minimum 10 characters long
end
