FactoryGirl.define do

  factory :episode do
    name         'Foo Bar'
    description  'Lorem'
    notes        'Ipsum'
    seconds      600
    published_at Time.now
  end

  factory :tag do
    name "Bar"
  end

  factory :comment do
    content  'Hello world.'
    episode { |c| c.association(:episode) }
    user { |c| c.association(:user) }
  end

  factory :user do
    name "Foo Bar"
    sequence(:github_username) { |n| "foo#{n}" }
    sequence(:github_uid) { |n| "#{n}" }
    sequence(:email) { |n| "foo#{n}@example.com" }
    email_on_reply true
  end

  factory :feedback_message do
    name "Foo Bar"
    content "Hello World"
    sequence(:email) { |n| "foo#{n}@example.com" }
  end

end