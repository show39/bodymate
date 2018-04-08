Ransack.configure do |config|
  config.add_predicate :during_day,
                       :arel_predicate => 'between',
                       :formatter => proc {|v| v..v.end_of_day},
                       :compounds => false
end
