module HomeHelper
  CATEGORIES = {
    1 => 'Classroom Art',
    2 => 'Teacher Donation',
    3 => 'Beauty',
    4 => 'Birthday Party',
    5 => 'Books',
    6 => 'Cash Donations',
    7 => 'Clothing/Accessories',
    8 => 'Craft/Hobby',
    9 => 'Electronics',
    10 => 'Entertainment',
    11 => 'Food and Wine',
    12 => 'Health/Fitness',
    13 => 'Home/Garden',
    14 => 'Jewelry',
    15 => 'Pets',
    16 => 'Photography',
    17 => 'Services',
    18 => 'Travel/Getaway',
    19 => 'Toys/Games',
    20 => 'Sports',
  }

  def category(id)
    CATEGORIES[id]
  end
end
