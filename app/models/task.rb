class Task < ActiveRecord::Base
  state_machine :state, initial: :inactive do
    event :enable do
      transition inactive: :active
    end

    event :disable do
      transition active: :inactive
    end
  end
end
