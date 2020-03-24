CREATE TABLE `t_librarian` (
  `id` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `test`.`t_librarian` (`id`, `userName`, `password`, `age`, `position`) VALUES ('1', 'aaa', '111', '30', 'aaa-postion');
INSERT INTO `test`.`t_librarian` (`id`, `userName`, `password`, `age`, `position`) VALUES ('2', 'bbb', '222', '40', 'bbb-postion');
