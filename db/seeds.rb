User.destroy_all

User.create!({
   name: 'daisuke.takayama',
   email: 'test@user.com',
   password: 'test123',
   password_confirmation: 'test123'
})
