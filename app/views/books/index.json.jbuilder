json.array!(@books) do |book|
  json.extract! book, :id, :claveinterna, :ejemplar, :autor, :editorial, :tema, :isbn, :categoria, :provider_id
  json.url book_url(book, format: :json)
end
