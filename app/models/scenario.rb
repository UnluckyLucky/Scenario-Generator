class Scenario < ActiveRecord::Base
  serialize :scenario_hash

  validates :uuid, presence: true, uniqueness: true
  validates :scenario_hash, presence: true
  validates :game, presence: true

  before_validation :assign_uuid, on: :create

  private

    def assign_uuid
      puts 'generating uuid'
      possible_uuid = SecureRandom.uuid

      while Scenario.find_by(uuid: possible_uuid)
        possible_uuid = SecureRandom.uuid
      end

      self.uuid = possible_uuid
      puts self.uuid
    end

end
