# db/seeds.rb
user_ids = User.all.ids
# User.destroy
User.delete(user_ids)

users = [
    {fname: 'Jon', lname: 'Doe', email: 'a@example.com'},
    {fname: 'Jane', lname: 'Doe', email: 'b@example.com'}
  ]
  
   users.each do |u|
    added_user = User.create(u)
      lockers = [
        {user_id: added_user.id, name: "First Locker #{added_user.id}", code: "HEXCODE123456789#{added_user.id}0"},
        {user_id: added_user.id, name: "Second Locker #{added_user.id}", code: "HEXCODE123456789#{added_user.id}1"}
      ] 
      lockers.each do |l|
        added_locker = Locker.create(l)
          items = [
            {locker_id: added_locker.id, item_name: "First item #{added_user.id}#{added_locker.id}"},
            {locker_id: added_locker.id, item_name: "Second item #{added_user.id}#{added_locker.id}"}
          ] 
          items.each do |i|
            Item.create(i)
          end
      end
  end
 



