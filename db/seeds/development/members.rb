names = ["Taro", "Jiro", "Hana", "John", "Mike", "Sophy", "Bill", "Alex", "Mary", "Tom"]
fnames = ["Sato", "Suzuki", "Takahashi", "Tanaka"];
gnames = ["Taro", "Jiro", "Hanako"];

0.upto(9) do |index|
  Member.create({
    number: index + 10,
    name: names[index],
    full_name: "#{fnames[index % 4]} #{gnames[index % 3]}",
    email: "#{names[index]}@example.com",
    birthday: "2000-12-01",
    sex: [1, 1, 2][index % 3],
    administrator: (index == 0)
  })
end