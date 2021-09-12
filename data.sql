DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS media;
DROP TABLE IF EXISTS sku;
DROP TABLE IF EXISTS sub_category;
DROP TABLE IF EXISTS category;

CREATE TABLE category (
  id int auto_increment,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(250) NOT NULL
);

INSERT INTO category (name, description) VALUES
  ('Kitchen', 'Kitchen'),
  ('Lifestyle', 'Lifestyle'),
  ('Food', 'Food');

CREATE TABLE sub_category (
  id INT AUTO_INCREMENT,
  name VARCHAR(250) NOT NULL,
  description VARCHAR(250) NOT NULL
);

INSERT INTO sub_category (name, description) VALUES
    ('Drinkware', 'Drinkware'),
    ('Small Appliances', 'Small Appliances'),
    ('Cookbooks', 'Cookbooks'),
    ('Kitchen Tools', 'Kitchen Tools'),
    ('Sleep', 'Sleep'),
    ('Food Containers', 'Food Containers'),
    ('Snack Bars', 'Snack Bars'),
    ('Puffed Snacks', 'Puffed Snacks'),
    ('Chips, Crisps, and Crackers', 'Chips, Crisps, and Crackers'),
    ('Books and Dining Guides', 'Books and Dining Guides');

CREATE TABLE media (
  id INT AUTO_INCREMENT,
  url VARCHAR(250) NOT NULL,
  alt_text VARCHAR(250) NOT NULL
);

INSERT INTO media (url, alt_text) VALUES
    ('https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/US_Built_Tumbler_52013-0266.jpg?auto=webp', 'WW by Built 30 oz Tumbler'),
    ('https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/1200x1200-air-fryer-6.jpg?auto=webp', 'Air Fryer - Grey'),
    ('https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/Meal-Planner-1200x1200-82629.jpg?auto=webp', 'Meal Planner'),
    ('https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/5061017_cb_myww_programcookbook_cover_rev_1200.jpg?auto=webp', 'The myWW Program Cookbook'),
    ('https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/US_ReusableProduceBags-52031-157.jpg?auto=webp', 'WW Reusable Produce Bags'),
    ('https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/WW_Grey-Amber-1RT.jpg?auto=webp', 'SpaRoom Essential Oils Sleep Set'),
    ('https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/US_ReusableStrawAndBottleCleanerSet_52027_0060_RET_1200_F.jpg?auto=webp', 'Bottle and Straw Cleaner Set'),
    ('https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/1200x1200-muffin-cup-4_v2.jpg?auto=webp', '2-in-1 Muffin and Mini Cake Cups'),
    ('https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/US_Built_3-CompartmentContainer_52021-0269.jpg?auto=webp', 'WW by Built 3 Compartment Container'),
    ('https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/6023002_mini_pbpie_box_f_1200.jpg?auto=webp', 'Chocolate Peanut Butter Pie Mini Bar'),
    ('https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/mini_swtslty_box_f_1200.jpg?auto=webp', 'Sweet and Salty Nut Mini Bar'),
    ('https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/US_CheddarCheeseProteinPuff_15023_Front-90512.jpg?auto=webp', 'Cheddar Cheese Protein Puffs'),
    ('https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/6015015_cs_NachoTortillaChips_box_f_1200.jpg?auto=webp', 'Nacho Tortilla Chips'),
    ('https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/6023017_TripleDeckerChoc_Box_f.jpg?auto=webp', 'Triple Decker Mini Bar');

CREATE TABLE sku (
  id INT AUTO_INCREMENT,
  name VARCHAR(250) NOT NULL,
  description VARCHAR(250) NOT NULL,
  retail_price NUMBER(8, 2) NOT NULL,
  sale_price NUMBER(8, 2) NOT NULL,
  inventory_type VARCHAR(250) NOT NULL,
  quantity_available NUMBER NOT NULL
);

INSERT INTO sku (name, description, retail_price, sale_price, inventory_type, quantity_available) VALUES
    ('WW by BUILT(r) 30 oz Tumbler', 'WW by BUILT(r) 30 oz Tumbler 5052013P', 19.99, 19.99, 'CHECK_QUANTITY', 471),
    ('Dash 2 Qt Compact Air Fryer (Grey)', 'Dash 2 Qt Compact Air Fryer 854940007694P', 39.99, 39.99, 'CHECK_QUANTITY', 631),
    ('52-Week Meal Planner', '52-Week Meal Planner 5061033P', 19.99, 19.99, 'CHECK_QUANTITY', 645),
    ('The myWWTM Program Cookbook', '5061017P The myWW Program Cookbook', 17.99, 17.99, 'CHECK_QUANTITY', 5429),
    ('WW Reusable Produce Bags (Set of 5)', 'WW Reusable Produce Bags (Set of 5) 5052031P', 9.99, 9.99, 'CHECK_QUANTITY', 1561),
    ('SpaRoom(r) Essential Oils Sleep Set', 'SpaRoom(r) Essential Oils Sleep Set 850020194919P', 19.99, 19.99, 'CHECK_QUANTITY', 221),
    ('Bottle and Straw Cleaner Set', 'Bottle and Straw Cleaner Set 5052027P', 9.99, 9.99, 'CHECK_QUANTITY', 0),
    ('2-in-1 Muffin and Mini Cake Cups', '2-in-1 Muffin and Mini Cake Cups 5052026P', 6.99, 6.99, 'CHECK_QUANTITY', 1235),
    ('WW by BUILT(r) 3 Compartment Container', 'WW by BUILT(r) 3 Compartment Container 5052021P', 16.99, 16.99, 'CHECK_QUANTITY', 459),
    ('Chocolate Peanut Butter Pie Mini Bar Value Pack (36 Bars)', 'Chocolate Peanut Butter Pie Mini Bar Value Pack (36 Bars) 601005P', 22.99, 22.99, 'CHECK_QUANTITY', 3401),
    ('Sweet &amp; Salty Nut Mini Bar', 'Sweet and Salty Nut Mini Bar 6023019P', 7.99, 7.99, 'CHECK_QUANTITY', 7901),
    ('Cheddar Cheese Protein Puffs', 'Cheddar Cheese Protein Puffs 6015023P', 6.99, 6.99, 'CHECK_QUANTITY', 0),
    ('Nacho Tortilla Chips', 'Nacho Tortilla Chips 6015015P', 4.99, 4.99, 'CHECK_QUANTITY', 14984),
    ('Triple Decker Chocolate Mini Bar', 'Triple Decker Chocolate Mini Bar 6023017P', 7.99, 7.99, 'CHECK_QUANTITY', 12117);


CREATE TABLE product (
  id INT AUTO_INCREMENT,
  name VARCHAR(250) NOT NULL,
  description VARCHAR(250) NOT NULL,
  url VARCHAR(250) NOT NULL,
  currency VARCHAR(250) NOT NULL,
  category_id VARCHAR(250) NOT NULL,
  sub_category_id VARCHAR(250) NOT NULL,
  media_id VARCHAR(250) NOT NULL,
  sku_id VARCHAR(250) NOT NULL
);

insert into product (name, description, url, currency, category_id, sub_category_id, media_id, sku_id) values
    ('WW by BUILT(r) 30 oz Tumbler', 'WW by BUILT(r) 30 oz Tumbler 5052013P', '/ww-by-built-30oz-tumbler', 'USD',
    select id from category where name = 'Kitchen', select id from sub_category where name = 'Drinkware',
    select id from media where alt_text = 'WW by Built 30 oz Tumbler', select id from sku where name = 'WW by BUILT(r) 30 oz Tumbler');
insert into product (name, description, url, currency, category_id, sub_category_id, media_id, sku_id) values
    ('Dash 2 Qt Compact Air Fryer', 'Dash 2 Qt Compact Air Fryer 854940007694P', '/dash-2qt-compact-air-fryer', 'USD',
    select id from category where name = 'Kitchen', select id from sub_category where name = 'Small Appliances',
    select id from media where alt_text = 'Air Fryer - Grey', select id from sku where name = 'Dash 2 Qt Compact Air Fryer (Grey)');
insert into product (name, description, url, currency, category_id, sub_category_id, media_id, sku_id) values
    ('52-Week Meal Planner', '52-Week Meal Planner 5061033P', '/52-week-meal-planner', 'USD',
    select id from category where name = 'Lifestyle', select id from sub_category where name = 'Books and Dining Guides',
    select id from media where alt_text = 'Meal Planner', select id from sku where name = '52-Week Meal Planner');
insert into product (name, description, url, currency, category_id, sub_category_id, media_id, sku_id) values
    ('The myWWTM Program Cookbook', '5061017P The myWW Program Cookbook', '/the-myww-program-cookbook', 'USD',
    select id from category where name = 'Kitchen', select id from sub_category where name = 'Cookbooks',
    select id from media where alt_text = 'The myWW Program Cookbook', select id from sku where name = 'The myWWTM Program Cookbook');
insert into product (name, description, url, currency, category_id, sub_category_id, media_id, sku_id) values
    ('WW Reusable Produce Bags (Set of 5)', 'WW Reusable Produce Bags (Set of 5) 5052031P', '/ww-reusable-produce-bags', 'USD',
    select id from category where name = 'Kitchen', select id from sub_category where name = 'Kitchen Tools',
    select id from media where alt_text = 'WW Reusable Produce Bags', select id from sku where name = 'WW Reusable Produce Bags (Set of 5)');
insert into product (name, description, url, currency, category_id, sub_category_id, media_id, sku_id) values
    ('WW by BUILT(r) 30 oz Tumbler', 'SpaRoom(r) Essential Oils Sleep Set 850020194919P', '/sparoom-essential-oils-sleep-set', 'USD',
    select id from category where name = 'Lifestyle', select id from sub_category where name = 'Sleep',
    select id from media where alt_text = 'SpaRoom Essential Oils Sleep Set', select id from sku where name = 'SpaRoom(r) Essential Oils Sleep Set');
insert into product (name, description, url, currency, category_id, sub_category_id, media_id, sku_id) values
    ('Bottle and Straw Cleaner Set', 'Bottle and Straw Cleaner Set 5052027P', '/bottle-and-straw-cleaner-set', 'USD',
    select id from category where name = 'Kitchen', select id from sub_category where name = 'Kitchen Tools',
    select id from media where alt_text = 'Bottle and Straw Cleaner Set', select id from sku where name = 'Bottle and Straw Cleaner Set');
insert into product (name, description, url, currency, category_id, sub_category_id, media_id, sku_id) values
    ('2-in-1 Muffin and Mini Cake Cups', '2-in-1 Muffin and Mini Cake Cups 5052026P', '/2-in-1-muffin-and-mini-cake-cups', 'USD',
    select id from category where name = 'Kitchen', select id from sub_category where name = 'Kitchen Tools',
    select id from media where alt_text = '2-in-1 Muffin and Mini Cake Cups', select id from sku where name = '2-in-1 Muffin and Mini Cake Cups');
insert into product (name, description, url, currency, category_id, sub_category_id, media_id, sku_id) values
    ('WW by BUILT(r) 3 Compartment Container', 'WW by BUILT(r) 3 Compartment Container 5052021P', '/ww-by-built-3compartment-container', 'USD',
    select id from category where name = 'Kitchen', select id from sub_category where name = 'Food Containers',
    select id from media where alt_text = 'WW by Built 3 Compartment Container', select id from sku where name = 'WW by BUILT(r) 3 Compartment Container');
insert into product (name, description, url, currency, category_id, sub_category_id, media_id, sku_id) values
    ('Chocolate Peanut Butter Pie Mini Bar Value Pack (36 Bars)', 'Chocolate Peanut Butter Pie Mini Bar Value Pack (36 Bars) 601005P', '/chocolate-peanut-butter-pie-mini-bar-value-pack', 'USD',
    select id from category where name = 'Food', select id from sub_category where name = 'Snack Bars',
    select id from media where alt_text = 'Chocolate Peanut Butter Pie Mini Bar', select id from sku where name = 'Chocolate Peanut Butter Pie Mini Bar Value Pack (36 Bars)');
insert into product (name, description, url, currency, category_id, sub_category_id, media_id, sku_id) values
    ('Sweet &amp; Salty Nut Mini Bar', 'Sweet and Salty Nut Mini Bar 6023019P', '/sweet-and-salty-nut-mini-bar', 'USD',
    select id from category where name = 'Food', select id from sub_category where name = 'Snack Bars',
    select id from media where alt_text = 'Sweet and Salty Nut Mini Bar', select id from sku where name = 'Sweet &amp; Salty Nut Mini Bar');
insert into product (name, description, url, currency, category_id, sub_category_id, media_id, sku_id) values
    ('Cheddar Cheese Protein Puffs', 'Cheddar Cheese Protein Puffs 6015023P', '/cheddar-cheese-protein-puffs', 'USD',
    select id from category where name = 'Food', select id from sub_category where name = 'Puffed Snacks',
    select id from media where alt_text = 'Cheddar Cheese Protein Puffs', select id from sku where name = 'Cheddar Cheese Protein Puffs');
insert into product (name, description, url, currency, category_id, sub_category_id, media_id, sku_id) values
    ('Nacho Tortilla Chips', 'Nacho Tortilla Chips 6015015P', '/nacho-tortilla-chips', 'USD',
    select id from category where name = 'Food', select id from sub_category where name = 'Chips, Crisps, and Crackers',
    select id from media where alt_text = 'Nacho Tortilla Chips', select id from sku where name = 'Nacho Tortilla Chips');
insert into product (name, description, url, currency, category_id, sub_category_id, media_id, sku_id) values
    ('Triple Decker Chocolate Mini Bar', 'Triple Decker Chocolate Mini Bar 6023017P', '/triple-decker-chocolate-mini-bar', 'USD',
    select id from category where name = 'Food', select id from sub_category where name = 'Snack Bars',
    select id from media where alt_text = 'Triple Decker Mini Bar', select id from sku where name = 'Triple Decker Chocolate Mini Bar');

commit;