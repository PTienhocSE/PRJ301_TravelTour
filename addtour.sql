-- Create the database
CREATE DATABASE PRJ301_TourTravel;

-- Use the newly created database
USE PRJ301_TourTravel;

-- Create the Tour table
go
CREATE TABLE Tour (
    id INT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(255) NOT NULL,
    tour_code NVARCHAR(50) NOT NULL,
    departure_place NVARCHAR(255) NOT NULL,
    travel_time NVARCHAR(50) NOT NULL,
    price NVARCHAR(50) NOT NULL,
    duration NVARCHAR(50) NOT NULL,
    image_path NVARCHAR(255)
);

GO

-- Insert data into the Tour table
INSERT INTO Tour (title, tour_code, departure_place, travel_time, price, duration, image_path) VALUES
('Hue Citadel - Tam Giang Lagoon - Thien Mu Pagoda', 'HUI-1310', 'Hue City', '07:00', 450000, '1 Day', 'https://lh3.googleusercontent.com/pw/AP1GczPAq58-6L8ZQ1M_1vVSPfyrmjgDGtgVuKfluqNXe6mItIRHobGHSKwB6_-YIeUy-mFaRv6Ca6jteJ-mf9n0uEWE8HZ9Jal7x2POLKndQ_S0IGyF86XdBR4mWMx_ws25SsdC8r91fkra9_gXoOmBSPkB=w1130-h749-s-no-gm?authuser=0'),
('Perfume River Cruise - Thien Mu Pagoda - Minh Mang Tomb', 'HUI-1311', 'Hue City', '08:00', 500000, '1 Day', 'https://lh3.googleusercontent.com/pw/AP1GczO5IhI3MLbGF8XwC67L3RhyTkcL5qqOl-w-3RIYy512hjrr2C6XMhTacrAsMKVktWgq0oDJ-z4bFd0xe-lMigXPWQnqdyAZvdgKUFcc6HMi_YsGhEWSi-NosuJWe3Fok7lw-Tel1HdWzjjF3fRU854h=w1455-h970-s-no-gm?authuser=0'),
('Bach Ma National Park - Elephant Springs - Lang Co Beach', 'HUI-1312', 'Hue City', '06:30', 600000, '1 Day', 'https://lh3.googleusercontent.com/pw/AP1GczNmZZan1NmMmNZGriTc8BHe-R96fmYK1cmtn-_vVaFYJXYbGHDG5Nd8QVFyisqFZGR5yd9hpV2gErRS-P702w75c_2HKAVkaAePyXHVJ0EE_UWCh3w3WGGjQFYsM_c1MWJVM0cfKjZovDgZ5bZFb1s1=w747-h500-s-no-gm?authuser=0'),
('DMZ Tour - Khe Sanh Combat Base - Vinh Moc Tunnels', 'HUI-1313', 'Hue City', '07:30', 700000, '1 Day', 'https://lh3.googleusercontent.com/pw/AP1GczOmXXsWMjj0EmNmfi1vm-PxRcNMhSiUuYgltfkxBF17Q6JFQpzCUsxGmvncT0f_bQUluaI0LJTv64frotH4JFBEMFGbENttIVU2eiSp5cIhKBbBB_ug7QHAzgtzM8WDRmTMUs8wyr3yosQUpxkYTQlK=w1455-h970-s-no-gm?authuser=0'),
('Vong Canh Hill - Thanh Toan Bridge - Thuy Bieu Village', 'HUI-1314', 'Hue City', '08:30', 400000, '1 Day', 'https://lh3.googleusercontent.com/pw/AP1GczPl9bIpTDlmIuSkORxSotFbgQuw6nwutrOvm2-eLesKby-5mhz2unWyv9I9cSDd1_tJ22H2rXT2sE4sPe8Af_fNUXWJa7I1pjvZbXzo5kQ8btLYPof40EFS5_0kac7ZBabxdbDT53y2ObLfqEWRCHrT=w1000-h667-s-no-gm?authuser=0'),
('Hue Garden Houses - Phu Cam Conical Hat Village - Dong Ba Market', 'HUI-1315', 'Hue City', '09:00', 420000, '1 Day', 'https://lh3.googleusercontent.com/pw/AP1GczMdRYs7E0KygtM9kp799q5DfJI3C8G-GkhyxEj-1txm4SWBOxstXFjOKymvLe_gXdNcKUUzDhg2TdacqYAINOsDTcNEtCQuuAxvsA6WaZvd17KwMCMiD4lkQj16WOn4OPhg5FjVSlF8N1Mx7dlA1zub=w1350-h900-s-no-gm?authuser=0'),
('Lagoon Life Experience - Chuon Lagoon - Tam Giang Lagoon', 'HUI-1316', 'Hue City', '07:00', 460000, '1 Day', 'https://lh3.googleusercontent.com/pw/AP1GczOV7VjX6CLhTToKZvQpleRngEvFTKeZ-Xms3CGFoNQKcSYuLlDsGIFmk7k7OgmemeLQ5fhbWvrHhaSifeRWxzOcL0Go3bm8TqLU_d6k3zpxcchvFWQyYDj87i-QiWmA7GNRgYBRkLii4a15RMKEkhJ3=w908-h617-s-no-gm?authuser=0'),
('Imperial City Night Tour - Dong Ba Market - Truong Tien Bridge', 'HUI-1317', 'Hue City', '18:00', 480000, '1 Day', 'https://lh3.googleusercontent.com/pw/AP1GczNU3DaR1beaVtW2QsL01rGPyaFo9hOQs9FDe8hi1zV7aknMkfeubKfhcBOkB80i_bBZGlUSszVtz3AjpV4Hed3KbE2vgYPtT5cgV1oi2u6LrP8sawUhpSYf5mtBnIuA2vQrCQ7P-QtVR-p_TRVDhLWT=w900-h600-s-no-gm?authuser=0'),
('Culinary Tour - Dong Ba Market - Thien Mu Pagoda', 'HUI-1318', 'Hue City', '10:00', 520000, '1 Day', 'https://lh3.googleusercontent.com/pw/AP1GczOegiMrmh3spX4gYujsRMN-VtAuWlR8IqLEik-m3jKlVXwitxZAcOt31IDf6zig0UXt_t7KjaRD-aJx65VpOPzyEiHGJl28evLPb01vBje7lh0j284J7kYUiAiYLGZV9-fqYGI3r1DXZSAbTYIVu4WV=w800-h533-s-no-gm?authuser=0'),
('Thanh Toan Bridge - Thuy Bieu Village - Phu Cam Conical Hat Village', 'HUI-1319', 'Hue City', '08:00', 430000, '1 Day', 'https://lh3.googleusercontent.com/pw/AP1GczPl9bIpTDlmIuSkORxSotFbgQuw6nwutrOvm2-eLesKby-5mhz2unWyv9I9cSDd1_tJ22H2rXT2sE4sPe8Af_fNUXWJa7I1pjvZbXzo5kQ8btLYPof40EFS5_0kac7ZBabxdbDT53y2ObLfqEWRCHrT=w1000-h667-s-no?authuser=0'),
('Hoi An Ancient Town - Marble Mountains - My Son Sanctuary', 'EXT-1401', 'Hue City', '06:00', 900000, '2 Days', 'https://lh3.googleusercontent.com/pw/AP1GczM0q275y4IyKY80Mqtc00s4lTOXOUXoNqpaVGSq-2e61HgZhmAsi4ncsg_zXqAV-guOw9b40RWgXlhsmrc93V97FIyll3hWW_R0HeGkiM9imXCvhJEibEAUerLt2Scx8gXaip9kmvGX-jYbj2x9Gw0P=w975-h652-s-no?authuser=0'),
('Da Nang City - Son Tra Peninsula - Ba Na Hills', 'EXT-1402', 'Hue City', '06:30', 1000000, '2 Days', 'https://lh3.googleusercontent.com/pw/AP1GczNChCNLS_uj8YjOH1uCMMCp2NnjqqYTr3OvumauGfcILEAa50sOYxW5Xh1m3bGwOL67zuHtEtOfV4WYUcIWvMxj41a7jeczhnYRU7fRGWfc1ISk_fccldJAw935X0oPMsGaPuOUex6X8ZyZXNSm4DDk=w1200-h800-s-no?authuser=0'),
('Phong Nha Cave - Paradise Cave - Dark Cave', 'EXT-1403', 'Hue City', '05:00', 1200000, '2 Days', 'https://lh3.googleusercontent.com/pw/AP1GczPfJmbBpZfwjQRTRFROEKAcqYdiqPSwMkhjyURdWDR1dizEGoc87C2HxzUyPPtDhbmDW4EeNgNY4m8ivu01xNWutKGzPpbL8MB9Tu9OSOh9KuV2RqFKGzp4H6P-bv4rgvIjt9C24Oh5rOJLoDBuHpk=w1573-h944-s-no?authuser=0'),
('My Lai Massacre Memorial - Tam Ky - Hoi An Ancient Town', 'EXT-1404', 'Hue City', '06:00', 1100000, '2 Days', 'https://lh3.googleusercontent.com/pw/AP1GczNq0KMqCc87Idbde5V2IB3eAlN7kdZNsqAfmMof3BBv4JLHefjC6OaXsJmieAN0eR__NTjeFvOp8D8OcO2fu9h7m8KcoXgHYp_FFOyp2-eoG0pVYDpbLVHp6YE8sXwP-hCAu-zGNyolnp2OTzBWu6WI=w1023-h617-s-no?authuser=0'),
('Bach Ma National Park - Elephant Springs - Lang Co Beach', 'EXT-1405', 'Hue City', '07:00', 800000, '2 Days', 'https://lh3.googleusercontent.com/pw/AP1GczNmZZan1NmMmNZGriTc8BHe-R96fmYK1cmtn-_vVaFYJXYbGHDG5Nd8QVFyisqFZGR5yd9hpV2gErRS-P702w75c_2HKAVkaAePyXHVJ0EE_UWCh3w3WGGjQFYsM_c1MWJVM0cfKjZovDgZ5bZFb1s1=w747-h500-s-no?authuser=0'),
('Vinh Moc Tunnels - Quang Tri Citadel - La Vang Holy Land', 'EXT-1406', 'Hue City', '06:00', 850000, '2 Days', 'https://lh3.googleusercontent.com/pw/AP1GczOmXXsWMjj0EmNmfi1vm-PxRcNMhSiUuYgltfkxBF17Q6JFQpzCUsxGmvncT0f_bQUluaI0LJTv64frotH4JFBEMFGbENttIVU2eiSp5cIhKBbBB_ug7QHAzgtzM8WDRmTMUs8wyr3yosQUpxkYTQlK=w1416-h944-s-no?authuser=0'),
('Singapore City Tour - Gardens by the Bay - Sentosa Island', 'INT-1501', 'Hue City', '08:00', 5000000, '3 days', 'https://lh3.googleusercontent.com/pw/AP1GczO3b8IlODHmKE8d4cP5qKA4JGgQW2_5svwv5KD2Tg1QDWue-tApfCNmR9jWmeuYktt9VjXzr-4JhhBkoo-1YSf2bcLnYufHitlk8W69lBOVmrQQqznn0XVvm3v9csrI65HZn63GhoQcVWe9lcOZD1fP=w620-h380-s-no?authuser=0'),
('Bangkok Exploration - Grand Palace - Chatuchak Market', 'INT-1502', 'Hue City', '07:30', 6500000, '4 days', 'https://lh3.googleusercontent.com/pw/AP1GczO9ZsdCzdTpRSfDJ5kiyuVIL6tOwPvxad3shO-lOkyvwPOxHeqtdbgqtWC8W3lPbaZwXOPNAUXO2pYuHXYghc1ZknRxaVRyswNDjmOE5XrBFu2CDKW9ibYCH3QdC7-qpehQuc3JCZusEs6jARx8ebIW=w1290-h860-s-no?authuser=0'),
('Seoul Highlights - Gyeongbokgung Palace - N Seoul Tower', 'INT-1503', 'Hue City', '09:00', 8000000, '5 days', 'https://lh3.googleusercontent.com/pw/AP1GczON6sy4bj7i9B0UHuDTBAMRk5tX6SLNepo_Ur_9WO7E92oR_0Bb1GqHLzCPFPsEX42LijGZKnwbVZPTN-Ezxj6PXni0qfpViaDzng37H6kBOLOt1bPmGpN2zVvoyx1cLn-nvIuuU0_KAdqHqSrWP0kr=w1200-h800-s-no?authuser=0'),
('Tokyo City Experience - Tokyo Tower - Tsukiji Market', 'INT-1504', 'Hue City', '08:30', 7000000, '4 days', 'https://lh3.googleusercontent.com/pw/AP1GczPEY2F30y2nf6xwMqSNoIkx5hQ77yGdguEDem-SHiPknHDTI-iRDeXyiKSnh-20nzsh1YOz4_aGM0tVaj35RLuD1tjknTH-fkMfo34bSxc5UssV4dnixOvHeIdgwPpdHJi_q7hrKRv2W176GFGhWm0q=w1416-h944-s-no?authuser=0'),
('Sydney Tour - Opera House - Bondi Beach', 'INT-1505', 'Hue City', '10:00', 8500000, '5 days', 'https://lh3.googleusercontent.com/pw/AP1GczPlGWsaleGh_wDL4KpKdySAB0zk4h8d_xvG-Z97Fq6nFzt3rawJPAnreOXAt658eFW0BSeTYUK3vzw6HtXFZXo135PkQ37YWjyfva84BY3tHlJLzHh77-YWNT6ZOmLxe8UCTadH0gpjp16UWSHrTtO1=w1280-h720-s-no?authuser=0'),
('Paris Adventure - Eiffel Tower - Louvre Museum', 'INT-1506', 'Hue City', '09:30', 10000000, '6 days', 'https://lh3.googleusercontent.com/pw/AP1GczOvbo-EPc8BK-tX34QG9e23n8OqFjDERjvpjyYczSIqA1ZJA3iUoV_A87PN2Q6KNhFrx8gqj2C9VZLMR1hAq3_81TWXIs0Fg77Hukd-8l049TiPkb4RmNkoALFAVXNMqyEJLZCW8WNA1Xs3TwpRUNZL=w1000-h669-s-no?authuser=0'),
('London Exploration - Buckingham Palace - Tower of London', 'INT-1507', 'Hue City', '09:00', 12000000, '7 days', 'https://lh3.googleusercontent.com/pw/AP1GczO70p8Fj1Acb2cgTyZXxJUmrf_Z7eJCpqwa6TQXp0WkGhp54KbNphg48z8zfWCNQS8GB1mh9NvORDdZNIJCiNLW2kTTfKSx7PpZyCMG_33He9LkkqCB9OVwJuxFkzDuRNXuCGJi6981uN90tOxMqX-q=w1200-h800-s-no?authuser=0'),
('New York City Tour - Statue of Liberty - Times Square', 'INT-1508', 'Hue City', '10:00', 11000000, '6 days', 'https://lh3.googleusercontent.com/pw/AP1GczOTRHMg_S2rTvjhEU4lA03xwFqVdXUANR2lSqH20EhDvAZzJlcR5jCccsEJ6GVUkeWKK_4TKoSGDGocB_snAGJLVIDkb7M9dGmhEeGDlFS0FKU11LFG9UZP23igntPL4WvNIzdDyJqDD2b_zkaecMho=w1200-h800-s-no?authuser=0'),
('Dubai Experience - Burj Khalifa - Dubai Mall', 'INT-1509', 'Hue City', '11:00', 9000000, '4 days', 'https://lh3.googleusercontent.com/pw/AP1GczMTQFKZHdccOmuzq94j2JfBUW6r_uJ2mu4r82OWpw9MuDQzvd0wzSR8AYJua6SV6rtzvrPHB6BsIfEE_vzmJEPQVPrrRhHYTYeQtm4O9MDetof9r5rwQFeGFE_huf7GFNng4rI9hRf-ntMVJXnYdkE6=w612-h407-s-no?authuser=0'),
('Istanbul Discovery - Hagia Sophia - Grand Bazaar', 'INT-1510', 'Hue City', '09:30', 8500000, '5 days', 'https://lh3.googleusercontent.com/pw/AP1GczMi6u_y0zCQOeL4vNpi2jEuN4EQ_OGcDlcIdtXztOEtPtIwlRPp2KkxF7q9JkSqusVNIqk7HXjnwfG7Qby3Yi7jQ72lh1eWNCF7qq89YGJShunAgP-V3UCsby3P9WimHXEkM1dzyOD5eycTaIJKdfuE=w800-h493-s-no?authuser=0');


USE PRJ301_TourTravel;
SELECT * FROM Tour;

CREATE TABLE Account (
    id INT IDENTITY(1,1) PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    isUser INT DEFAULT 0,
    isAdmin INT DEFAULT 0
);

INSERT INTO Account (firstName, lastName, email, username, password, phone, isUser, isAdmin)
VALUES ('Phuc Tien', 'Tran', 'tientpde180866@fpt.edu.vn', 'tientp', '123456', '386188917', 0, 1);

