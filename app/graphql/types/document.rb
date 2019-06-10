require "graphql"
require_relative "base_object"
require_relative "bib_data"

class Types::Document < Types::BaseObject
  field :id, ID, null: false
  field :type, String, null: false
  field :bibdata, Types::BibData, null: true
  field :termdocsource, String, null: true
  field :preface, String, null: true
  field :sections, String, null: true
  field :annex, String, null: true
  field :bibliography, String, null: true

  def bibdata
    object["bibdata"]
  end
end
