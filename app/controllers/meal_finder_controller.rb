class MealFinderController < ApplicationController
  def index
    @meal ||= {}
    @meals ||= []
  end
end
