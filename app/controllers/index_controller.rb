class IndexController < ApplicationController
    def index
        @profil = User.all
    end
end
