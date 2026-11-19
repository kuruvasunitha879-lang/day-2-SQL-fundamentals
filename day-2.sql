CREATE DATABASE projects;
USE projects;

-- 1

--  CREATE
CREATE TABLE courses (
    course_id INT,
    course_code VARCHAR(15),
    course_title VARCHAR(150),
    category VARCHAR(60),
    duration_hours INT,
    fee DECIMAL(10,2),
    discount_percentage DECIMAL(5,2),
    delivery_mode VARCHAR(20),
    start_date DATE,
    class_start_time TIME,
    class_end_time TIME,
    created_at DATETIME
);

DESCRIBE courses;
SHOW CREATE TABLE courses;

-- INSERT


INSERT INTO 
	courses (course_id, course_code, course_title, category, duration_hours, fee, discount_percentage, delivery_mode, start_date, class_start_time, class_end_time, created_at)
VALUES 
	(1, 'CRS-JAVA-101', 'Java Fundamentals', 'Programming', 40, 6500.00, 10.00, 'CLASSROOM', '2026-12-01', '09:00:00', '11:00:00', '2026-11-19 09:00:00');


INSERT INTO 
	courses (course_id, course_code, course_title, category, duration_hours, fee, discount_percentage, delivery_mode, start_date, class_start_time, class_end_time, created_at)
VALUES
(2, 'CRS-SQL-102', 'MySQL Essentials', 'Database', 32, 4500.50, 5.00, 'ONLINE', '2026-12-05', '10:00:00', '12:00:00', '2026-11-19 09:15:00'),
(3, 'CRS-WEB-103', 'Web Development', 'Web Development', 60, 8500.00, 12.50, 'HYBRID', '2027-01-10', '14:00:00', '16:00:00', '2026-11-19 09:30:00');


INSERT INTO
	courses (course_id, course_code, course_title, category, duration_hours, fee, discount_percentage, delivery_mode, start_date, class_start_time, class_end_time, created_at)
VALUES
	(4, 'CRS-TST-104', 'Software Testing', 'Testing', 24, 3500.75, 0.00, 'ONLINE', '2026-12-15', '15:00:00', '17:00:00', '2026-11-19 09:45:00'),
	(5, 'CRS-PYT-105', 'Python Basics', 'Programming', 36, 5500.25, 7.50, 'CLASSROOM', '2027-01-05', '09:30:00', '11:30:00', '2026-11-19 10:00:00');


INSERT INTO 
	courses (course_id, course_code, course_title, category, duration_hours, fee, discount_percentage, delivery_mode, start_date, class_start_time, class_end_time, created_at)
VALUES 
	(6, 'CRS-DSA-106', 'Data Structures and Algorithms', 'Programming', 48, 7200.99, 15.25, 'ONLINE', '2027-01-20', '11:00:00', '13:00:00', '2026-11-19 10:15:00');


INSERT INTO 
	courses (course_id, course_code, course_title, category, duration_hours, fee, discount_percentage, delivery_mode, start_date, class_start_time, class_end_time, created_at)
VALUES 
	(7, 'CRS-EXL-107', 'Excel for Beginners', 'Database', 20, 2999.50, 5.50, 'CLASSROOM', '2026-12-20', '08:30:00', '10:30:00', '2026-11-19 10:30:00');


--  UPDATE

UPDATE courses 
SET 
    fee = 7000.00
WHERE
    course_code = 'CRS-JAVA-101';


UPDATE courses 
SET 
    fee = ROUND(fee + (fee * 8.50 / 100), 2)
WHERE
    delivery_mode = 'ONLINE';


UPDATE courses 
SET 
    delivery_mode = 'ONLINE'
WHERE
    course_code = 'CRS-WEB-103';


UPDATE courses 
SET 
    start_date = '2027-01-15'
WHERE
    course_code = 'CRS-PYT-105';


UPDATE courses 
SET 
    class_start_time = '10:00:00',
    class_end_time = '12:00:00'
WHERE
    delivery_mode = 'CLASSROOM';


UPDATE courses 
SET 
    created_at = '2026-11-20 11:00:00'
WHERE
    course_code = 'CRS-JAVA-101';
    
    
-- 2.Instructor Directory

--  CREATE
CREATE TABLE instructors (
    instructor_id INT,
    instructor_code VARCHAR(12),
    first_name VARCHAR(60),
    last_name VARCHAR(60),
    email VARCHAR(120),
    specialization VARCHAR(100),
    years_experience INT,
    hourly_rate DECIMAL(8,2),
    employment_type VARCHAR(20),
    joined_on DATE,
    work_start_time TIME,
    work_end_time TIME,
    created_at DATETIME
);

DESCRIBE instructors;
SHOW CREATE TABLE instructors;

--  INSERT 


INSERT INTO 
	instructors (instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, joined_on, work_start_time, work_end_time, created_at)
VALUES 
	(1, 'INS-JV-001', 'Kavya', 'Menon', 'kavya.menon@example.test', 'Java', 8, 1500.50, 'FULL_TIME', '2021-06-14', '09:00:00', '18:00:00', '2026-11-19 09:00:00');


INSERT INTO 
	instructors (instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, joined_on, work_start_time, work_end_time, created_at)
VALUES
	(2, 'INS-DB-002', 'Ritesh', 'Kumar', 'ritesh.kumar@example.test', 'Databases', 12, 1800.75, 'CONTRACT', '2019-02-01', '10:00:00', '19:00:00', '2026-11-19 09:15:00'),
	(3, 'INS-WB-003', 'Farah', 'Ali', 'farah.ali@example.test', 'Web Development', 5, 1200.00, 'PART_TIME', '2023-08-21', '14:00:00', '18:00:00', '2026-11-19 09:30:00');


INSERT INTO 
	instructors (instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, joined_on, work_start_time, work_end_time, created_at)
VALUES
	(4, 'INS-QA-004', 'Nitin', 'Bose', 'nitin.bose@example.test', 'Software Testing', 7, 1350.25, 'PART_TIME', '2022-01-10', '09:30:00', '13:30:00', '2026-11-19 09:45:00'),
	(5, 'INS-PY-005', 'Leela', 'Shah', 'leela.shah@example.test', 'Python', 10, 1650.00, 'FULL_TIME', '2020-05-17', '09:00:00', '18:00:00', '2026-11-19 10:00:00');


INSERT INTO
	instructors (instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, joined_on, work_start_time, work_end_time, created_at)
VALUES 
	(6, 'INS-TR-006', 'Arjun', 'Nair', 'arjun.nair@example.test', 'Java', 0, 800.00, 'CONTRACT', '2026-11-19', '10:00:00', '14:00:00', '2026-11-19 10:15:00');


INSERT INTO 
	instructors (instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, joined_on, work_start_time, work_end_time, created_at)
VALUES 
	(7, 'INS-UI-007', 'Meera', 'Bose', 'meera.bose@example.test', 'UI Design', 4, 1150.75, 'PART_TIME', '2024-03-11', '11:00:00', '15:00:00', '2026-11-19 10:30:00');

--  UPDATE

UPDATE instructors 
SET 
    hourly_rate = 1500.75
WHERE
    instructor_code = 'INS-QA-004';


UPDATE instructors 
SET 
    hourly_rate = ROUND(hourly_rate + (hourly_rate * 10 / 100),
            2)
WHERE
    employment_type = 'FULL_TIME';


UPDATE instructors 
SET 
    specialization = 'Full-Stack Web Development'
WHERE
    instructor_code = 'INS-WB-003';


UPDATE instructors 
SET 
    joined_on = '2020-06-01'
WHERE
    instructor_code = 'INS-PY-005';


UPDATE instructors 
SET 
    work_start_time = '10:00:00',
    work_end_time = '14:00:00'
WHERE
    employment_type = 'PART_TIME';


UPDATE instructors 
SET 
    created_at = '2026-11-20 11:00:00'
WHERE
    instructor_code = 'INS-JV-001';
    
    
-- 3.Warehouse Capacity Register

--  CREATE
CREATE TABLE warehouses (
    warehouse_id INT,
    warehouse_code VARCHAR(10),
    warehouse_name VARCHAR(100),
    city VARCHAR(80),
    state VARCHAR(80),
    capacity_units INT,
    occupied_units INT,
    monthly_rent DECIMAL(12,2),
    temperature_controlled INT,
    operational_status VARCHAR(20),
    opening_time TIME,
    closing_time TIME,
    last_inspection DATE,
    created_at DATETIME
);

DESCRIBE warehouses;
SHOW CREATE TABLE warehouses;

-- INSERT

INSERT INTO 
	warehouses
VALUES 
	(1, 'WH-BLR-01', 'Bengaluru Central', 'Bengaluru', 'Karnataka', 10000, 6400, 125000.50, 0, 'ACTIVE', '08:00:00', '20:00:00', '2026-10-01', '2026-11-19 09:00:00');

INSERT INTO 
	warehouses
VALUES
	(2, 'WH-HYD-02', 'Hyderabad North', 'Hyderabad', 'Telangana', 8000, 7900, 98000.00, 1, 'ACTIVE', '07:00:00', '22:00:00', '2026-09-15', '2026-11-19 09:15:00'),
	(3, 'WH-MUM-03', 'Mumbai Port Store', 'Mumbai', 'Maharashtra', 15000, 9000, 175500.75, 0, 'MAINTENANCE', '09:00:00', '18:00:00', '2026-08-20', '2026-11-19 09:30:00');

INSERT INTO 
	warehouses 
VALUES
	(4, 'WH-KOC-04', 'Kochi Cold Hub', 'Kochi', 'Kerala', 6000, 3200, 85000.25, 1, 'ACTIVE', '06:00:00', '21:00:00', '2026-10-10', '2026-11-19 09:45:00'),
	(5, 'WH-PUN-05', 'Pune Distribution Hub', 'Pune', 'Maharashtra', 5000, 2500, 75000.00, 0, 'ACTIVE', '08:30:00', '19:30:00', '2026-10-25', '2026-11-19 10:00:00');

INSERT INTO 
	warehouses 
VALUES 
	(6, 'WH-CHE-06', 'Chennai South Hub', 'Chennai', 'Tamil Nadu', 7000, 4000, 92500.99, 1, 'ACTIVE', '08:00:00', '20:00:00', '2026-10-18', '2026-11-19 10:15:00');

INSERT INTO warehouses VALUES (7, 'WH-DEL-07', 'Delhi Early Hub', 'Delhi', 'Delhi', 9000, 5500, 110000.00, 0, 'ACTIVE', '06:30:00', '20:30:00', '2026-10-22', '2026-11-19 10:30:00');

-- UPDATE

UPDATE warehouses 
SET 
    occupied_units = occupied_units + 500
WHERE
    warehouse_code = 'WH-BLR-01';

UPDATE warehouses 
SET 
    occupied_units = occupied_units - 1000
WHERE
    warehouse_code = 'WH-HYD-02';

UPDATE warehouses 
SET 
    operational_status = 'ACTIVE'
WHERE
    warehouse_code = 'WH-MUM-03';

UPDATE warehouses 
SET 
    monthly_rent = ROUND(monthly_rent + (monthly_rent * 5.50 / 100),
            2)
WHERE
    temperature_controlled = 1;

UPDATE warehouses 
SET 
    last_inspection = '2026-11-15'
WHERE
    warehouse_code = 'WH-KOC-04';

UPDATE warehouses 
SET 
    opening_time = '07:00:00',
    closing_time = '21:00:00'
WHERE
    operational_status = 'ACTIVE';
    
    
-- 4.Shipment Tracking Register

--  CREATE
CREATE TABLE shipments (
    shipment_id INT,
    tracking_number VARCHAR(20),
    sender_name VARCHAR(120),
    recipient_name VARCHAR(120),
    destination_city VARCHAR(80),
    package_weight_kg DECIMAL(8,3),
    shipping_cost DECIMAL(10,2),
    shipped_date DATE,
    shipped_time TIME,
    expected_delivery_date DATE,
    delivered_at DATETIME,
    shipment_status VARCHAR(20),
    priority VARCHAR(10),
    created_at DATETIME
);

DESCRIBE shipments;
SHOW CREATE TABLE shipments;

-- INSERT

INSERT INTO shipments VALUES (1, 'TRK26000001', 'Asha Stores', 'Nitin Rao', 'Chennai', 2.500, 180.50, '2026-11-10', '09:30:00', '2026-11-14', NULL, 'IN_TRANSIT', 'NORMAL', '2026-11-19 09:00:00');

INSERT INTO shipments VALUES (2, 'TRK26000002', 'Nova Tech', 'Isha Sen', 'Bengaluru', 0.800, 250.75, '2026-11-11', '11:15:00', '2026-11-13', '2026-11-13 15:30:00', 'DELIVERED', 'EXPRESS', '2026-11-19 09:15:00');

INSERT INTO shipments VALUES (3, 'TRK26000003', 'Book Nest', 'Omar Ali', 'Kochi', 4.200, 220.00, '2026-11-12', '14:00:00', '2026-11-17', NULL, 'CREATED', 'NORMAL', '2026-11-19 09:30:00');

INSERT INTO shipments VALUES
(4, 'TRK26000004', 'Green Foods', 'Meera Das', 'Hyderabad', 12.000, 550.50, '2026-11-12', '08:45:00', '2026-11-15', NULL, 'IN_TRANSIT', 'EXPRESS', '2026-11-19 09:45:00'),
(5, 'TRK26000005', 'Test Sender', 'Test Receiver', 'Pune', 1.000, 100.25, '2026-11-13', '16:30:00', '2026-11-16', NULL, 'CANCELLED', 'NORMAL', '2026-11-19 10:00:00');

INSERT INTO shipments VALUES (6, 'TRK26000006', 'City Mart', 'Arjun Nair', 'Mumbai', 0.750, 150.00, '2026-11-14', '10:00:00', '2026-11-17', NULL, 'CREATED', 'NORMAL', '2026-11-19 10:15:00');

-- UPDATE

UPDATE shipments 
SET 
    shipment_status = 'DELIVERED',
    delivered_at = '2026-11-14 16:00:00'
WHERE
    tracking_number = 'TRK26000001';

UPDATE shipments 
SET 
    shipment_status = 'IN_TRANSIT'
WHERE
    tracking_number = 'TRK26000003';

UPDATE shipments 
SET 
    shipping_cost = shipping_cost + 50.00
WHERE
    priority = 'EXPRESS';

UPDATE shipments 
SET 
    expected_delivery_date = '2026-11-18'
WHERE
    tracking_number = 'TRK26000004';

UPDATE shipments 
SET 
    shipped_time = '10:30:00'
WHERE
    tracking_number = 'TRK26000003';

UPDATE shipments 
SET 
    delivered_at = '2026-11-13 16:00:00'
WHERE
    tracking_number = 'TRK26000002';
    
    
--  5.Service Subscription Register

-- CREATE
CREATE TABLE subscriptions (
    subscription_id INT,
    subscription_code VARCHAR(16),
    subscriber_name VARCHAR(120),
    subscriber_email VARCHAR(120),
    plan_name VARCHAR(60),
    billing_cycle VARCHAR(20),
    amount DECIMAL(10,2),
    start_date DATE,
    end_date DATE,
    renewal_time TIME,
    last_payment_at DATETIME,
    auto_renew INT,
    subscription_status VARCHAR(20),
    created_at DATETIME
);

DESCRIBE subscriptions;
SHOW CREATE TABLE subscriptions;

-- INSERT 

INSERT INTO subscriptions VALUES
(1, 'SUB260001', 'Aarav Nair', 'aarav.nair@example.test', 'Standard', 'MONTHLY', 499.00, '2026-11-01', '2026-11-30', '01:00:00', '2026-11-01 01:05:00', 1, 'ACTIVE', '2026-11-19 09:00:00'),
(2, 'SUB260002', 'Diya Shah', 'diya.shah@example.test', 'Premium', 'YEARLY', 4999.50, '2026-01-15', '2027-01-14', '02:00:00', '2026-11-15 02:10:00', 1, 'ACTIVE', '2026-11-19 09:15:00');

INSERT INTO subscriptions VALUES (3, 'SUB260003', 'Kabir Rao', 'kabir.rao@example.test', 'Basic', 'MONTHLY', 199.00, '2026-11-10', '2026-12-09', '03:00:00', '2026-11-10 03:05:00', 1, 'ACTIVE', '2026-11-19 09:30:00');

INSERT INTO subscriptions VALUES
(4, 'SUB260004', 'Meera Bose', 'meera.bose@example.test', 'Premium', 'QUARTERLY', 1399.75, '2026-10-01', '2026-12-31', '04:00:00', '2026-10-01 04:15:00', 0, 'PAUSED', '2026-11-19 09:45:00'),
(5, 'SUB260005', 'Rohan Das', 'rohan.das@example.test', 'Standard', 'MONTHLY', 499.00, '2026-08-01', '2026-08-31', '01:30:00', '2026-08-01 01:35:00', 0, 'CANCELLED', '2026-11-19 10:00:00');

INSERT INTO subscriptions VALUES (6, 'SUB260006', 'Isha Sen', 'isha.sen@example.test', 'Premium', 'MONTHLY', 899.99, '2026-11-15', '2026-12-14', '02:30:00', '2026-11-15 02:35:00', 1, 'ACTIVE', '2026-11-19 10:15:00');

INSERT INTO subscriptions VALUES (7, 'SUB260007', 'Nitin Rao', 'nitin.rao@example.test', 'Basic', 'MONTHLY', 199.00, '2026-11-18', '2026-12-17', '05:30:00', '2026-11-18 05:35:00', 1, 'ACTIVE', '2026-11-19 10:30:00');

-- UPDATE
UPDATE subscriptions 
SET 
    plan_name = 'Premium',
    amount = 799.50
WHERE
    subscription_code = 'SUB260001';

UPDATE subscriptions 
SET 
    subscription_status = 'ACTIVE',
    auto_renew = 1
WHERE
    subscription_code = 'SUB260004';

UPDATE subscriptions 
SET 
    amount = ROUND(amount + (amount * 5.00 / 100), 2)
WHERE
    billing_cycle = 'MONTHLY'
        AND subscription_status = 'ACTIVE';

UPDATE subscriptions 
SET 
    subscription_status = 'CANCELLED',
    auto_renew = 0,
    end_date = '2026-11-19'
WHERE
    subscription_code = 'SUB260003';

UPDATE subscriptions 
SET 
    renewal_time = '02:30:00'
WHERE
    billing_cycle = 'YEARLY';

UPDATE subscriptions 
SET 
    last_payment_at = '2026-11-19 02:20:00'
WHERE
    subscription_code = 'SUB260002';


-- 6.Event Schedule

-- CREATE

CREATE TABLE events (
    event_id INT,
    event_code VARCHAR(15),
    event_name VARCHAR(150),
    venue VARCHAR(150),
    city VARCHAR(80),
    start_date DATE,
    end_date DATE,
    start_time TIME,
    end_time TIME,
    capacity INT,
    registration_fee DECIMAL(10,2),
    event_type VARCHAR(20),
    event_status VARCHAR(20),
    created_at DATETIME
);

DESCRIBE events;
SHOW CREATE TABLE events;

-- B. INSERT

INSERT INTO events VALUES (1, 'EVT-JAVA-01', 'Java Developer Meetup', 'Tech Hall', 'Bengaluru', '2026-12-10', '2026-12-10', '09:00:00', '17:00:00', 250, 500.00, 'OFFLINE', 'OPEN', '2026-11-19 09:00:00');

INSERT INTO events VALUES
(2, 'EVT-CLOUD-02', 'Cloud Fundamentals Webinar', 'Online Platform', 'Online', '2026-12-12', '2026-12-12', '10:00:00', '12:00:00', 1000, 0.00, 'ONLINE', 'OPEN', '2026-11-19 09:15:00'),
(3, 'EVT-DATA-03', 'Data Engineering Summit', 'Convention Centre', 'Hyderabad', '2027-01-05', '2027-01-06', '09:30:00', '18:00:00', 600, 2500.50, 'HYBRID', 'PLANNED', '2026-11-19 09:30:00');

INSERT INTO events VALUES (4, 'EVT-UI-04', 'UI Design Workshop', 'Creative Hub', 'Chennai', '2026-12-20', '2026-12-20', '14:00:00', '17:30:00', 80, 1200.75, 'OFFLINE', 'PLANNED', '2026-11-19 09:45:00');

INSERT INTO events VALUES (5, 'EVT-PY-05', 'Python Bootcamp', 'Learning Centre', 'Pune', '2027-01-10', '2027-01-12', '09:00:00', '16:00:00', 100, 1800.00, 'OFFLINE', 'OPEN', '2026-11-19 10:00:00');

INSERT INTO events VALUES (6, 'EVT-AI-06', 'AI Basics Seminar', 'Tech Hall', 'Mumbai', '2027-01-15', '2027-01-15', '11:00:00', '14:00:00', 150, 999.99, 'OFFLINE', 'OPEN', '2026-11-19 10:15:00');

-- C. UPDATE
UPDATE events 
SET 
    capacity = 750
WHERE
    event_code = 'EVT-DATA-03';

UPDATE events 
SET 
    event_status = 'OPEN'
WHERE
    event_code = 'EVT-UI-04';

UPDATE events 
SET 
    registration_fee = ROUND(registration_fee + (registration_fee * 10.00 / 100),
            2)
WHERE
    event_type = 'OFFLINE'
        AND registration_fee > 0;

UPDATE events 
SET 
    start_date = '2026-12-13',
    end_date = '2026-12-13'
WHERE
    event_code = 'EVT-CLOUD-02';

UPDATE events 
SET 
    start_time = '10:00:00'
WHERE
    event_code = 'EVT-JAVA-01';

UPDATE events 
SET 
    created_at = '2026-11-20 11:00:00'
WHERE
    event_code = 'EVT-JAVA-01';
    
    
-- 7.Organisation Device Register

-- A. CREATE
CREATE TABLE devices (
    device_id INT,
    asset_tag VARCHAR(20),
    serial_number VARCHAR(50),
    device_name VARCHAR(120),
    device_type VARCHAR(20),
    manufacturer VARCHAR(80),
    model VARCHAR(100),
    purchase_date DATE,
    purchase_price DECIMAL(12,2),
    warranty_expiry DATE,
    last_maintenance_at DATETIME,
    maintenance_cost DECIMAL(10,2),
    device_status VARCHAR(20),
    created_at DATETIME
);

DESCRIBE devices;
SHOW CREATE TABLE devices;

-- B. INSERT

INSERT INTO devices VALUES (1, 'AST-LAP-001', 'SN-LAP-260001', 'Developer Laptop', 'LAPTOP', 'Lenovo', 'ThinkPad E14', '2026-01-15', 78000.50, '2029-01-14', '2026-10-10 10:30:00', 1500.00, 'ASSIGNED', '2026-11-19 09:00:00');

INSERT INTO devices VALUES
(2, 'AST-DES-002', 'SN-DES-260002', 'Lab Desktop', 'DESKTOP', 'Dell', 'OptiPlex 7010', '2025-08-10', 62000.00, '2028-08-09', '2026-09-15 11:00:00', 900.50, 'AVAILABLE', '2026-11-19 09:15:00'),
(3, 'AST-TAB-003', 'SN-TAB-260003', 'Demo Tablet', 'TABLET', 'Samsung', 'Galaxy Tab S9', '2026-03-05', 68000.75, '2028-03-04', '2026-10-20 12:00:00', 500.00, 'AVAILABLE', '2026-11-19 09:30:00');

INSERT INTO devices VALUES
(4, 'AST-RTR-004', 'SN-RTR-260004', 'Office Router', 'ROUTER', 'Cisco', 'RV340', '2024-06-20', 28000.00, '2027-06-19', '2026-11-01 09:15:00', 2500.75, 'REPAIR', '2026-11-19 09:45:00'),
(5, 'AST-PHN-005', 'SN-PHN-260005', 'Retired Phone', 'PHONE', 'Nokia', 'Test Model', '2020-01-10', 8000.00, '2021-01-09', '2025-12-10 14:00:00', 300.00, 'RETIRED', '2026-11-19 10:00:00');

INSERT INTO devices VALUES (6, 'AST-LAP-006', 'SN-LAP-260006', 'Manager Laptop', 'LAPTOP', 'HP', 'ProBook 450', '2026-05-12', 84500.99, '2029-05-11', '2026-11-10 10:00:00', 1200.00, 'AVAILABLE', '2026-11-19 10:15:00');

INSERT INTO devices VALUES (7, 'AST-TAB-007', 'SN-TAB-260007', 'Training Tablet', 'TABLET', 'Apple', 'iPad 10th Gen', '2026-06-20', 45900.00, '2028-06-19', '2026-11-12 11:30:00', 0.00, 'AVAILABLE', '2026-11-19 10:30:00');

-- C. UPDATE
UPDATE devices SET device_status = 'ASSIGNED' WHERE asset_tag = 'AST-DES-002';

UPDATE devices SET device_status = 'AVAILABLE' WHERE asset_tag = 'AST-RTR-004';

UPDATE devices SET warranty_expiry = '2030-01-14' WHERE asset_tag = 'AST-LAP-001';

UPDATE devices SET purchase_price = ROUND(purchase_price + (purchase_price * 3.00 / 100), 2) WHERE device_type = 'TABLET';

UPDATE devices SET last_maintenance_at = '2026-11-19 12:30:00' WHERE asset_tag = 'AST-TAB-003';

UPDATE devices SET maintenance_cost = 1750.50 WHERE asset_tag = 'AST-RTR-004';


-- 8.Restaurant Directory

-- A. CREATE
CREATE TABLE restaurants (
    restaurant_id INT,
    restaurant_code VARCHAR(12),
    restaurant_name VARCHAR(120),
    cuisine_type VARCHAR(80),
    city VARCHAR(80),
    phone VARCHAR(15),
    seating_capacity INT,
    average_cost_for_two DECIMAL(10,2),
    rating DECIMAL(3,2),
    opening_time TIME,
    closing_time TIME,
    opened_date DATE,
    last_review_at DATETIME,
    opening_status VARCHAR(25)
);

DESCRIBE restaurants;
SHOW CREATE TABLE restaurants;

-- B. INSERT

INSERT INTO restaurants VALUES (1, 'RES-BLR-001', 'Spice Courtyard', 'Indian', 'Bengaluru', '9876601001', 80, 1200.50, 4.40, '11:00:00', '23:00:00', '2018-06-15', '2026-11-10 18:30:00', 'OPEN');

INSERT INTO restaurants VALUES
(2, 'RES-CHE-002', 'Green Banana Leaf', 'South Indian', 'Chennai', '9876601002', 60, 700.75, 4.60, '08:00:00', '22:00:00', '2020-02-10', '2026-11-12 12:00:00', 'OPEN'),
(3, 'RES-MUM-003', 'Coastal Plate', 'Seafood', 'Mumbai', '9876601003', 100, 1800.00, 4.20, '12:00:00', '23:30:00', '2017-09-21', '2026-11-11 20:00:00', 'OPEN');

INSERT INTO restaurants VALUES (4, 'RES-HYD-004', 'Urban Bowl', 'Fusion', 'Hyderabad', '9876601004', 45, 950.50, 4.00, '10:00:00', '22:30:00', '2026-01-12', '2026-11-14 13:45:00', 'OPEN');

INSERT INTO restaurants VALUES (5, 'RES-PUN-005', 'The Coffee Table', 'Cafe', 'Pune', '9876601005', 35, 450.25, 4.30, '07:00:00', '21:00:00', '2022-05-01', '2026-11-13 10:15:00', 'OPEN');

INSERT INTO restaurants VALUES (6, 'RES-DEL-006', 'Delhi Spice House', 'North Indian', 'Delhi', '9876601006', 70, 1100.00, 3.85, '11:30:00', '23:00:00', '2019-08-20', '2026-11-15 19:00:00', 'OPEN');

-- C. UPDATE
UPDATE restaurants SET rating = 4.55 WHERE restaurant_code = 'RES-BLR-001';

UPDATE restaurants SET average_cost_for_two = ROUND(average_cost_for_two + (average_cost_for_two * 10.00 / 100), 2) WHERE city = 'Mumbai';

UPDATE restaurants SET rating = 4.25 WHERE restaurant_code = 'RES-HYD-004';

UPDATE restaurants SET opening_time = '10:00:00' WHERE opening_status = 'OPEN';

UPDATE restaurants SET last_review_at = '2026-11-19 14:30:00' WHERE restaurant_code = 'RES-CHE-002';

UPDATE restaurants SET seating_capacity = seating_capacity + 10 WHERE seating_capacity < 60;

-- 9.Insurance Policy Register

-- A. CREATE
CREATE TABLE insurance_policies (
    policy_id INT,
    policy_number VARCHAR(14),
    policyholder_name VARCHAR(120),
    policy_type VARCHAR(20),
    coverage_amount DECIMAL(14,2),
    premium_amount DECIMAL(10,2),
    start_date DATE,
    end_date DATE,
    payment_frequency VARCHAR(20),
    payment_time TIME,
    last_payment_at DATETIME,
    nominee_name VARCHAR(120),
    policy_status VARCHAR(20),
    created_at DATETIME
);

DESCRIBE insurance_policies;
SHOW CREATE TABLE insurance_policies;

-- B. INSERT

INSERT INTO insurance_policies VALUES
(1, 'POL00000000001', 'Aditi Rao', 'HEALTH', 1000000.00, 18000.50, '2026-01-01', '2026-12-31', 'ANNUAL', '09:00:00', '2026-01-01 09:05:00', 'Rohan Rao', 'ACTIVE', '2026-11-19 09:00:00'),
(2, 'POL00000000002', 'Dev Kapoor', 'VEHICLE', 800000.00, 22000.75, '2026-04-15', '2027-04-14', 'QUARTERLY', '10:00:00', '2026-10-15 10:15:00', NULL, 'ACTIVE', '2026-11-19 09:15:00');

INSERT INTO insurance_policies VALUES (3, 'POL00000000003', 'Meera Nair', 'LIFE', 5000000.00, 36000.00, '2026-06-01', '2046-05-31', 'ANNUAL', '11:00:00', '2026-06-01 11:05:00', 'Arun Nair', 'ACTIVE', '2026-11-19 09:30:00');

INSERT INTO insurance_policies VALUES
(4, 'POL00000000004', 'Kabir Shah', 'TRAVEL', 500000.00, 4500.50, '2026-10-01', '2026-10-31', 'MONTHLY', '08:30:00', '2026-10-01 08:35:00', NULL, 'ACTIVE', '2026-11-19 09:45:00'),
(5, 'POL00000000005', 'Sara Das', 'HOME', 2000000.00, 15000.25, '2025-01-01', '2025-12-31', 'ANNUAL', '12:00:00', '2025-01-01 12:05:00', NULL, 'CANCELLED', '2026-11-19 10:00:00');

INSERT INTO insurance_policies VALUES (6, 'POL00000000006', 'Nitin Rao', 'HEALTH', 1500000.00, 24500.99, '2026-11-01', '2027-10-31', 'ANNUAL', '09:30:00', '2026-11-01 09:35:00', 'Isha Rao', 'ACTIVE', '2026-11-19 10:15:00');

INSERT INTO insurance_policies VALUES (7, 'POL00000000007', 'Isha Sen', 'TRAVEL', 300000.00, 3200.50, '2026-12-01', '2026-12-31', 'MONTHLY', '15:30:00', '2026-12-01 15:35:00', NULL, 'ACTIVE', '2026-11-19 10:30:00');

-- C. UPDATE
UPDATE insurance_policies SET coverage_amount = 1250000.00 WHERE policy_number = 'POL00000000001';

UPDATE insurance_policies SET nominee_name = 'Sara Kapoor' WHERE policy_number = 'POL00000000002';

UPDATE insurance_policies SET premium_amount = ROUND(premium_amount + (premium_amount * 5.00 / 100), 2) WHERE policy_type = 'VEHICLE' AND policy_status = 'ACTIVE';

UPDATE insurance_policies SET payment_frequency = 'ANNUAL' WHERE policy_number = 'POL00000000004';

UPDATE insurance_policies SET last_payment_at = '2026-11-19 11:10:00' WHERE policy_number = 'POL00000000003';

UPDATE insurance_policies SET end_date = '2027-05-14' WHERE policy_number = 'POL00000000002';


-- 10.Job Posting Board

-- A. CREATE
CREATE TABLE job_postings (
    job_id INT,
    job_code VARCHAR(15),
    job_title VARCHAR(150),
    department VARCHAR(100),
    location VARCHAR(100),
    employment_type VARCHAR(20),
    minimum_salary DECIMAL(12,2),
    maximum_salary DECIMAL(12,2),
    vacancies INT,
    posted_date DATE,
    closing_date DATE,
    interview_start_time TIME,
    interview_end_time TIME,
    last_updated_at DATETIME,
    job_status VARCHAR(20)
);

DESCRIBE job_postings;
SHOW CREATE TABLE job_postings;

-- B. INSERT

INSERT INTO job_postings VALUES
(1, 'JOB-JAVA-001', 'Java Developer', 'Engineering', 'Bengaluru', 'FULL_TIME', 700000.00, 1200000.00, 3, '2026-11-01', '2026-12-01', '10:00:00', '12:00:00', '2026-11-19 09:00:00', 'OPEN'),
(2, 'JOB-QA-002', 'QA Automation Engineer', 'Quality Assurance', 'Hyderabad', 'CONTRACT', 600000.50, 900000.00, 2, '2026-11-02', '2026-11-25', '14:00:00', '16:00:00', '2026-11-19 09:15:00', 'OPEN');

INSERT INTO job_postings VALUES (3, 'JOB-INT-003', 'Software Intern', 'Engineering', 'Chennai', 'INTERNSHIP', 180000.00, 240000.00, 5, '2026-11-03', '2026-11-20', '09:00:00', '11:00:00', '2026-11-19 09:30:00', 'OPEN');

INSERT INTO job_postings VALUES
(4, 'JOB-HR-004', 'HR Coordinator', 'Human Resources', 'Mumbai', 'PART_TIME', 300000.00, 450000.75, 1, '2026-11-04', '2026-11-28', '11:00:00', '13:00:00', '2026-11-19 09:45:00', 'DRAFT'),
(5, 'JOB-OLD-005', 'Cancelled Test Role', 'Training', 'Pune', 'FULL_TIME', 250000.00, 350000.00, 1, '2026-10-01', '2026-10-15', '15:00:00', '17:00:00', '2026-11-19 10:00:00', 'CANCELLED');

INSERT INTO job_postings VALUES (6, 'JOB-DATA-006', 'Data Analyst', 'Analytics', 'Hyderabad', 'FULL_TIME', 550000.75, 850000.50, 2, '2026-11-10', '2026-12-10', '10:00:00', '12:00:00', '2026-11-19 10:15:00', 'OPEN');

INSERT INTO job_postings VALUES (7, 'JOB-DES-007', 'UI Designer', 'Design', 'Bengaluru', 'FULL_TIME', 450000.00, 700000.00, 1, '2026-11-12', '2026-12-05', '09:30:00', '11:30:00', '2026-11-19 10:30:00', 'OPEN');

-- C. UPDATE
UPDATE job_postings SET maximum_salary = 1300000.00 WHERE job_code = 'JOB-JAVA-001';

UPDATE job_postings SET vacancies = 4 WHERE job_code = 'JOB-QA-002';

UPDATE job_postings SET job_status = 'OPEN' WHERE job_code = 'JOB-HR-004';

UPDATE job_postings SET minimum_salary = ROUND(minimum_salary + (minimum_salary * 8.00 / 100), 2), maximum_salary = ROUND(maximum_salary + (maximum_salary * 8.00 / 100), 2) WHERE department = 'Engineering' AND job_status = 'OPEN';

UPDATE job_postings SET closing_date = '2026-11-30' WHERE job_code = 'JOB-INT-003';

UPDATE job_postings SET interview_start_time = '14:00:00', interview_end_time = '16:00:00' WHERE job_code = 'JOB-JAVA-001';

UPDATE job_postings SET last_updated_at = '2026-11-19 15:00:00' WHERE job_code = 'JOB-JAVA-001';