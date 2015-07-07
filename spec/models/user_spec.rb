require 'rails_helper'

describe User do
  it { should validate presence_of :name }
end
