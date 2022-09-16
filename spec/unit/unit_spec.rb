# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: '19.99', pub_date: "2000/01/01")
  end

  it 'title is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'title is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: '19.99', pub_date: "2000/01/01")
  end

  it 'author is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'author is not valid without a name' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: '19.99', pub_date: "2000/01/01")
  end

  it 'price is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'price is not valid without a name' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: '19.99', pub_date: "2000/01/01")
  end

  it 'pub_date is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'pub_date is not valid without a name' do
    subject.pub_date = nil
    expect(subject).not_to be_valid
  end
end