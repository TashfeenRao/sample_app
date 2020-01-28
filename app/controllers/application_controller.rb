class ApplicationController < ActionController::Base
    def name
        render html: 'My name is Tashfeen I am learning rails'
    end
end
