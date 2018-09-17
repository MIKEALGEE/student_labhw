class Library

  attr_reader
  attr_accessor :books

def initialize(books)
@books = books

end

def book_info(name)
for book in @books
  if book[:title] == name
return book
end
end
return nil
end


def provide_rent_details(name)
  for book in @books
    if book[:title] == name
  return book[:rental_details]
end
  end
  return nil
  end












































end
