require 'spec_helper'

describe User do
  it { should have_many :watches }
  it { should have_many(:movies).through(:watches) }
end
