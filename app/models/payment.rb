class Payment < ApplicationRecord
  include Roundable
  include WithAmount

  belongs_to :loan, counter_cache: true

  validates :amount_cents,
            presence: true,
            numericality: { only_integer: true }
end
