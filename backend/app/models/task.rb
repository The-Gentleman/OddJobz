class Task < ApplicationRecord
    belongs_to :user, class_name: "User", optional: true
    belongs_to :professional, class_name: "Professional", optional: true
end
