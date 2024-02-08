class Book {
    let title: String
    let author: String
    let year: Int
    let pageCount: Int
    
    init(title: String, author: String, year: Int, pageCount: Int) {
        self.title = title
        self.author = author
        self.year = year
        self.pageCount = pageCount
    }
    
    func displayBookInfo() {
        print("Title: \(title)")
        print("Author: \(author)")
        print("Year: \(year)")
        print("Page Count: \(pageCount)")
    }
}

class Library {
    var books: [Book]
    
    init() {
        self.books = []
    }
    
    func addBook(_ book: Book) {
        books.append(book)
        print("Book '\(book.title)' added to the library.")
    }
    
    func removeBook(_ book: Book) {
        if let index = books.firstIndex(where: { $0.title == book.title }) {
            books.remove(at: index)
            print("Book '\(book.title)' removed from the library.")
        } else {
            print("Book '\(book.title)' is not in the library.")
        }
    }
    
    func displayAllBooks() {
        if books.isEmpty {
            print("The library is empty.")
        } else {
            print("Books in the library:")
            for book in books {
                book.displayBookInfo()
                print(" ")
            }
        }
    }
}

let book1 = Book(title: "To Kill a Mockingbird", author: "Harper Lee", year: 1960, pageCount: 281)
let book2 = Book(title: "1984", author: "George Orwell", year: 1949, pageCount: 328)

let library = Library()
library.addBook(book1)
library.addBook(book2)
library.displayAllBooks()

library.removeBook(book2)
library.displayAllBooks()