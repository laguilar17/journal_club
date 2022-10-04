FactoryBot.define do
  factory :journal do
    journal_name {"String of characters"}
    journal_link {"String of characters"}

    trait :valid do
      journal_name {"This is a journal"}
      journal_link {"www.cooljournal.com"}
    end
    #
    # trait :invalid do
    #   student_grade { -70 }
    #   student_id {1}
    # end


  end
end