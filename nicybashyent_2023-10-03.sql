DROP DATABASE IF EXISTS `nicybashy`;
CREATE DATABASE `nicybashy`;

USE `nicybashy`;
CREATE TABLE `suppliers` (`supplierid` INT NOT NULL,
						 `name` VARCHAR(50),
                         `address` VARCHAR(50),
                         `itemsupplied` VARCHAR(50),
                         `quantity(kg)` DECIMAL(7,2),
                         `purchaseprice(unit)` DECIMAL(7,2),
                         `date` DATE,
                         `productcode` VARCHAR(50),
                         PRIMARY KEY (`productcode`));
INSERT INTO `suppliers` VALUE ('002', 'Glister source Nig. Ltd.', '20 Achme road, Ogba, Lagos', 'Calcium Carbornate', '45360', '1780', '2023-03-13', 'CHEM002-01');                         
INSERT INTO `suppliers` VALUE ('001', 'Nicyl Nig. Ltd.', '20 Agunbiade street, Berger, Lagos', 'Red Oxide', '50', '2300', '2023-02-23', 'CHEM001-01');
INSERT INTO `suppliers` VALUE ('001', 'Nicyl Nig. Ltd.', '20 Agunbiade street, Berger, Lagos', 'Natrosol', '35', '9820.0', '2023-03-02', 'CHEM001-02');
INSERT INTO `suppliers` VALUE ('002', 'Glister Source Nig. Ltd.', '20 Achme Road, Ogba, Lagos', 'Kaolin', '125', '2500', '2023-02-23', 'CHEM002-02');
INSERT INTO `suppliers` VALUE ('003', 'Samking', '01, Ajala street, Agbado, Lagos', 'Formalin', '50', '1580', '2023-01-23', 'CHEM003-01');
INSERT INTO `suppliers` VALUE ('003', 'Samking', '01, Ajala street, Agbado, Lagos', 'Amonium monoxide', '50', '1560', '2023-01-23', 'CHEM003-02');
INSERT INTO `suppliers` VALUE ('003', 'Samking', '01, Ajala street, Agbado, Lagos', 'Acticide', '25', '1580', '2023-02-23', 'CHEM003-03');
INSERT INTO `suppliers` VALUE ('004', 'Fine Coat Chemicals', '25, Kola Road, Ogun', 'Acrylic', '275', '3400', '2023-05-23', 'CHEM004-01');
INSERT INTO `suppliers` VALUE ('004', 'Fine Coat Chemicals', '25, Kola Road, Ogun', 'Vinamol', '175', '2400', '2023-05-23', 'CHEM004-02');
INSERT INTO `suppliers` VALUE ('004', 'Fine Coat Chemicals', '25, Kola Road, Ogun', 'Yellow Oxide', '25', '2100', '2023-05-23', 'CHEM004-03');
INSERT INTO `suppliers` VALUE ('005', 'Chizzy Chemicals Affilliate', '11, Uhmu Road, kogi', 'Resin', '250', '1200', '2023-04-11', 'CHEM005-01');
INSERT INTO `suppliers` VALUE ('005', 'Chizzy Chemicals Affilliate', '11, Uhmu Road, kogi', 'Mixed Dryer', '20', '3850', '2023-04-11', 'CHEM005-02');
INSERT INTO `suppliers` VALUE ('006', 'Nagode Nig. Ltd.', '11, Gbadamosi road, Agege, Lagos', 'Titanium Dioxide', '75', '4500', '2023-06-12', 'CHEM006-01');
INSERT INTO `suppliers` VALUE ('006', 'Nagode Nig. Ltd.', '11, Gbadamosi road, Agege, Lagos', 'Marble Dust', '18144', '1500', '2023-06-12', 'CHEM006-02');

CREATE TABLE `inventory` (`productid` INT NOT NULL AUTO_INCREMENT,
						  `productcode` VARCHAR(50) NOT NULL,
                          `productname` VARCHAR(50) NOT NULL,
                          `quantityinstock(kg)` DECIMAL(7,2),
                          `supplierid` INT,
                          `price(unit)` DECIMAL(7,2),
                          `date` DATE,
                          PRIMARY KEY (`productid`));
                        
ALTER TABLE `inventory` ADD FOREIGN KEY (`productcode`) REFERENCES `suppliers`(`productcode`);

INSERT INTO `inventory` VALUE ('001', 'CHEM001-01', 'Red Oxide', '25', '001', '3500', '2023-06-30');
INSERT INTO `inventory` VALUE ('002', 'CHEM001-02', 'Natrosol', '25', '001', '10500', '2023-06-30');
INSERT INTO `inventory` VALUE ('003', 'CHEM002-01', 'Calcium Carbonate', '40824', '002', '2500', '2023-06-30');
INSERT INTO `inventory` VALUE ('004', 'CHEM002-02', 'Kaolin', '100', '002', '3000', '2023-06-30');
INSERT INTO `inventory` VALUE ('005', 'CHEM003-01', 'Formalin', '47', '003', '2000', '2023-06-30');
INSERT INTO `inventory` VALUE ('006', 'CHEM003-02', 'Amonium Monoxide', '45', '003', '2000', '2023-06-30');
INSERT INTO `inventory` VALUE ('007', 'CHEM003-03', 'Acticide', '45', '003', '2000', '2023-06-30');
INSERT INTO `inventory` VALUE ('008', 'CHEM004-01', 'Acrylic', '40', '004', '4000', '2023-06-30');
INSERT INTO `inventory` VALUE ('009', 'CHEM004-02', 'Vinamol', '60', '004', '3000', '2023-06-30');
INSERT INTO `inventory` VALUE ('010', 'CHEM004-03', 'Yellow Oxide', '10', '004', '2600', '2023-06-30');
INSERT INTO `inventory` VALUE ('011', 'CHEM005-01', 'Resin', '200', '005', '1800', '2023-06-30');
INSERT INTO `inventory` VALUE ('012', 'CHEM005-02', 'Mixed Dryer', '15', '005', '4500', '2023-06-30');
INSERT INTO `inventory` VALUE ('013', 'CHEM006-01', 'Titanium Dioxide', '70', '006', '5200', '2023-06-30');
INSERT INTO `inventory` VALUE ('014', 'CHEM006-02', 'Marble Dust', '13608', '006', '2500', '2023-06-30');

CREATE TABLE `salesrecord` (`customerid` VARCHAR(50), 
						   `companyname` VARCHAR(50),
                           `productname` VARCHAR(50),
                           `quantity` DECIMAL(7,2),
                           `price(unit)` DECIMAL(7,2));
                           
INSERT INTO `salesrecord` VALUE ('01', 'Ifytex Paints', 'Calcium Carbonate', '2268.0', '2500');
INSERT INTO `salesrecord` VALUE ('02', 'Benilux Paints', 'Calcium Carbonate', '1134.0', '2500');
INSERT INTO `salesrecord` VALUE ('03', 'Yemilux Paints', 'Calcium Carbonate', '567.0', '2500');
INSERT INTO `salesrecord` VALUE ('04', 'Phil Collins Production', 'Natrosol', '1.0', '10500');
INSERT INTO `salesrecord` VALUE ('05', 'Taiwo Adetula', 'Formalin', '1.0', '2000.0');
INSERT INTO `salesrecord` VALUE ('06', 'Bigway Paints', 'Red Oxide', '1.5', '3500.0');
INSERT INTO `salesrecord` VALUE ('07', 'Ziplux Paints', 'Red Oxide', '2', '3500');
INSERT INTO `salesrecord` VALUE ('08', 'Badmus Paints and Chemicals', 'Red Oxide', '5', '3500');
INSERT INTO `salesrecord` VALUE ('01', 'Ifytex Paints', 'Natrosol', '2', '10500');
INSERT INTO `salesrecord` VALUE ('01', 'Ifytex Paints', 'Formalin', '0.5', '2000');
INSERT INTO `salesrecord` VALUE ('02', 'Benilux Paints', 'Natrosol', '3', '10500');
INSERT INTO `salesrecord` VALUE ('02', 'Benilux Paints', 'Formalin', '0.2', '2000');
INSERT INTO `salesrecord` VALUE ('03', 'Yemilux Paints', 'Natrosol', '4', '10500');
INSERT INTO `salesrecord` VALUE ('03', 'Yemilux Paints', 'Formalin', '0.3', '2000');
INSERT INTO `salesrecord` VALUE ('03', 'Yemilux Paints', 'Red Oxide', '3', '3500');
INSERT INTO `salesrecord` VALUE ('05', 'Taiwo Adetula', 'Red Oxide', '2.5', '3500');
INSERT INTO `salesrecord` VALUE ('04', 'Phil Collins Production', 'Formalin', '1.0', '2000');
INSERT INTO `salesrecord` VALUE ('04', 'Phil Collins Production', 'Red Oxide', '3', '3500');
INSERT INTO `salesrecord` VALUE ('06', 'Bigway Paints', 'Yellow Oxide', '3', '2600');
INSERT INTO `salesrecord` VALUE ('06', 'Bigway Paints', 'Acticide', '2', '2000');
INSERT INTO `salesrecord` VALUE ('07', 'Ziplux Paints', 'Acticide', '2', '2000');
INSERT INTO `salesrecord` VALUE ('08', 'Badmus Paints and Chemicals', 'Acticide', '1', '2000');
INSERT INTO `salesrecord` VALUE ('07', 'Ziplux Paints', 'Resin', '10', '1800');
INSERT INTO `salesrecord` VALUE ('07', 'Ziplux Paints', 'Mixed Dryer', '1', '4500');
INSERT INTO `salesrecord` VALUE ('01', 'Ifytex Paints', 'Titanium Dioxide', '1', '5200');
INSERT INTO `salesrecord` VALUE ('01', 'Ifytex Paints', 'Amonium Monoxide', '0.5', '3500');
INSERT INTO `salesrecord` VALUE ('02', 'Benilux Paints', 'Mixed Dryer', '1', '4500');
INSERT INTO `salesrecord` VALUE ('02', 'Benilux Paints', 'Titanium Dioxide', '2', '5200');
INSERT INTO `salesrecord` VALUE ('02', 'Benilux Paints', 'Amonium Monoxide', '0.75', '3500');
INSERT INTO `salesrecord` VALUE ('04', 'Phil Collins Production', 'Kaolin', '5', '3000');
INSERT INTO `salesrecord` VALUE ('04', 'Phil Collins Production', 'Marble Dust', '567', '2500');
INSERT INTO `salesrecord` VALUE ('05', 'Taiwo Adetula', 'Acrylic', '35', '4000');
INSERT INTO `salesrecord` VALUE ('06', 'Bigway Paints', 'Resin', '10', '1800');
INSERT INTO `salesrecord` VALUE ('06', 'Bigway Paints', 'Mixed Dryer', '1', '4500');
INSERT INTO `salesrecord` VALUE ('02', 'Benilux Paints', 'Yellow Oxide', '3', '2600');
INSERT INTO `salesrecord` VALUE ('02', 'Benilux Paints', 'Marble Dust', '1134', '2500');
INSERT INTO `salesrecord` VALUE ('03', 'Yemilux Paints', 'Mixed Dryer', '1', '4500');
INSERT INTO `salesrecord` VALUE ('03', 'Yemilux Paints', 'Titanium Dioxide', '0.5', '5200');
INSERT INTO `salesrecord` VALUE ('03', 'Yemilux Paints', 'Amonium Monoxide', '0.25', '3500');
INSERT INTO `salesrecord` VALUE ('08', 'Badmus Paints and Chemicals', 'Resin', '10', '1800');
INSERT INTO `salesrecord` VALUE ('08', 'Badmus Paints and Chemicals', 'Mixed Dryer', '1', '4500');
INSERT INTO `salesrecord` VALUE ('01', 'Ifytex Paints', 'Yellow Oxide', '3', '2600');
INSERT INTO `salesrecord` VALUE ('01', 'Ifytex Paints', 'Marble Dust', '567', '2500');
INSERT INTO `salesrecord` VALUE ('02', 'Benilux Paints', 'Vinamol', '60', '3000');
INSERT INTO `salesrecord` VALUE ('02', 'Benilux Paints', 'Resin', '10', '1800');
INSERT INTO `salesrecord` VALUE ('03', 'Yemilux Paints', 'Yellow Oxide', '3', '2600');
INSERT INTO `salesrecord` VALUE ('03', 'Yemilux Paints', 'Marble Dust', '2268', '2500');
INSERT INTO `salesrecord` VALUE ('05', 'Taiwo Adetula', 'Titanium Dioxide', '1', '5200');
INSERT INTO `salesrecord` VALUE ('05', 'Taiwo Adetula', 'Amonium Monoxide', '0.5', '3500');
INSERT INTO `salesrecord` VALUE ('04', 'Phil Collins Production', 'Titanium Dioxide', '0.5', '5200');
INSERT INTO `salesrecord` VALUE ('04', 'Phil Collins Production', 'Amonium Monoxide', '1.0', '3500');
INSERT INTO `salesrecord` VALUE ('06', 'Bigway Paints', 'Vinamol', '10', '3000');
INSERT INTO `salesrecord` VALUE ('06', 'Bigway Paints', 'Amonium Monoxide', '1', '3500');
INSERT INTO `salesrecord` VALUE ('08', 'Badmus Paints and Chemicals', 'Acrylic', '60', '4000');
INSERT INTO `salesrecord` VALUE ('08', 'Badmus Paints and Chemicals', 'Vinamol', '10', '3000');
INSERT INTO `salesrecord` VALUE ('07', 'Ziplux Paints', 'Acrylic', '40', '4000');
INSERT INTO `salesrecord` VALUE ('01', 'Ifytex Paints', 'Red Oxide', '3', '3500');
INSERT INTO `salesrecord` VALUE ('02', 'Benilux Paints', 'Acrylic', '40', '4000');
INSERT INTO `salesrecord` VALUE ('03', 'Yemilux Paints', 'Resin', '10', '1800');
INSERT INTO `salesrecord` VALUE ('04', 'Phil Collins Production', 'Vinamol', '30', '3000');
INSERT INTO `salesrecord` VALUE ('07', 'Ziplux Paints', 'Vinamol', '10', '3000');
INSERT INTO `salesrecord` VALUE ('05', 'Taiwo Adetula', 'Yellow Oxide', '1', '2600');
INSERT INTO `salesrecord` VALUE ('03', 'Yemilux Paints', 'Vinamol', '15', '3000');
INSERT INTO `salesrecord` VALUE ('06', 'Bigway Paints', 'Kaolin', '6', '3000');
INSERT INTO `salesrecord` VALUE ('06', 'Bigway Paints', 'Acrylic', '40', '4000');
INSERT INTO `salesrecord` VALUE ('07', 'Ziplux Paints', 'Kaolin', '5', '3000');
INSERT INTO `salesrecord` VALUE ('08', 'Badmus Paints and Chemicals', 'Kaolin', '5', '3000');
INSERT INTO `salesrecord` VALUE ('05', 'Taiwo Adetula', 'Kaolin', '4', '3000');
INSERT INTO `salesrecord` VALUE ('04', 'Phil Collins Production', 'Yellow Oxide', '2', '2600');
INSERT INTO `salesrecord` VALUE ('01', 'Ifytex Paints', 'Acrylic', '20', '4000');
INSERT INTO `salesrecord` VALUE ('02', 'Benilux Paints', 'Red Oxide', '5', '3500');

CREATE TABLE `referrals` (`referralid` INT NOT NULL AUTO_INCREMENT,
						  `customerid` INT NOT NULL,
                          `points` DECIMAL(6,2),
                          PRIMARY KEY (`referralid`));
INSERT INTO `referrals`	VALUE ('101', '001', '3.0');
INSERT INTO `referrals`	VALUE ('102', '005', '1.0');
INSERT INTO `referrals`	VALUE ('103', '007', '1.0');

CREATE TABLE `customers` (`customerid` INT NOT NULL AUTO_INCREMENT,
						  `firstname` VARCHAR(50),
						  `lastname` VARCHAR(50),
						  `companyname` VARCHAR(50),
                          `address` VARCHAR(50),
                          `birthdate`VARCHAR(50),
                          `contact` VARCHAR(50),
                          `points` DECIMAL(6,2),
                          `referralid` INT,
                          PRIMARY KEY (`customerid`));
                          
ALTER TABLE `customers` ADD FOREIGN KEY (`referralid`) REFERENCES `referrals`(`referralid`);

INSERT INTO `customers` VALUE ('01', 'Ifeanyi', 'Nwobodo', 'Ifytex', '24, Alasirin street, Idiagbon, Lagos', '1987-05-02', '801-234-8666', '3.0', '101');
INSERT INTO `customers` VALUE ('02', 'Benedict', 'Nwaocha', 'Benilux', '04, ijumota street, okeira, Lagos', '1977-02-04', '801-234-1233', '0', null);
INSERT INTO `customers` VALUE ('03', 'Olayemi', 'Awonuga', 'Yemilux', '11, Umoh street, Agege, Lagos', '1987-11-12', '800-234-555', '0', null);
INSERT INTO `customers` VALUE ('04', 'Phil Collins', 'Uchemba', 'Phil Collins', '44, Awoyele street, Agege, Lagos', '1987-05-02', '900-234-1116', '0', null);
INSERT INTO `customers` VALUE ('05', 'Taiwo', 'Adisa', 'Taiwo Adisa', '10, Ajao street, Obalende, Lagos', '1997-06-02', '814-321-8666', '1.0', '102');
INSERT INTO `customers` VALUE ('06', 'Bamidele', 'Ajibade', 'Bigway Paints', '24, Savage street, Fagba, Lagos', '1987-04-02', '916-789-8666', '0', null);
INSERT INTO `customers` VALUE ('07', 'Ayodele', 'Bamise', 'Ziplux', '05, Jonathan Coker street, Fagba, Lagos', '1998-10-02', '802-826-8402', '1.0', '103');
INSERT INTO `customers` VALUE ('08', 'Olorunwa', 'Badmus', 'Badmus Paints and Chemicals', '19, Puposola street, Fagba, Lagos', '1984-07-07', '813-455-5991', '0', null);