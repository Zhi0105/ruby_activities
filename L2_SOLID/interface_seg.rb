# Interface Segregation Principle own example

class BuyBook
    def initialize(book_ordered, options = {})
        @book_ordered = book_ordered
        @options = options
    end

    def process!
        AvailableAlbum::Base.transaction do
            Payment::Order.new(@book_ordered).transact!
            AlbumCount::Quantity(@book_ordered).deduct!
            OrderMailer.successful_order(@book_ordered)
        end
    end
end