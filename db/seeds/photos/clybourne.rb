# frozen_string_literal: true

clybourne = Production.find_by(title: 'Clybourne Park')

sarah =  Casting.find_by(member: Member.find_by(first_name: 'Sarah', last_name: 'Stryker'),
                         production: clybourne)
jake =   Casting.find_by(member: Member.find_by(first_name: 'Jake', last_name: 'Burbage'),
                         production: clybourne)
amanda = Casting.find_by(member: Member.find_by(first_name: 'Amanda', last_name: 'McCarther'),
                         production: clybourne)
damien = Casting.find_by(member: Member.find_by(first_name: 'Damien', last_name: 'Berger'),
                         production: clybourne)
janet =  Casting.find_by(member: Member.find_by(first_name: 'Janet', last_name: 'Quartarone'),
                         production: clybourne)
ray =    Casting.find_by(member: Member.find_by(first_name: 'Ray', last_name: 'Fallon'),
                         production: clybourne)
tom =    Casting.find_by(member: Member.find_by(first_name: 'Tom', last_name: 'Stackhouse'),
                         production: clybourne)
loos =   Casting.find_by(member: Member.find_by(first_name: 'Christopher', last_name: 'Loos'),
                         production: clybourne)

photo1 = ProductionPhoto.where(production: clybourne, url: 'https://drive.google.com/uc?export=view&id=1BxqxJNwEALUN59kcPhum_U8O7Qo7MFX1').first_or_create!
PhotoAppearance.where(production_photo: photo1, casting: amanda).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo1, casting: damien).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo1, casting: ray).first_or_create!(order_in_photo: 3)
PhotoAppearance.where(production_photo: photo1, casting: janet).first_or_create!(order_in_photo: 4)
PhotoAppearance.where(production_photo: photo1, casting: sarah).first_or_create!(order_in_photo: 5)
PhotoAppearance.where(production_photo: photo1, casting: jake).first_or_create!(order_in_photo: 6)

photo2 = ProductionPhoto.where(production: clybourne, url: 'https://drive.google.com/uc?export=view&id=1uf2CuhFZQc_fQ3gAAEm_G58G3oSGhvdK').first_or_create!
PhotoAppearance.where(production_photo: photo2, casting: amanda).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo2, casting: damien).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo2, casting: ray).first_or_create!(order_in_photo: 3)

photo3 = ProductionPhoto.where(production: clybourne, url: 'https://drive.google.com/uc?export=view&id=1ZwDjMKX1H0nKiZTcvD3DmFhU0pohqozr').first_or_create!
PhotoAppearance.where(production_photo: photo3, casting: amanda).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo3, casting: damien).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo3, casting: ray).first_or_create!(order_in_photo: 3)
PhotoAppearance.where(production_photo: photo3, casting: janet).first_or_create!(order_in_photo: 4)
PhotoAppearance.where(production_photo: photo3, casting: jake).first_or_create!(order_in_photo: 5)

photo4 = ProductionPhoto.where(production: clybourne, url: 'https://drive.google.com/uc?export=view&id=13rnAeEg_8Fy2mVNxqvQju-j5Yd3ZvOBV').first_or_create!
PhotoAppearance.where(production_photo: photo4, casting: amanda).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo4, casting: damien).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo4, casting: ray).first_or_create!(order_in_photo: 3)
PhotoAppearance.where(production_photo: photo4, casting: jake).first_or_create!(order_in_photo: 4)
PhotoAppearance.where(production_photo: photo4, casting: janet).first_or_create!(order_in_photo: 5)
PhotoAppearance.where(production_photo: photo4, casting: sarah).first_or_create!(order_in_photo: 6)

photo5 = ProductionPhoto.where(production: clybourne, url: 'https://drive.google.com/uc?export=view&id=1U5bGylP0VpM2fy-r_95-JBC_EX84JGqb').first_or_create!
PhotoAppearance.where(production_photo: photo5, casting: amanda).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo5, casting: damien).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo5, casting: ray).first_or_create!(order_in_photo: 3)
PhotoAppearance.where(production_photo: photo5, casting: janet).first_or_create!(order_in_photo: 4)
PhotoAppearance.where(production_photo: photo5, casting: sarah).first_or_create!(order_in_photo: 5)
PhotoAppearance.where(production_photo: photo5, casting: jake).first_or_create!(order_in_photo: 6)

photo6 = ProductionPhoto.where(production: clybourne, url: 'https://drive.google.com/uc?export=view&id=1NOnifpt6vVnEbWwFd40xooZpYQGuWXz4').first_or_create!
PhotoAppearance.where(production_photo: photo6, casting: janet).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo6, casting: loos).first_or_create!(order_in_photo: 2)

photo7 = ProductionPhoto.where(production: clybourne, url: 'https://drive.google.com/uc?export=view&id=1JR4bh60nAJJJBUXLCmdkn1SaO0s1l8AZ').first_or_create!
PhotoAppearance.where(production_photo: photo7, casting: tom).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo7, casting: janet).first_or_create!(order_in_photo: 2)

photo8 = ProductionPhoto.where(production: clybourne, url: 'https://drive.google.com/uc?export=view&id=1Ymc6TwuVslNlHWjK4WmYHe0iu0CAm_W6').first_or_create!
PhotoAppearance.where(production_photo: photo8, casting: tom).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo8, casting: janet).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo8, casting: loos).first_or_create!(order_in_photo: 3)

photo9 = ProductionPhoto.where(production: clybourne, url: 'https://drive.google.com/uc?export=view&id=12qGsrbzStX5i47G2CxqLWqAObLt06ahJ').first_or_create!
PhotoAppearance.where(production_photo: photo9, casting: janet).first_or_create!(order_in_photo: 1)
PhotoAppearance.where(production_photo: photo9, casting: tom).first_or_create!(order_in_photo: 2)
PhotoAppearance.where(production_photo: photo9, casting: ray).first_or_create!(order_in_photo: 3)
PhotoAppearance.where(production_photo: photo9, casting: jake).first_or_create!(order_in_photo: 4)
PhotoAppearance.where(production_photo: photo9, casting: sarah).first_or_create!(order_in_photo: 5)
PhotoAppearance.where(production_photo: photo9, casting: amanda).first_or_create!(order_in_photo: 6)
PhotoAppearance.where(production_photo: photo9, casting: damien).first_or_create!(order_in_photo: 7)
