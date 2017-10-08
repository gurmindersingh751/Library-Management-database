

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Create `adminmaster` table
--
CREATE TABLE `adminmaster` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP ,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `postal_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Insert data into `adminmaster`
--

INSERT INTO `adminmaster` (`id`, `username`, `email`, `password`, `date`, `address`, `city`,`province`,`postal_code`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin@123', '2017-10-08 14:17:44', '105 saddletree trail','Brampton','Ontario','L6X4N1');

--
-- Create 'bookmaster' table
--

CREATE TABLE `bookmaster` (
  `book_id` int(20) NOT NULL,
  `booktitle` varchar(40) NOT NULL,
  `author` varchar(20) NOT NULL,
  `publisher` varchar(40) NOT NULL,
  `edition` varchar(40) NOT NULL,
  `isbnno` int(10) NOT NULL,
  `price` float(40) NOT NULL,
  `noofcopies` int(10) NOT NULL
 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Insert data into `bookmaster`
--

INSERT INTO `bookmaster` (`book_id`, `booktitle`, `author`, `publisher`, `edition`, `isbnno`, `price`, `noofcopies`) VALUES
(4,'Love Story', 'Gurminder singh', 'Gurminder singh', '1st edition', '6474651911', '250', '100');


--
-- Create 'studentmaster' table
--


CREATE TABLE `studentmaster` (
  `student_id` int(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `birthdate` varchar(20) NOT NULL,  
  `email` varchar(40) NOT NULL,
  `course` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `province` varchar(10) NOT NULL,
  `postalcode` varchar(40) NOT NULL,
  `websitelink` varchar(20) NOT NULL
 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Insert data into `studentmaster`
--

INSERT INTO `studentmaster` (`student_id`, `name`, `gender`, `birthdate`, `email`, `course`, `address`, `city`, `province`, `postalcode`, `websitelink`) VALUES
(4,'Gurminder singh', 'male', '1995/01/29', 'gurminder290195@gmail.com', 'MADT', '105 saddletree trail','Brampton','Ontario','L6X4N1','www.gurminder.com');



--
-- Create 'libraryusermaster' table
--


CREATE TABLE `libraryusermaster` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `accountcreationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Insert data into `libraryusermaster`
--

INSERT INTO `libraryusermaster` (`user_id`, `password`, `accountcreationdate`) VALUES
('admin', 'admin@123', '2017-10-08 14:17:44');


--
-- Create 'returnmaster' table
--


CREATE TABLE `returnmaster` (
  `book_id` int(20) NOT NULL,
  `student_id` int(40) NOT NULL,
  `fromdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `todate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(40) NOT NULL
 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Insert data into `returnmaster`
--

INSERT INTO `returnmaster` (`book_id`, `student_id`, `fromdate`, `todate`, `description`) VALUES
(4, 4, '2017-10-08 14:17:44','2017-10-23 14:17:44', 'PHP Development book');

--
-- Indexes for table `adminmaster`
--
ALTER TABLE `adminmaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmaster`
--
ALTER TABLE `bookmaster`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `studentmaster`
--
ALTER TABLE `studentmaster`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `libraryusermaster`
--
ALTER TABLE `libraryusermaster`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `returnmaster`
--
ALTER TABLE `returnmaster`
  ADD PRIMARY KEY (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminmaster`
--
ALTER TABLE `adminmaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--

-- AUTO_INCREMENT for table `bookmaster`
--
ALTER TABLE `bookmaster`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--

-- AUTO_INCREMENT for table `studentmaster`
--
ALTER TABLE `studentmaster`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--

-- AUTO_INCREMENT for table `libraryusermaster`
--
--
-- AUTO_INCREMENT for table `returnmaster`
--

ALTER TABLE `returnmaster`
  MODIFY `book_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
