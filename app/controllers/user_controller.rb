class UserController < ApplicationController

  def voted_for?(@animal)
    evaluations.where(target_type: animal.name, target_id: animal_id).present?
  end

end
