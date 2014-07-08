require File.expand_path("../test_helper.rb", __FILE__)    

class ReloadTest < Minitest::Test

  def setup
    @person = Person.create!
  end                 
  
  def test_reload_document_after_touching_other_database
    Invite.count          # Invite has explicit store_in :database
    assert @person.reload # raises Mongoid::Errors::DocumentNotFound
  end
       
  def test_reload_document_after_touching_same_database
    Invite.count          # Invite uses store_in :database
    Person.count          # Person uses default database
    assert @person.reload # returns reloaded document
  end
  
end  