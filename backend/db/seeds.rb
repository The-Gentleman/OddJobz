zeshan = User.create(name: "Zeshan", need: "Electronics", description: "My iphone 8 screen is cracked")
isa = User.create(name: "Isa", need: "Landscaping", description: "My lawn needs to be mowed and my gutter needs to be cleaned")
kai = User.create(name: "Kai", need: "dog walker", description: "I need my dog walked.")

howard = Professional.create(name: "Howard", profession: "Electronics", stars: 5)
tony = Professional.create(name: "Tony", profession: "Electronics", stars: 4)
shuri = Professional.create(name: "Shuri", profession: "Electronics", stars: 3)
mike = Professional.create(name: "Mike", profession: "Landscaping", stars: 4)
kim = Professional.create(name: "Kim", profession: "dog walker", stars: 5)

broken_iphone_screen = Task.create(category: "Electronics", price: 70, user_id: zeshan.id, professional_id: howard.id)
loose_charging_port = Task.create(category: "Electronics", price: 20, user_id: zeshan.id, professional_id: tony.id)
lawn_mowed = Task.create(category: "Landscaping", price: 10, user_id: isa.id, professional_id: mike.id)
dog_walk = Task.create(category: "dog walker", price: 20, user_id: kai.id, professional_id: kim.id)