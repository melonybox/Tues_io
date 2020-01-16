class User < ApplicationRecord
    has_many :tasks
    has_many :projects, through: :tasks
    has_many :projects_created, :class_name => 'Project', :foreign_key => 'owner_id'

    has_secure_password
end
