class EventNote < ActiveRecord::Base
  belongs_to :educator
  belongs_to :student
  belongs_to :event_note_type

  validates :educator_id, :student_id, :event_note_type_id, :recorded_at, presence: true
  validates :is_restricted, inclusion: { in: [true, false] }
end
