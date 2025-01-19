foo = gets.chomp

yaş, cinsiyet = foo.split("-")

yaş = yaş.split
cinsiyet = cinsiyet.split

yaş_cinsiyet = yaş.zip(cinsiyet)

male = []
female = []

yaş_cinsiyet.each do |dizi|
    male << dizi if dizi.include? "M"

    female << dizi if dizi.include? "F"
end


male_yaş = []
female_yaş = []


male.each do |veri|
    male_yaş << veri.delete("M")
end


female.each do |veri|
    female_yaş << veri.delete("F")
end


male_toplam = 0
female_toplam = 0

male = male.join(" ").split
female = female.join(" ").split

male.each do |sayı|
    male_toplam += sayı.to_i
end

female.each do |sayı|
    female_toplam += sayı.to_i
end


male_ortalama = (male_toplam.to_f / male.size).to_f
female_ortalama = (female_toplam.to_f / female.size).to_f

if male_ortalama == female_ortalama
    puts "F : #{female_ortalama} 
M : #{male_ortalama} "
elsif male_ortalama < female_ortalama
    puts "F : #{female_ortalama} H
M : #{male_ortalama} L"
else male_ortalama > female_ortalama
    puts "F : #{female_ortalama} L
M : #{male_ortalama} H"
end
