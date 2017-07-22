USE vg;

INSERT INTO users(email, password, role_mask) VALUES
("gleb.streltsov.4by@gmail.com", "f0ac2325b6bd0302bcd8862ca5852f99dcfe5a91", 11),
("vi.veronikasanko@gmail.com", "f0ac2325b6bd0302bcd8862ca5852f99dcfe5a91", 11);

INSERT INTO profiles(id_user, first_name, last_name, position, city, status) VALUES
  (1, 'Gleb', 'Streltsov', 'Junior Java Developer', 'Minsk', ':)'),
  (2, 'Veronika', 'Sanko', 'Junior Java Developer', 'Warsaw', 'Hi)');