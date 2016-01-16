class Questionnaire < ActiveRecord::Base
  acts_as_taggable_on :satisfactions, :triggers
end