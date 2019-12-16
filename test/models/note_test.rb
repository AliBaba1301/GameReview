require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save empty note' do
    note = Note.new

    note.save
    refute note.valid?
  end

# Non-empty posts get posted
  test 'should save valid note' do
    note = Note.new
    note.notes_taken = 'test2'
    Note.create

    note.save
    assert note.valid?
  end
end
