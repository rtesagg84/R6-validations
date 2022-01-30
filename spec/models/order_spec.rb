require 'rails_helper'

RSpec.describe Order, type: :model do
  subject { Order.new(product_name: "milk", product_count: 5, customer: FactoryBot.create(:customer))}
  it "is valid with valid attributes" do
  expect(subject).to be_valid
  end
  it "is not valid without a product_name"  do
    subject.product_name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a product_count"  do
    subject.product_count=nil
    expect(subject).to_not be_valid
  end
end
