class ToppagesController < ApplicationController
  def index
    @bands = Band.order('updated_at DESC')
  end
end
