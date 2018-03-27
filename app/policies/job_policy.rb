# frozen_string_literal: true

class JobPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
end
