require 'rails_helper'

RSpec.describe Person, type: :model do
  subject { build(:person) }
  # before { @person = FactoryBot.build(:person) }

  it { expect(subject).to respond_to(:full_name)  }
  it { expect(subject).to be_valid  }
end
