FactoryGirl.define do
  factory :artist do
    sequence :name do |n|
      "#{n}Bob Marley"
    end
    image_path "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
  end
end
