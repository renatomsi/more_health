require 'rails_helper'

RSpec.describe Address, type: :model do
  # subject { build(:address) }

  # it { expect(subject).to respond_to(:cep)  }
  # it { expect(subject).to be_valid  }
  it { is_expected.to respond_to(:uf) }
end
