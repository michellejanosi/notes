require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  test 'fixtures are valid' do
    assert notes(:one).valid?
    assert notes(:two).valid?
  end

  test 'requires title' do
    note = notes(:one)
    note.title = ''
    assert_not note.valid?
  end

  test 'requires notes' do
    note = notes(:one)
    note.notes = ''
    assert_not note.valid?
  end

  test "title should be less than 100 characters" do
    note = notes(:one)
    note.title = '0' * 101
    assert_not note.valid?
  end
end
