# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

community_category = Category.where(name: 'community').first_or_create(name: 'community')
housing_category = Category.where(name: 'housing').first_or_create(name: 'housing')
jobs_category = Category.where(name: 'jobs').first_or_create(name: 'jobs')
personals_category = Category.where(name: 'personals').first_or_create(name: 'personals')
sale_category = Category.where(name: 'sale').first_or_create(name: 'sale')
services_category = Category.where(name: 'services').first_or_create(name: 'servives')

Subcategory.where(name: 'activities', category_id: community_category.id).first_or_create(name: 'activities', category_id: community_category.id)
Subcategory.where(name: 'classes', category_id: community_category.id).first_or_create(name: 'classes', category_id: community_category.id)
Subcategory.where(name: 'events', category_id: community_category.id).first_or_create(name: 'events', category_id: community_category.id)

Subcategory.where(name: 'rent', category_id: housing_category.id).first_or_create(name: 'rent', category_id: housing_category.id)
Subcategory.where(name: 'buy', category_id: housing_category.id).first_or_create(name: 'buy', category_id: housing_category.id)
Subcategory.where(name: 'sleep', category_id: housing_category.id).first_or_create(name: 'sleep', category_id: housing_category.id)

Subcategory.where(name: 'computer', category_id: jobs_category.id).first_or_create(name: 'computer', category_id: jobs_category.id)
Subcategory.where(name: 'it', category_id: jobs_category.id).first_or_create(name: 'it', category_id: jobs_category.id)
Subcategory.where(name: 'ship', category_id: jobs_category.id).first_or_create(name: 'ship', category_id: jobs_category.id)

Subcategory.where(name: 'cleaning', category_id: personals_category.id).first_or_create(name: 'cleaning', category_id: personals_category.id)
Subcategory.where(name: 'mouse', category_id: personals_category.id).first_or_create(name: 'mouse', category_id: personals_category.id)
Subcategory.where(name: 'montreal', category_id: personals_category.id).first_or_create(name: 'montreal', category_id: personals_category.id)

Subcategory.where(name: 'laptop', category_id: sale_category.id).first_or_create(name: 'laptop', category_id: sale_category.id)
Subcategory.where(name: 'screen', category_id: sale_category.id).first_or_create(name: 'screen', category_id: sale_category.id)
Subcategory.where(name: 'tempo', category_id: sale_category.id).first_or_create(name: 'tempo', category_id: sale_category.id)

Subcategory.where(name: 'beer', category_id: services_category.id).first_or_create(name: 'beer', category_id: services_category.id)
Subcategory.where(name: 'wine', category_id: services_category.id).first_or_create(name: 'wine', category_id: services_category.id)
Subcategory.where(name: 'chicken', category_id: services_category.id).first_or_create(name: 'chicken', category_id: services_category.id)