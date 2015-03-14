module Activable
  extend ActiveSupport::Concern

  included do
    scope :actifs, -> { where(actif: true) }
    scope :non_actifs, -> { where(actif: false) }
  end

  def activate!
    update(actif: true)
  end

  def desactivate!
    update(actif: false)
  end
end