class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order(:full_name)
  end

  def missing_email
    #@customers = Customer.all.where('email IS NULL')
    @customers = Customer.all.where(email: '')
  end
end
