# frozen_string_literal: true

merry_wives = Production.find_by(title: 'The Merry Wives of Windsor')

brit =      Casting.find_by(member: Member.find_by(first_name: 'Brittany', last_name: 'Rivera'), production: merry_wives)
kyla =      Casting.find_by(member: Member.find_by(first_name: 'Kyla', last_name: 'Mostello Donnelly'), production: merry_wives)
olivier =   Casting.find_by(member: Member.find_by(first_name: 'Olivier', last_name: 'LeRoux'), production: merry_wives)
susan =     Casting.find_by(member: Member.find_by(first_name: 'Susan', last_name: 'Blair'), production: merry_wives)
russ =      Casting.find_by(member: Member.find_by(first_name: 'Russ', last_name: 'Walsh'), production: merry_wives)
dale =      Casting.find_by(member: Member.find_by(first_name: 'Dale', last_name: 'Simon'), production: merry_wives)
mort =      Casting.find_by(member: Member.find_by(first_name: 'Mort', last_name: 'Paterson'), production: merry_wives)
tim =       Casting.find_by(member: Member.find_by(first_name: 'Timothy', last_name: 'Kirk'), production: merry_wives)
john =      Casting.find_by(member: Member.find_by(first_name: 'John', last_name: 'Fischer'), production: merry_wives)
charlotte = Casting.find_by(member: Member.find_by(first_name: 'Charlotte', last_name: 'Kirkby'), production: merry_wives)
bella =     Casting.find_by(member: Member.find_by(first_name: 'Isabelle', last_name: 'Bannon'), production: merry_wives)
fiona =     Casting.find_by(member: Member.find_by(first_name: 'Fiona', last_name: 'Misiura'), production: merry_wives)
ernie =     Casting.find_by(member: Member.find_by(first_name: 'Ernie', last_name: 'Albanesius'), production: merry_wives)
mike =      Casting.find_by(member: Member.find_by(first_name: 'Michael', last_name: 'Krahel'), production: merry_wives)
soto =      Casting.find_by(member: Member.find_by(first_name: 'Christopher', last_name: 'Soto'), production: merry_wives)
pat_lav =   Casting.find_by(member: Member.find_by(first_name: 'Patrick', last_name: 'Lavery'), production: merry_wives)
peyton =    Casting.find_by(member: Member.find_by(first_name: 'Peyton', last_name: 'Estabrook'), production: merry_wives)
dan =       Casting.find_by(member: Member.find_by(first_name: 'Daniel', last_name: 'Altobelli'), production: merry_wives)
loos =      Casting.find_by(member: Member.find_by(first_name: 'Christopher', last_name: 'Loos'), production: merry_wives)

photo1 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1xydjCYiSk46p5zgIuId6YW8_aInEYwS2').first_or_create!
PhotoAppearance.where(production_photo: photo1, casting: kyla).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo1, casting: brit).first_or_create!(order_in_photo: 2)

# TODO: Uncomment when you find a way to work with portrait-shaped photos
# photo2 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1zzBSAamcGp_W3qbSZFYaWZty8VhrPHp_').first_or_create!
# PhotoAppearance.where(production_photo: photo2, casting: olivier).first_or_create!(order_in_photo: 1)
# PhotoAppearance.where(production_photo: photo2, casting: soto).first_or_create!(order_in_photo: 2)

photo3 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1Lfu9rayCo6Azp8FCqIVZaOQQsX3fCTUg').first_or_create!
PhotoAppearance.where(production_photo: photo3, casting: susan).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo3, casting: olivier).first_or_create!(order_in_photo: 2)

photo4 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1LooN0SDBJn2oylqv3hDGd0K2O-ZXBFy1').first_or_create!
PhotoAppearance.where(production_photo: photo4, casting: russ).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo4, casting: dale).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo4, casting: peyton).first_or_create!(order_in_photo: 3)
PhotoAppearance.where(production_photo: photo4, casting: dan).first_or_create!(order_in_photo: 4)

photo5 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=10P9A0xcdCqTCTBbeaPTwJY_3cx38sWgj').first_or_create!
PhotoAppearance.where(production_photo: photo5, casting: olivier).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo5, casting: susan).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo5, casting: bella).first_or_create!(order_in_photo: 3)

photo6 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=17kMHlj627BXVXTyAikr5hj73e-mpOO-3').first_or_create!
PhotoAppearance.where(production_photo: photo6, casting: brit).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo6, casting: dale).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo6, casting: kyla).first_or_create!(order_in_photo: 3)

photo7 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=19ugYQ3VlyEdFHmRL9vv7I0StK7PRtN-H').first_or_create!
PhotoAppearance.where(production_photo: photo7, casting: mort).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo7, casting: charlotte).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo7, casting: john).first_or_create!(order_in_photo: 3)
PhotoAppearance.where(production_photo: photo7, casting: kyla).first_or_create!(order_in_photo: 4)

photo8 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1nvdrGhU5ATlkH0t-q9tQL5fVEk6ana9k').first_or_create!
PhotoAppearance.where(production_photo: photo8, casting: brit).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo8, casting: kyla).first_or_create!(order_in_photo: 2)

photo9 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1E9i0feSF849TSOKHbk6xB5JyNMmCLQjE').first_or_create!
PhotoAppearance.where(production_photo: photo9, casting: susan).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo9, casting: olivier).first_or_create!(order_in_photo: 2)

photo10 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1qF2ZhsXGFb6nPIjB1STr_6sK6qKHsN3U').first_or_create!
PhotoAppearance.where(production_photo: photo10, casting: mort).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo10, casting: pat_lav).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo10, casting: charlotte).first_or_create!(order_in_photo: 3)

# TODO: Uncomment when you find a way to work with portrait-shaped photos
# photo11 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1m0CCMn9gXy2VWcFOXHSO4n4bwgZdcizl').first_or_create!
# PhotoAppearance.where(production_photo: photo11, casting: dale).first_or_create!(order_in_photo: 1)

photo12 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1qwUlAMPqTyQ-ZDY1Rk0ETYkBkZrnNLBF').first_or_create!
PhotoAppearance.where(production_photo: photo12, casting: john).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo12, casting: susan).first_or_create!(order_in_photo: 2)

photo13 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1TTa2ZOixhAj6hagLRCNnGq3zAPZ5Jic5').first_or_create!
PhotoAppearance.where(production_photo: photo13, casting: ernie).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo13, casting: mike).first_or_create!(order_in_photo: 2)

photo14 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1ImTOcgHFn4W0PD8puxGxaAYud96T007K').first_or_create!
PhotoAppearance.where(production_photo: photo14, casting: charlotte).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo14, casting: loos).first_or_create!(order_in_photo: 2)

photo15 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1y_E3MvFVez1ttVOcmLo7Jb8pXwLQEQ9G').first_or_create!
PhotoAppearance.where(production_photo: photo15, casting: susan).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo15, casting: olivier).first_or_create!(order_in_photo: 2)

photo16 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=10DqUVZQCyIn0UBg-ujWBZ8HCWWKjaMbI').first_or_create!
PhotoAppearance.where(production_photo: photo16, casting: mort).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo16, casting: pat_lav).first_or_create!(order_in_photo: 2)

photo17 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1zXlEEC3qjlfuLZf1Dg61xgAZ3umYqAKk').first_or_create!
PhotoAppearance.where(production_photo: photo17, casting: dale).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo17, casting: susan).first_or_create!(order_in_photo: 2)

photo18 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=15u0nYNWFViIuJrDF62W7IGh9UR7iUva2').first_or_create!
PhotoAppearance.where(production_photo: photo18, casting: dale).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo18, casting: susan).first_or_create!(order_in_photo: 2)

photo19 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1_1gck2huzEt6u9cOQFNKilw_NmERFF--').first_or_create!
PhotoAppearance.where(production_photo: photo19, casting: soto).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo19, casting: olivier).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo19, casting: susan).first_or_create!(order_in_photo: 3)
PhotoAppearance.where(production_photo: photo19, casting: bella).first_or_create!(order_in_photo: 4)

photo20 = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1Sq7LOU-x7EqAjDQ63CHsb2sdQHP32_KJ').first_or_create!
PhotoAppearance.where(production_photo: photo20, casting: charlotte).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo20, casting: john).first_or_create!(order_in_photo: 2)

photo = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1tWBBFjSvlTBKDpZoqso7mNrXHlS9aDoU').first_or_create!
PhotoAppearance.where(production_photo: photo, casting: russ).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo, casting: dale).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo, casting: peyton).first_or_create!(order_in_photo: 3)
PhotoAppearance.where(production_photo: photo, casting: dan).first_or_create!(order_in_photo: 4)
PhotoAppearance.where(production_photo: photo, casting: ernie).first_or_create!(order_in_photo: 5)

photo = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1xTtRyiKiNvGYOFPUMFv-4e1xmVWLK-tr').first_or_create!
PhotoAppearance.where(production_photo: photo, casting: charlotte).first_or_create!(order_in_photo: 1)

photo = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1o8wJ02UMaxt7T-IYPq3DVoo1L9nCXcNt').first_or_create!
PhotoAppearance.where(production_photo: photo, casting: dale).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo, casting: kyla).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo, casting: brit).first_or_create!(order_in_photo: 3)

photo = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1zVMIwzUAehSngWiKQEoaExbbKa_jdotI').first_or_create!
PhotoAppearance.where(production_photo: photo, casting: kyla).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo, casting: brit).first_or_create!(order_in_photo: 2)

photo = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1OM-L-xoSGG8e9jceROtP26ypMC-BsLil').first_or_create!
PhotoAppearance.where(production_photo: photo, casting: pat_lav).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo, casting: fiona).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo, casting: dan).first_or_create!(order_in_photo: 3)
PhotoAppearance.where(production_photo: photo, casting: bella).first_or_create!(order_in_photo: 4)
PhotoAppearance.where(production_photo: photo, casting: olivier).first_or_create!(order_in_photo: 5)

photo = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=16SnpIyoIg8VjSUIy1vBRtjCkxbJqpG8S').first_or_create!
PhotoAppearance.where(production_photo: photo, casting: tim).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo, casting: mort).first_or_create!(order_in_photo: 2)

photo = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=13qcIcW2JetsQpisPFOFplKSVaoPLYOb6').first_or_create!
PhotoAppearance.where(production_photo: photo, casting: brit).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo, casting: dale).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo, casting: kyla).first_or_create!(order_in_photo: 3)

photo = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1t2spIOOZgmW7y6aSeGy_AJcLSxurz7kH').first_or_create!
PhotoAppearance.where(production_photo: photo, casting: pat_lav).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo, casting: loos).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo, casting: bella).first_or_create!(order_in_photo: 3)

photo = ProductionPhoto.where(production: merry_wives, url: 'https://drive.google.com/uc?export=view&id=1AZhCIG-UOh1d_M-cEdAb8d8vW3_h9LnH').first_or_create!
PhotoAppearance.where(production_photo: photo, casting: kyla).first_or_create!(order_in_photo: 1)
